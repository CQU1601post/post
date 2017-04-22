package logicalConduct;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.org.apache.bcel.internal.generic.IFGE;

import sun.security.timestamp.TimestampToken;
import tool.AssistUtils;

public class VerificationCode extends HttpServlet {

    private String info = "";

    private int width = 90;// 图像高宽
    private int height = 20;
    private int codeCount = 4;// 验证码个数
    private int fontSize = 18;// 字体大小
    private int randomLine = 30;// 随机干扰线条个数
    private int fontPositonX = 15;
    private int fontPositonY = 16;
    private char[] codeSequence = { '0', '1', '2', '3', '4', '5', '6', '7',
            '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'g', 'q',
            'w', 'r', 't', 'y', 'u', 'o', 'p', 's', 'j', 'k', 'l', 'z', 'x',
            'v', 'n', 'm' };

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        info = request.getParameter("info");
        if (info.equals("getCode")) {
            this.getCode(request, response);
        }
        if (info.equals("sendEmail")) {
            this.SendEmail(request, response);
        }
    }

    public void getCode(HttpServletRequest req, HttpServletResponse resp) {
        BufferedImage bufferedImage = new BufferedImage(width, height,
                BufferedImage.TYPE_INT_RGB);
        Graphics graphics = bufferedImage.getGraphics();
        Random random = new Random();
        graphics.setColor(Color.white);// 图像填充为白色
        graphics.drawRect(0, 0, width, height);// 画一个长方形
        Font font = new Font("verificationFont", Font.BOLD, fontSize);// 设置字体
        graphics.setFont(font);

        graphics.setColor(Color.BLACK);
        graphics.drawRect(0, 0, width - 1, height - 1);

        graphics.setColor(Color.BLACK);// 画干扰线
        for (int i = 0; i < randomLine; i++) {
            int x = random.nextInt(width);
            int y = random.nextInt(height);
            ;
            int x1 = random.nextInt(12);
            int y1 = random.nextInt(12);
            graphics.drawLine(x, y, x + x1, y + y1);
            ;
        }

        StringBuffer stringBufferCode = new StringBuffer();// 报存随机码
        int xColor, yColor, zColor;
        for (int i = 0; i < codeCount; i++) {// 生成随机码
            String code = String.valueOf(codeSequence[random
                    .nextInt(codeSequence.length)]);
            xColor = random.nextInt(255);
            yColor = random.nextInt(255);
            zColor = random.nextInt(255);
            graphics.setColor(new Color(xColor, yColor, zColor));
            graphics.drawString(code, (i + 1) * fontPositonX, fontPositonY);
            stringBufferCode.append(code);

        }
        HttpSession session = req.getSession();
        session.setAttribute("stringBufferCode", stringBufferCode);
        resp.setHeader("Pragma", "no-cache");
        resp.setHeader("Cache-Control", "no-cache");
        resp.setDateHeader("Expires", 0);
        resp.setContentType("image/jpeg");

        try {
            ServletOutputStream servletOutputStream = resp.getOutputStream();
            ImageIO.write(bufferedImage, "jpeg", servletOutputStream);
            servletOutputStream.close();
        } catch (IOException e) {

            e.printStackTrace();
        }
    }

    public void SendEmail(HttpServletRequest req, HttpServletResponse resp) {
        String sendMailAddress = req.getParameter("updateEmail");
        String adminUserId = req.getParameter("updateModelID");
        AdminLogic adminLogic = new AdminLogic();
        String status = "";
        int id = Integer.parseInt(adminUserId);
        Random random = new Random();
        int rand = random.nextInt(1000) * random.nextInt(1000);
        String randVerification = Integer.toString(rand);
   
        if (adminUserId == null || sendMailAddress == null) {
            status = "1";
        } else {
         
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            if (AssistUtils.sendActivationEmailAuthCode(sendMailAddress,
                    randVerification)) {
                int emailISActive=0;
                adminLogic.updateAdminManager(sendMailAddress, randVerification,
                        timestamp,emailISActive, id);
                status = "0";
            } else {
                status = "2";
            }
   
        }
      
        try {
            resp.getWriter().print(status);
        } catch (IOException e) {

            e.printStackTrace();
        }
    }
}

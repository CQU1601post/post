package logicalConduct;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Random;
import java.util.Set;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.validator.constraints.Email;

import configurations.Constants;

import allClasses.EmailContentBean;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import tool.AssistUtils;
import tool.AuditInfoHelp;
import tool.GetCurrentTime;
import tool.judgeTime;
import jdbc.OperationData;
import jdbc.UserOperation;
import allClasses.Ad;
import allClasses.AdType;
import allClasses.Administrator;
import allClasses.BrowserControl;
import allClasses.Cost;
import allClasses.Pic;
import allClasses.Post;
import allClasses.TypeGroup;
import allClasses.Unit;
import allClasses.UnitType;
import allClasses.User;
import allClasses.VisitorLog;
import logicalConduct.TimeProcessThread;

public class AdminManagerLogical extends HttpServlet {
    private String info = "";
    AdminLogic data = null;

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        info = request.getParameter("info");
        data = new AdminLogic();
        System.out.println("执行adminManager，传入的信息为：" + info);
        if (info.equals("adminlogin")) {
            this.adminLogin(request, response);// 管理员登陆
            System.out.println("管理员登陆");
        } else if (info.equals("adminManager")) {
            this.adminManager(request, response);// 管理员管理
        } else if (info.equals("insertAdminManager")) {
            this.insertAdminManager(request, response);// 添加管理员
        } else if (info.equals("deleteAdminManager")) {
            this.deleteAdminManager(request, response);// 删除管理员
        } else if (info.equals("updateAdminManager")) {
            this.updateAdminManager(request, response);// 修改管理员
        } else if (info.equals("adminloginout")) {
            this.adminLoginOut(request, response);// 管理员退出
        }  else if (info.equals("auditInfo1")) {
            this.aduitInfo1(request, response);// 审核信息
        } else if (info.equals("getAdTypeList")) {
            this.getAdTypeList(request, response);// 动态 获取adtype
        } else if (info.equals("getAdList")) {
            this.getAdList(request, response);// 动态 获取ad
        } else if (info.equals("auditBy")) {
            this.auditBy(request, response);// 信息审核通过
        } else if (info.equals("allBy")) {
            this.allBy(request, response);// 信息审核通过
        } else if (info.equals("auditnoBy")) {
            this.auditnoBy(request, response);// 信息审核不通过
        } else if (info.equals("registerUser")) {
            this.registerUser(request, response);// 注册用户
        } else if (info.equals("showUser")) {
            this.showUser(request, response);// 展示所有用户
        } else if (info.equals("delUser")) {
            this.delUser(request, response);// 删除用户
        } else if (info.equals("delInfo")) {
            this.delInfo(request, response);// 删除信息，就是删除图片
        } else if (info.equals("pasteShow")) {
            this.pasteShow(request, response);// 展示所有张贴栏
        } else if (info.equals("updatePasteGroupId")) {
            this.updatePasteGroupId(request, response);// 展示所有张贴栏
        } else if (info.equals("insertPaste")) {
            this.insertPaste(request, response);// 添加张贴栏
        } else if (info.equals("updatePaste")) {
            this.updatePaste(request, response);// 更改张贴栏
        } else if (info.equals("delPaste")) {
            this.delPaste(request, response);// 删除张贴栏
        } else if (info.equals("unitShow")) {
            this.unitShow(request, response);// 展示单位
        } else if (info.equals("insertUnit")) {
            this.insertUnit(request, response);// 添加单位
        } else if (info.equals("updateUnit")) {
            this.updateUnit(request, response);// 更改单位
        } else if (info.equals("delUnit")) {
            this.delUnit(request, response);// 删除单位
        } else if (info.equals("typeShow")) {
            this.typeShow(request, response);
        } else if (info.equals("insertType")) {
            this.insertType(request, response);
        } else if (info.equals("updateType")) {
            this.updateType(request, response);
        } else if (info.equals("delType")) {
            this.delType(request, response);
        } else if (info.equals("typeGroupShow")) {
            this.typeGroupShow(request, response);
        } else if (info.equals("insertTypeGroup")) {
            this.insertTypeGroup(request, response);
        } else if (info.equals("updateTypeGroup")) {
            this.updateTypeGroup(request, response);
        } else if (info.equals("delTypeGroup")) {
            this.delTypeGroup(request, response);
        } else if (info.equals("pasteTypeShow")) {
            this.pasteTypeShow(request, response);
        } else if (info.equals("insertPasteType")) {
            this.insertPasteType(request, response);
        } else if (info.equals("updatePasteType")) {
            this.updatePasteType(request, response);
        } else if (info.equals("delPasteType")) {
            this.delPasteType(request, response);
        } else if (info.equals("updateUser")) {
            this.updateUser(request, response);
        } else if (info.equals("changeUser")) {
            this.changeUser(request, response);
        } else if (info.equals("delBatchUser")) {
            this.delBatchUser(request, response);
        } else if (info.equals("delBatchInfo")) {
            this.delBatchInfo(request, response);
        } else if (info.equals("batchAuditBy")) {
            this.batchAuditBy(request, response);
        } else if (info.equals(" TimingProcess")) {
            this.TimingProcess(request, response);
        } else if (info.equals("delAuditBatchInfo")) {
            this.delAuditBatchInfo(request, response);
        } else if (info.equals("AuditMarkState")) {
            this.AuditMarkState(request, response);
        } else if (info.equals("CostManager")) {
            this.CostManager(request, response);
        } else if (info.equals("addCostManager")) {// 添加支付级别
            this.addCostManager(request, response);
        } else if (info.equals("updateCostManager")) {// 修改支付级别
            this.updateCostManager(request, response);
        } else if (info.equals("deleteCostManager")) {// 删除支付级别
            this.deleteCostManager(request, response);
        } else if (info.equals("logManagerShow")) {
            this.logManagerShow(request, response);
        } else if (info.equals("deleteLogManager")) {
            this.deleteLogManager(request, response);
        } else if (info.equals("findPasswordSelectAccount")) {
            this.findPasswordSelectAccount(request, response);
        } else if (info.equals("findPassword")) {
            this.findPassword(request, response);
        } else if (info.equals("findPasswordByEmailCode")) {
            this.findPasswordByEmailCode(request, response);
        } else if (info.equals("findEmailVerificationCode")) {
            this.findEmailVerificationCode(request, response);
        }else if (info.equals("adManagerDelete")) {
            this.adManagerDelete(request, response);
        }else if (info.equals("adManagerShow")) {
            this.adManagerShow(request, response);
        }else if (info.equals("browersPicNum")) {
            this.browersPicNum(request, response);
        }else if (info.equals("updateBrowserManager")) {
            this.updateBrowserManager(request, response);
        }

    }

    // 管理员登陆

    public void adminLogin(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        String infomation = "";
        Administrator a = new Administrator();
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String code = request.getParameter("code");
        System.out.println("name=" + name);
        data = new AdminLogic();
        String url = "";
        if (name.equals("")
                || password.equals("")
                || code.equals("")
                || request.getSession().getAttribute("stringBufferCode") == null) {
            infomation = "请输入信息";
            url = "adminLogin.jsp";
        } else {
            if (data.judgeExistAdmin(name, password)
                    && request.getSession().getAttribute("stringBufferCode")
                            .toString().equals(code)) {
                a = data.getAdmin(name, password);
                request.getSession().setAttribute("adminInfo", a);
                request.setAttribute("isAuditMark", "1");
                url = "adminManager1.jsp";

            } else {
                infomation = "登录失败";
                request.setAttribute("infomation", infomation);
                url = "adminLogin.jsp";
            }
        }

        request.getRequestDispatcher(url).forward(request, response);

    }

    public void adminManager(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        data = new AdminLogic();
        Administrator administrator=(Administrator)request.getSession().getAttribute("adminInfo");
        if(administrator.getLevel()==0){
            List<Administrator> administrators = data.getAllAdmin();
            request.setAttribute("administrators", administrators);
        }else{
            List<Administrator> administrators=new ArrayList<Administrator>();
            administrators.add(administrator);
            request.setAttribute("administrators", administrators);
        }
       
        request.getRequestDispatcher("administratorAccountManager.jsp")
                .forward(request, response);
    }

    public void insertAdminManager(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        String text = request.getParameter("text");
        String insertName = request.getParameter("insertName");// 少了一步查找姓名的方法

        int insertLevel = Integer.parseInt(request.getParameter("insertLevel"));
        String insertPassword = request.getParameter("insertPassword");
        data = new AdminLogic();
        if (data.selectAdminManager(insertName)) {
            data.insertAdminManager(insertName, insertPassword, insertLevel,
                    text);
            response.getWriter().write("1");
        } else {
            response.getWriter().write("0");
        }

    }

    public void deleteAdminManager(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        int deleteModelID = Integer.parseInt(request
                .getParameter("deleteModelID"));
        if (deleteModelID == 1) {
            response.getWriter().write("0");
        } else {
            data = new AdminLogic();
            data.deleteAdminManager(deleteModelID);
            response.getWriter().write("1");
        }

    }

    public void updateAdminManager(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        data = new AdminLogic();
        int updateModelID = Integer.parseInt(request
                .getParameter("updateModelID"));
        String updateName = request.getParameter("updateName");
        String updatePassword = request.getParameter("updatePassword");
        String email = "", verification = "", text = "";
        int updateLevel = -1;
        System.out.println(updateModelID == 1);
        System.out.println(updateModelID);
        email = request.getParameter("updateEmail");
        verification = request.getParameter("updateVerification");
        if (updateModelID == 1) {

            Administrator administrator = data
                    .selectAdminManager(updateModelID);
            System.out.println(verification + " "
                    + administrator.getVerification());
            System.out.println(email + " " + administrator.getEmail());
            if (!email.equals(administrator.getEmail())) {
                response.getWriter().write("5");
            } else {
                System.out.println(data.selectAdminManager(updateModelID)
                        .getName() != null);
                System.out.println(verification.equals(administrator
                        .getVerification()));
                if (data.selectAdminManager(updateModelID).getName() != null
                        && verification.equals(administrator.getVerification())) {//
                    if (administrator.getVerificationDate()
                            .before(new Timestamp(
                                    System.currentTimeMillis() - 10800000))) {
                        response.getWriter().write("4");
                    } else {
                        int emailISActive = 1;
                        data.updateAdminManager(updateName, updatePassword,
                                updateModelID, emailISActive);
                        response.getWriter().write("2");
                    }
                } else {
                    response.getWriter().write("3");
                }
            }

        } else {
            text = request.getParameter("text");
            updateLevel = Integer.parseInt(request.getParameter("updateLevel"));

            if (data.selectAdminManager(updateModelID).getName() != null) {
                Administrator administrator = data
                        .selectAdminManager(updateModelID);
                if (!email.equals("")) {
                    if (verification.equals(administrator.getVerification())) {
                        int emailISActive = 1;
                        data.updateAdminManager(updateName, updatePassword,
                                updateLevel, text, updateModelID, emailISActive);
                    } else {
                        response.getWriter().write("3");
                    }
                } else {
                    data.updateAdminManager(updateName, updatePassword,
                            updateLevel, text, updateModelID);
                    response.getWriter().write("1");
                }

            } else {
                response.getWriter().write("0");
            }
        }

    }

    public void mailboxVerificaton(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

    }

    public static boolean sendActivationEmailAuthCode(String mEmail,
            String mAuthCode) {

        EmailContentBean.Builder mEmailBuilder = new EmailContentBean.Builder();
        mEmailBuilder.setSubject("邮箱激活");
        mEmailBuilder.setText("This is actual message");
        mEmailBuilder.setContent("你的激活码</br>" + " ?authcode=" + mAuthCode);
        mEmailBuilder.setContentType("text/html;charset=utf-8");

        return sendEmail(mEmail, mEmailBuilder.build());
    }

    /**
     * 向指定的Email地址发送一封密码找回邮件
     * 
     * @param mEmail
     *            目标Email地址
     * @param mAuthCode
     *            认证码
     * @return true为发送成功，否则为发送失败
     */
    public static boolean sendRetrieverPasswordAuthCode(String mEmail,
            String mAuthCode) {

        EmailContentBean.Builder mEmailBuilder = new EmailContentBean.Builder();
        mEmailBuilder.setSubject("密码找回");
        mEmailBuilder.setText("This is actual message");
        mEmailBuilder.setContent("<h2>下面是你的验证码</h2></br>" + " ?authcode="
                + mAuthCode);
        mEmailBuilder.setContentType("text/html;charset=utf-8");

        return sendEmail(mEmail, mEmailBuilder.build());
    }

    /**
     * 向指定邮件地址发送指定邮件的静态方法
     * 
     * @param mEmail
     *            邮件目的地址
     * @param mEmailContentBean
     *            邮件内容数据bean
     * @return true为发送成功，否则为发送失败
     */
    private static boolean sendEmail(String mEmail,
            EmailContentBean mEmailContentBean) {
        // 获得系统属性
        Properties properties = System.getProperties();
        // 设置邮件主机
        properties.setProperty("mail.smtp.host", Constants.EMAIL_SMTP_SERVER);
        properties.setProperty("mail.smtp.auth", "true");
        // 设置我方网站地址，用户在点击后，返回本站
        Session session = Session.getDefaultInstance(properties);
        try {
            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session);
            // Set From: header field of the header.
            message.setFrom(new InternetAddress(Constants.SEND_EMAIL_ADDRESS));
            // Set To: header field of the header.
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(
                    mEmail));
            // Set Subject: header field
            message.setSubject(mEmailContentBean.getSubject());
            // Now set the actual message
            message.setText(mEmailContentBean.getText());
            message.setContent(mEmailContentBean.getContent(),
                    mEmailContentBean.getContentType());
            // Send message
            message.setSentDate(new Date());
            message.saveChanges();
            Transport transport = session.getTransport("smtp");
            transport
                    .connect(Constants.EMAIL_SMTP_SERVER,
                            Constants.SEND_EMAIL_ADDRESS,
                            Constants.SEND_EMAIL_PASSWORD);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
        } catch (MessagingException mex) {
            mex.printStackTrace();
            return false;
        }
        return true;
    }

    // 管理员退出
    public void adminLoginOut(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        System.out.println("loginout");
        if (request.getSession().getAttribute("adminInfo") != null) {
            request.getSession().invalidate();
        }
        request.getRequestDispatcher("adminLogin.jsp").forward(request,
                response);
    }

//    // 点击审核、未审核显示对应状态广告
//    public void aduitInfo(HttpServletRequest request,
//            HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        request.setCharacterEncoding("UTF-8");
//        String audit = request.getParameter("audit");
//        String adType = request.getParameter("adType");
//
//        String pasteName = request.getParameter("pasteType");
//        String adTime = request.getParameter("adTime");
//
//        pasteName = new String(pasteName.getBytes("iso-8859-1"), "UTF-8");
//        adTime = new String(adTime.getBytes("iso-8859-1"), "UTF-8");
//        // pasteName=URLDecoder.decode(pasteName, "utf-8");
//        // adTime=URLDecoder.decode(adTime, "utf-8");
//        System.out.println("pasteName----->" + pasteName);
//        System.out.println("adTime----->" + adTime);
//        data = new AdminLogic();
//        List<Pic> noauditlist = new ArrayList(), auditlist = new ArrayList();
//        List<Pic> noauditlistOriginal = null;
//        List<Pic> auditlistOriginal = null;
//        int state = 0;
//        System.out.println("000000----->");
//        if (audit != null)
//            audit = new String(audit.getBytes("iso-8859-1"), "UTF-8");
//        // audit=URLDecoder.decode(audit, "utf-8");
//        System.out.println("audit----->" + audit);
//        adType = new String(adType.getBytes("iso-8859-1"), "UTF-8");
//        // adType=URLDecoder.decode(adType, "utf-8");
//        System.out.println("adType----->" + adType);
//        System.out.println("执行aduitInfo，要显示的图片状态为：" + audit);
//        OperationData od = new OperationData();
//        if (audit.equals("未审核")) {
//
//            state = 0;
//            if (data.selectAuditOrNoAuditNum(state) < 20) {// 未审核的广告数小于20
//                noauditlistOriginal = data.getAuditInfo(state);
//                if (adType.equals("所有广告")) {
//                    List adtypesList = getAdtypeBySession(request, response);
//                    for (int i = 0; i < noauditlistOriginal.size(); i++)// 按类别展示
//                    {
//                        Pic p = (Pic) noauditlistOriginal.get(i);
//                        int picId = p.getPicId();
//                        String adTypeName = od.query_adTypeBypicId(picId);
//                        System.out.println("adTypeName=" + adTypeName);
//                        for (Iterator iterator = adtypesList.iterator(); iterator
//                                .hasNext();) {
//                            AdType adType2 = (AdType) iterator.next();
//                            if (adTypeName.equals(adType2.getAdTypeName())) {
//                                noauditlist.add(p);
//                            }
//                        }
//                    }
//
//                } else {
//                    for (int i = 0; i < noauditlistOriginal.size(); i++)// 按类别展示
//                    {
//                        Pic p = (Pic) noauditlistOriginal.get(i);
//                        int picId = p.getPicId();
//                        String adTypeName = od.query_adTypeBypicId(picId);
//                        System.out.println("adTypeName=" + adTypeName);
//                        if (adTypeName.equals(adType)) {
//                            System.out.println("----------------->");
//                            noauditlist.add(p);
//                        }
//                    }
//
//                }
//                if (!pasteName.equals("所有粘贴栏")) // 按粘贴栏展示
//                {
//                    for (int i = 0; i < noauditlist.size(); i++) {
//                        String pasteStr = od.query_adPostBypicId(noauditlist
//                                .get(i).getPicId());
//                        if (!pasteName.equals(pasteStr)) {
//                            System.out.println("删除一个数据----->");
//                            noauditlist.remove(i);
//                        }
//                    }
//                }
//                // 按时间展示
//                noauditlist = new judgeTime().adjustTime(adTime, noauditlist);
//                System.out.println("size : ----->" + noauditlist.size());
//            }
//
//        } else if (audit.equals("已审核")) {
//
//            System.out.println("----------------->111");
//            state = 1;
//            auditlistOriginal = data.getAuditInfo(state);
//            System.out.println("----------------->222");
//            if (adType.equals("所有广告")) {
//                auditlist = auditlistOriginal;
//                System.out.println("----------------->333");
//            } else {
//                for (int i = 0; i < auditlistOriginal.size(); i++) {
//                    Pic p = (Pic) auditlistOriginal.get(i);
//                    int picId = p.getPicId();
//                    String adTypeName = od.query_adTypeBypicId(picId);
//                    System.out.println("adTypeName--------------->"
//                            + adTypeName);
//                    if (adTypeName != null && adTypeName.equals(adType)) {
//                        auditlist.add(p);
//                    }
//
//                }
//            }
//
//            if (!pasteName.equals("所有粘贴栏")) // 按粘贴栏展示
//            {
//                for (int i = 0; i < auditlist.size(); i++) {
//                    String pasteStr = od.query_adPostBypicId(auditlist.get(i)
//                            .getPicId());
//                    if (!pasteName.equals(pasteStr)) {
//                        System.out.println("删除一个数据----->");
//                        auditlist.remove(i);
//                    }
//                }
//            }
//            // 按时间展示
//            auditlist = new judgeTime().adjustTime(adTime, auditlist);
//
//        }
//        request.setAttribute("audit", audit);
//        request.setAttribute("noauditlist", noauditlist);
//        request.setAttribute("auditlist", auditlist);
//        request.getRequestDispatcher("adminManager.jsp").forward(request,
//                response);
//
//    }

    // 点击审核、未审核显示对应状态广告
    public void aduitInfo1(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
     
        String audit = request.getParameter("audit");
        String adType = request.getParameter("adType");

        String pasteName = request.getParameter("pasteType");
        String adTime = request.getParameter("adTime");
        System.out.println("pasteName----->" + pasteName);
        System.out.println("adTime----->" + adTime);
   //     pasteName = new String(pasteName.getBytes("iso-8859-1"), "UTF-8");
     //  adTime = new String(adTime.getBytes("iso-8859-1"), "UTF-8");
        // pasteName=URLDecoder.decode(pasteName, "utf-8");
        // adTime=URLDecoder.decode(adTime, "utf-8");
        System.out.println("pasteName----->" + pasteName);
        System.out.println("adTime----->" + adTime);

        List<Pic> noauditlist = new ArrayList(), auditlist = new ArrayList();

        List<Pic> noauditlistOriginal = null;
        List<Pic> auditlistOriginal = null;
        int state = 0;
        int auditMark = 0;
        int nextPage = 0;
        System.out.println("000000----->");
        if (audit != null)
        //    audit = new String(audit.getBytes("iso-8859-1"), "UTF-8");
        // audit=URLDecoder.decode(audit, "utf-8");
        System.out.println("audit----->" + audit);
       // adType = new String(adType.getBytes("iso-8859-1"), "UTF-8");
        // adType=URLDecoder.decode(adType, "utf-8");
        System.out.println("adType----->" + adType);
        System.out.println("执行aduitInfo1，要显示的图片状态为：" + audit);
        OperationData od = new OperationData();
        Administrator administrator = (Administrator) request.getSession()
                .getAttribute("adminInfo");
        AuditInfoHelp auditInfoHelp = new AuditInfoHelp(audit, adType,
                pasteName, adTime);
        List<String> scopeList = new ArrayList<String>();
        List<Post> postList = new ArrayList<Post>();
        Set<Integer> adIdSet = new HashSet<Integer>();
        int num = 0;
        AdminLogic adminLogic = new AdminLogic();
        if (audit.equals("未审核")) {
            state = 0;
            try {
                if (administrator.getLevel() == 1) {
                    String[] scopes = administrator.getScope().split("\\|");
                    for (int i = 0; i < scopes.length; i++) {
                        scopeList.add(scopes[i]);
                    }
                    postList = new OperationData().getPosts(scopeList);
                    // for (Iterator iterator = postList.iterator(); iterator
                    // .hasNext();) {
                    // Post post = (Post) iterator.next();
                    // num+= data.selectAuditOrNoAuditNum(state,
                    // post.getPostId());
                    // }
                }

                if (administrator.getLevel() == 0) {
                    postList = new OperationData().getPosts();
                    // num = data.selectAuditOrNoAuditNum(state);
                }
            } catch (Exception e) {

            }
            // if(data.selectAuditOrNoAuditNum(state)<20){//未审核的广告数小于20
            noauditlistOriginal = adminLogic.getAuditInfo(state, auditMark);
            if (pasteName.equals("所有类别")) {
                for (int i = 0; i < noauditlistOriginal.size(); i++)// 按类别展示
                {
                    Pic p = (Pic) noauditlistOriginal.get(i);
                    int adId = p.getAdId();
                    int postId = od.query_adPostByadId(adId);
                    for (Iterator iterator = postList.iterator(); iterator
                            .hasNext();) {
                        Post post2 = (Post) iterator.next();
                        if (postId == post2.getPostId()) {
                            noauditlist.add(p);
                        }
                    }
                }
            } else {
                for (int i = 0; i < noauditlistOriginal.size(); i++)// 按类别展示
                {
                    Pic p = (Pic) noauditlistOriginal.get(i);
                    int adId = p.getAdId();
                    int postId = od.query_adPostByadId(adId);
                    List<String> unitTypeListTemp = new ArrayList<String>();
                    unitTypeListTemp.add(pasteName);
                    List<Post> postList2 = new ArrayList<Post>();
                    try {
                        postList2 = new OperationData()
                                .getPosts(unitTypeListTemp);
                    } catch (SQLException e) {

                        e.printStackTrace();
                    }
                    for (Iterator iterator = postList2.iterator(); iterator
                            .hasNext();) {
                        Post post2 = (Post) iterator.next();
                        if (postId == post2.getPostId()) {
                            noauditlist.add(p);
                        }
                    }
                }

            }
            if (!adType.equals("所有粘贴栏")) // 按粘贴栏展示
            {
                for (int i = 0; i < noauditlist.size(); i++) {
                    int postId = od.query_adPostByadId(noauditlist.get(i)
                            .getAdId());
                    int postId2 = Integer.parseInt(adType);
                    if (postId != postId2) {
                        System.out.println("删除一个数据----->");
                        noauditlist.remove(i);
                    }
                }
            }
            // 按时间展示
            noauditlist = new judgeTime().adjustTime(adTime, noauditlist);
            for (Iterator iterator = noauditlist.iterator(); iterator// 设置为当前管理员审核
                    .hasNext();) {
                Pic pic = (Pic) iterator.next();
                adIdSet.add(pic.getAdId());
                // AdminLogic adminLogic=new AdminLogic();
                // adminLogic.setAdAuditMark( pic.getAdId());
            }
            if (adIdSet.size() > 5) {
                System.out.println("大小" + adIdSet.size());
                nextPage = 1;
                noauditlist.removeAll(noauditlist);

                List<Integer> adIdList = new ArrayList<Integer>();
                List<Integer> adIdList2 = new ArrayList<Integer>();
                adIdList2.removeAll(adIdList2);
                for (Iterator iterator = adIdSet.iterator(); iterator.hasNext();) {
                    Integer integer = (Integer) iterator.next();
                    adIdList.add(integer);
                }
                Collections.shuffle(adIdList);
                List<Integer> temp = new ArrayList<Integer>();
                for (int i = 0; i < 5; i++) {
                    noauditlist
                            .addAll(adminLogic.getPicByAdId(adIdList.get(i)));
                    adIdSet.remove(adIdList.get(i));
                    System.out.println("adidlist=" + adIdList.get(i));
                    temp.add(adIdList.get(i));

                }
                adminLogic.setAdAuditMark1(temp);
            } else {
                List<Integer> temp = new ArrayList<Integer>();
                for (Iterator iterator = noauditlist.iterator(); iterator// 设置为当前管理员审核
                        .hasNext();) {
                    Pic pic = (Pic) iterator.next();
                    temp.add(pic.getAdId());

                }

                adminLogic.setAdAuditMark1(temp);
            }

        } else if (audit.equals("已审核")) {

            state = 1;
            try {
                if (administrator.getLevel() == 1) {
                    String[] scopes = administrator.getScope().split("\\|");
                    for (int i = 0; i < scopes.length; i++) {
                        scopeList.add(scopes[i]);
                    }
                    postList = new OperationData().getPosts(scopeList);
                    for (Iterator iterator = postList.iterator(); iterator
                            .hasNext();) {
                        Post post = (Post) iterator.next();
                        // num+= data.selectAuditOrNoAuditNum(state,
                        // post.getPostId());
                    }
                }

                if (administrator.getLevel() == 0) {
                    postList = new OperationData().getPosts();
                    // num = data.selectAuditOrNoAuditNum(state);
                }
            } catch (Exception e) {

            }

            // if(data.selectAuditOrNoAuditNum(state)<20){//审核的广告数小于20
            auditlistOriginal = adminLogic.getAuditInfo(state, auditMark);
            if (pasteName.equals("所有类别")) {
                for (int i = 0; i < auditlistOriginal.size(); i++)// 按类别展示
                {
                    Pic p = (Pic) auditlistOriginal.get(i);
                    int adId = p.getAdId();
                    int postId = od.query_adPostByadId(adId);
                    for (Iterator iterator = postList.iterator(); iterator
                            .hasNext();) {
                        Post post2 = (Post) iterator.next();
                        if (postId == post2.getPostId()) {
                            auditlist.add(p);
                        }
                    }
                }
            } else {
                for (int i = 0; i < auditlistOriginal.size(); i++)// 按类别展示
                {
                    Pic p = (Pic) auditlistOriginal.get(i);
                    int adId = p.getAdId();
                    int postId = od.query_adPostByadId(adId);
                    List<String> unitTypeListTemp = new ArrayList<String>();
                    unitTypeListTemp.add(pasteName);
                    List<Post> postList2 = new ArrayList<Post>();
                    try {
                        postList2 = new OperationData()
                                .getPosts(unitTypeListTemp);
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    for (Iterator iterator = postList2.iterator(); iterator
                            .hasNext();) {
                        Post post2 = (Post) iterator.next();
                        if (postId == post2.getPostId()) {
                            auditlist.add(p);
                        }
                    }
                }
            }

            if (!adType.equals("所有粘贴栏")) // 按粘贴栏展示
            {
                for (int i = 0; i < auditlist.size(); i++) {
                    int postId = od.query_adPostByadId(auditlist.get(i)
                            .getAdId());
                    int postId2 = Integer.parseInt(adType);
                    if (postId != postId2) {
                        System.out.println("删除一个数据----->");
                        auditlist.remove(i);
                    }
                }
            }
            // 按时间展示
            auditlist = new judgeTime().adjustTime(adTime, auditlist);
            for (Iterator iterator = auditlist.iterator(); iterator.hasNext();) {
                Pic pic = (Pic) iterator.next();
                adIdSet.add(pic.getAdId());
                // AdminLogic adminLogic=new AdminLogic();
                // adminLogic.setAdAuditMark( pic.getAdId());
            }
            // }
            if (adIdSet.size() > 5) {
                System.out.println("大小" + adIdSet.size());
                nextPage = 1;
                auditlist.removeAll(auditlist);

                List<Integer> adIdList = new ArrayList<Integer>();
                List<Integer> adIdList2 = new ArrayList<Integer>();
                adIdList2.removeAll(adIdList2);
                for (Iterator iterator = adIdSet.iterator(); iterator.hasNext();) {
                    Integer integer = (Integer) iterator.next();
                    adIdList.add(integer);
                }
                Collections.shuffle(adIdList);
                for (int i = 0; i < 5; i++) {
                    auditlist.addAll(adminLogic.getPicByAdId(adIdList.get(i)));
                    adIdSet.remove(adIdList.get(i));
                    adminLogic.setAdAuditMark(adIdList.get(i));
                }
            } else {
                List<Integer> temp = new ArrayList<Integer>();
                for (Iterator iterator = auditlist.iterator(); iterator// 设置为当前管理员审核
                        .hasNext();) {
                    Pic pic = (Pic) iterator.next();
                    temp.add(pic.getAdId());

                }

                adminLogic.setAdAuditMark1(temp);
            }

        }
        for (Iterator iterator = adminLogic.getAuditInfo(state, auditMark)
                .iterator(); iterator.hasNext();) {
            Pic integer = (Pic) iterator.next();
            System.out.println(integer.getAdId());
        }
        request.setAttribute("isAuditMark", "0");
        request.setAttribute("auditInfoHelp", auditInfoHelp);
        request.setAttribute("nextPage", nextPage);
        request.setAttribute("audit", audit);
        request.setAttribute("noauditlist", noauditlist);
        request.setAttribute("auditlist", auditlist);
        request.getRequestDispatcher("adminManager1.jsp").forward(request,
                response);

    }

    public void getAdTypeList(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String selectedValue = request.getParameter("selectedValue");
        Administrator administrator = (Administrator) request.getSession()
                .getAttribute("adminInfo");

        List<String> scopeList = new ArrayList<String>();
        List<Post> postList = new ArrayList<Post>();
//        if (selectedValue != null) {
//            selectedValue = new String(selectedValue.getBytes("iso-8859-1"),
//                    "UTF-8");
//        }

        if (selectedValue.equals("所有类别")) {
            try {
                if (administrator.getLevel() == 1) {
                    String[] scopes = administrator.getScope().split("\\|");
                    for (int i = 0; i < scopes.length; i++) {
                        scopeList.add(scopes[i]);
                    }
                    postList = new OperationData().getPosts(scopeList);

                }
                if (administrator.getLevel() == 0) {
                    postList = new OperationData().getPosts();
                }
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        } else {
            try {
                scopeList.add(selectedValue);
                postList = new OperationData().getPosts(scopeList);
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        for (Iterator iterator = postList.iterator(); iterator.hasNext();) {
            Post post = (Post) iterator.next();
            System.out.println(post.getPostId());
            System.out.println(post.getPostName());
            System.out.println(post.getAllVisitors());
        }
        JSONArray jsonArray = JSONArray.fromObject(postList);
        response.getWriter().print(jsonArray);
    }

    public void getAdList(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String selectedPasteTypeValue = request
                .getParameter("selectedPasteTypeValue");
        String selectedAdTypeValue = request
                .getParameter("selectedAdTypeValue");

        List<Ad> adList = new ArrayList<Ad>();
//        selectedPasteTypeValue = new String(
//                selectedPasteTypeValue.getBytes("iso-8859-1"), "UTF-8");
//        selectedAdTypeValue = new String(
//                selectedAdTypeValue.getBytes("iso-8859-1"), "UTF-8");
        if (!selectedAdTypeValue.equals("所有粘贴栏")) {
            try {
                adList = new OperationData().getAds(selectedAdTypeValue);
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        for (Iterator iterator = adList.iterator(); iterator.hasNext();) {
            Ad ad = (Ad) iterator.next();
            System.out.println(ad.getAdId());

        }
        JSONArray jsonArray = JSONArray.fromObject(adList);
        response.getWriter().print(jsonArray);
    }

    public List getPostListBySession(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        Administrator administrator = (Administrator) request.getSession()
                .getAttribute("adminInfo");
        List<String> scopeList = new ArrayList<String>();
        List<Post> postList = new ArrayList<Post>();
        try {

            String[] scopes = administrator.getScope().split("\\|");
            for (int i = 0; i < scopes.length; i++) {
                scopeList.add(scopes[i]);
            }
            postList = new OperationData().getPosts(scopeList);

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return postList;
    }

    public List getAdtypeBySession(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        Administrator administrator = (Administrator) request.getSession()
                .getAttribute("adminInfo");
        List<String> scopeList = new ArrayList<String>();
        List<AdType> adList = new ArrayList<AdType>();
        try {
            if (administrator.getLevel() == 1) {
                String[] scopes = administrator.getScope().split("\\|");
                for (int i = 0; i < scopes.length; i++) {
                    scopeList.add(scopes[i]);
                }
                adList = new OperationData().query_adType(scopeList);

            }
            if (administrator.getLevel() == 0) {
                adList = new OperationData().query_adType();
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return adList;
    }

    // 通过审核的图片
    public void auditBy(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int adId = Integer.parseInt(request.getParameter("adId"));
        data = new AdminLogic();
        System.out.println("通过审核的广告id为：" + adId);
        boolean flag1 = data.changeState_pic(adId);
        data.recoveryAdAuditMark(adId);
        boolean flag2 = data.changeState_ad(adId);
        int state = 0;
        List noauditlist = data.getAuditInfo(state);
        request.setAttribute("noauditlist", noauditlist);
        if (flag1 && flag2) {
            response.getWriter().write("1");
        } else {
            response.getWriter().write("0");
        }
        // request.getRequestDispatcher("adminManager.jsp").forward(request,
        // response);
    }

    // 批量审查
    public void batchAuditBy(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        boolean flag1 = data.BatchchangeState_pic(getIDJsonArray(request,
                response));
        boolean flag2 = data.BatchchangeState_ad(getIDJsonArray(request,
                response));
        int state = 0;
        List noauditlist = data.getAuditInfo(state);
        request.setAttribute("noauditlist", noauditlist);
        request.getRequestDispatcher("adminManager.jsp").forward(request,
                response);
    }

    // 一个公共的获取Jsp页面json数组的方法
    public List<Integer> getIDJsonArray(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("appliction/json;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String jsonADCheckedID = request.getParameter("jsonADCheckedID");
        List<Integer> AdList = new ArrayList<Integer>();
        JSONArray jsonArray = JSONArray.fromObject(jsonADCheckedID);
        for (int i = 0; i < jsonArray.size(); i++) {
            AdList.add(i, Integer.parseInt((String) jsonArray.get(i)));
            System.out.println(" 广告ID" + (String) jsonArray.get(i));
        }
        return AdList;
    }

    // 将所有的待审核照片通过审核
    public void allBy(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        data = new AdminLogic();
        if (data.changeAllState_pic()) {
            System.out.println("改变所有图片状态成功");
        }
        if (data.changeAllState_ad()) {
            System.out.println("改变所有广告状态成功");
            // out.print("<script language="JavaScript"> alert('审核成功') </script>");
        }

        int state = 0;
        List noauditlist = data.getAuditInfo(state);
        request.setAttribute("noauditlist", noauditlist);
        request.getRequestDispatcher("adminManager.jsp").forward(request,
                response);
    }

    public void auditnoBy(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        int adId = Integer.parseInt(request.getParameter("adId"));
        data = new AdminLogic();
        System.out.println("adId=" + adId);
        String compressPath = request.getSession().getServletContext()
                .getRealPath("/");// 首图压缩后存放路径
        String path = request.getSession().getServletContext()
                .getRealPath("/");// 图片存储路径
        boolean flag = data.del_pic_ad(adId,path,compressPath);
        int state = 0;
        List noauditlist = data.getAuditInfo(state);
        request.setAttribute("noauditlist", noauditlist);
        if (flag) {
            response.getWriter().write("1");
        } else {
            response.getWriter().write("0");
        }

        // request.getRequestDispatcher("adminManager.jsp").forward(request,
        // response);
    }

    public void delInfo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int adId = Integer.parseInt(request.getParameter("adId"));
        data = new AdminLogic();
        System.out.println("adId=" + adId);
        data.newDel_pic_ad(adId);
        int state = 1;

        List auditlist = data.getAuditInfo(state);
        request.setAttribute("auditlist", auditlist);
        request.getRequestDispatcher("adminManager.jsp").forward(request,
                response);
    }

    public void delBatchInfo(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        response.setContentType("appliction/json;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String jsonADCheckedID = request.getParameter("jsonADCheckedID");
        List<Integer> AdList = new ArrayList<Integer>();
        JSONArray jsonArray = JSONArray.fromObject(jsonADCheckedID);
        for (int i = 0; i < jsonArray.size(); i++) {
            AdList.add(i, Integer.parseInt((String) jsonArray.get(i)));
            System.out.println(" 广告ID" + (String) jsonArray.get(i));
        }
        String compressPath = request.getSession().getServletContext()
                .getRealPath("/");// 首图压缩后存放路径
        String path = request.getSession().getServletContext()
                .getRealPath("/");// 图片存储路径
      
        data.delBatch_pic_ad(AdList,path,compressPath);
        int state = 1;

        List auditlist = data.getAuditInfo(state);
        request.setAttribute("auditlist", auditlist);
        request.getRequestDispatcher("adminManager.jsp").forward(request,
                response);
    }

    public void delAuditBatchInfo(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        response.setContentType("appliction/json;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String jsonADCheckedID = request.getParameter("jsonADCheckedID");
        List<Integer> AdList = new ArrayList<Integer>();
        JSONArray jsonArray = JSONArray.fromObject(jsonADCheckedID);
        for (int i = 0; i < jsonArray.size(); i++) {
            AdList.add(i, Integer.parseInt((String) jsonArray.get(i)));
            // System.out.println(" 广告ID" + (String) jsonArray.get(i));
        }
        String compressPath = request.getSession().getServletContext()
                .getRealPath("/");// 首图压缩后存放路径
        String path = request.getSession().getServletContext()
                .getRealPath("/");// 图片存储路径
      
        data.delBatch_pic_ad(AdList,path,compressPath);
      //  data.newDelBatch_pic_ad(AdList);
        int state = 1;

        List auditlist = data.getAuditInfo(state);
        request.setAttribute("auditlist", auditlist);
        request.getRequestDispatcher("adminManager.jsp").forward(request,
                response);
    }

    // 注册新用户

    public void registerUser(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        data = new AdminLogic();
        String information = "注册失败";
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String userName = request.getParameter("name");
        userName = new String(userName.getBytes("iso-8859-1"), "UTF-8");

        System.out.println("username=" + userName);
        String userPasswd = request.getParameter("password");
        String passwordConfirm = request.getParameter("passwordConfirm");
        String money = request.getParameter("money");
        money = new String(money.getBytes("iso-8859-1"), "UTF-8");// 获取交付的金额
        int m = 0;
        if (!money.equals(""))
            m = Integer.parseInt(money);
        int userType = new OperationData().userType(m);

        int userId = data.maxUserId() + 1;

        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        User user = new User();
        user.setUserId(userId);
        user.setUserName(userName);
        // user.setPassword(password)
        user.setPassword(userPasswd);
        user.setUserType(userType);
        user.setEmail(email);
        user.setPhone(phone);
        boolean f = false;
        if (userName.equals("") || userPasswd.equals("")) {
            information = "注册失败，有选项未填";

        } else {
            if (userPasswd.equals(passwordConfirm)) {// 判断两次输入的密码是否相同
                f = data.isRepeat(userName);// 判断是否已存在此用户名
                if (f == true) {
                    boolean flag = data.register_user(user);
                    if (flag == true) {
                        information = "注册成功,专栏申请成功";
                    }

                } else {
                    information = "已存在此用户名";
                }

            } else {
                information = "两次输入的密码不同";
            }

        }

        String paste_name = request.getParameter("pasteName");
        paste_name = new String(paste_name.getBytes("iso-8859-1"), "UTF-8");
        String unitName = request.getParameter("unitName");
        unitName = new String(unitName.getBytes("iso-8859-1"), "UTF-8");
        int unitId = new OperationData().unitId(unitName);
        if (paste_name.equals(null) || paste_name.equals("")) {// 如果没填粘贴栏名
            information = "用户已经注册成功，未申请专栏";
        } else {// 粘贴栏名不为空
            int paste_Id = new OperationData().query_pasteId(paste_name);// 根据给定的粘贴栏名查看其Id，如果ID>0，表示该粘贴栏已经存在
            if (paste_Id > 0) {
                information = "用户已经注册成功，专栏申请中专栏名已存在";
            } else {// 粘贴栏名不存在

                if (unitId != 0 && userId != 0) {// 单位名和用户名都存在时才记录
                    int pasteId = data.maxPasteId() + 1;// 生成的新粘贴栏id为当前最大的粘贴栏Id基础上加1
                    String time = new GetCurrentTime().currentTime();// 粘贴栏开设时间为插入的时间
                    System.out.println("time:" + time);

                    Post p = new Post();
                    p.setPostId(pasteId);
                    p.setPostName(paste_name);
                    p.setUnitId(unitId);
                    p.setUserId(userId);
                    p.setCreateTime(time);
                    data.savePaste(p);

                } else {
                    information = "用户注册成功，专栏申请中请保证专栏单位名存在";
                }
            }
        }

        request.setAttribute("information", information);
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    // 显示用户信息
    public void showUser(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        data = new AdminLogic();
        List list = data.getUser();
        System.out.println("执行showUser，len:" + list.size());
        request.setAttribute("list", list);
        request.getRequestDispatcher("registerManager.jsp").forward(request,
                response);

    }

    // 删除用户
    public void delUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        data = new AdminLogic();
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("userId");
        int userId = Integer.parseInt(id);
        boolean f = data.del_user(userId);
        showUser(request, response);
    }

    // 批量删除用户
    public void delBatchUser(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        response.setContentType("appliction/json;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String userCheckedID = request.getParameter("jsonCheckedID");
        List<Integer> userList = new ArrayList<Integer>();
        JSONArray jsonArray = JSONArray.fromObject(userCheckedID);
        for (int i = 0; i < jsonArray.size(); i++) {
            userList.add(i, Integer.parseInt((String) jsonArray.get(i)));
        }
        // System.out.println(userCheckedID);
        // userCheckedID.split(",");
        // for(int i=0;i<userCheckedID.length;i++){
        // System.out.println(userCheckedID[i]+"||");
        // }
        boolean flag = data.delBatch_user(userList);
        showUser(request, response);
    }

    // 修改用户等级
    public void changeUser(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
       
        String user = request.getParameter("userId");
        int userId = Integer.parseInt(user);
        String password = request.getParameter("password");
        String email=request.getParameter("email");
        String level=request.getParameter("level");
       boolean flag=  data.changeUser(userId, password,email,level);
       if(flag){
           response.getWriter().print("成功");
       }else{
           response.getWriter().print("失败");
       }
    }

    // 修改用户信息
    public void updateUser(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        String information = "";
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        User user = new User();
        user = (User) request.getSession().getAttribute("User");
        int userId = user.getUserId();// 获取用户id
        String oldname = user.getUserName();// 获取原来的用户名
        String userName = request.getParameter("name");
        userName = URLDecoder.decode(userName, "utf-8");
        // userName=new String(userName.getBytes("iso-8859-1"),"UTF-8");
        System.out.println("username=" + userName);
        String userPasswd = request.getParameter("password");
        String passwordConfirm = request.getParameter("passwordConfirm");

        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        boolean f = false;
        if (userName.equals("") || userPasswd.equals("")) {
            information = "更新失败，有选项未填";

        } else {
            if (userPasswd.equals(passwordConfirm)) {
                if (!userName.equals(oldname)) {// 如果更改了用户名
                    System.out.println("更改了用户名");
                    f = data.isRepeat(userName);
                    if (f == true) {
                        boolean flag = data.updateUser(userId, userName,
                                userPasswd, email, phone);
                        if (flag == true) {
                            user.setUserName(userName);
                            user.setPassword(userPasswd);
                            user.setEmail(email);
                            user.setPhone(phone);
                            information = "更新成功";
                        }
                    } else {
                        information = "更新失败,用户名已存在";
                    }
                } else {// 用户名没有更改
                    System.out.println("没有更改用户名");
                    boolean flag = data.updateUser(userId, userName,
                            userPasswd, email, phone);
                    if (flag == true) {
                        user.setUserName(userName);
                        user.setPassword(userPasswd);
                        user.setEmail(email);
                        user.setPhone(phone);
                        information = "更新成功";
                    }
                }

            } else {
                information = "更新失败，两次输入的密码不同";
            }

        }

        request.setAttribute("information", information);
        request.getRequestDispatcher("updateUser.jsp").forward(request,
                response);
    }

    // 显示粘贴栏信息
    public void pasteShow(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        List postList = new ArrayList();
        List<UnitType> list = new ArrayList<UnitType>();
        List units = new ArrayList();
        Administrator administrator = (Administrator) request.getSession()
                .getAttribute("adminInfo");
        if (administrator.getLevel() == 0) {// 可以写成一个方法，但是为了结合以前的程序，没写
            postList = data.get_paste();
        } else {
            List<String> scopeList = new ArrayList<String>();
            String[] scopes = administrator.getScope().split("\\|");
            for (int i = 0; i < scopes.length; i++) {
                scopeList.add(scopes[i]);
            }
            list = data.get_pasteType(scopeList);
            units = data.get_unit(list);
            postList = data.get_paste(units);
        }

        request.setAttribute("list", postList);
        System.out.println("t4");
        request.getRequestDispatcher("pasteManage1.jsp").forward(request,
                response);
    }

    // 插入一个粘贴栏
    public void insertPaste(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String paste_name = request.getParameter("paste_name");
        // paste_name=new String(paste_name.getBytes("iso-8859-1"),"UTF-8");
        paste_name = URLDecoder.decode(paste_name, "utf-8");
        if (paste_name.equals(null) || paste_name.equals("")) {// 如果没填粘贴栏名
            out.print("<script language=javascript>alert('粘贴栏名不能为空')</script>");
            out.print("<script language=javascript>history.go(-1);</script>");
        } else {// 粘贴栏名不为空
            int paste_Id = new OperationData().query_pasteId(paste_name);// 根据给定的粘贴栏名查看其Id，如果ID>0，表示该粘贴栏已经存在
            if (paste_Id > 0) {
                out.print("<script language=javascript>alert('该粘贴栏名已存在，请重新取名')</script>");
                out.print("<script language=javascript>history.go(-1);</script>");

            } else {// 粘贴栏名不存在
                String userName = request.getParameter("userName");
                // userName=new String(userName.getBytes("iso-8859-1"),"UTF-8");
                userName = URLDecoder.decode(userName, "utf-8");
                if (userName == null) {
                    userName = "xjp";
                }

                userName = URLDecoder.decode(userName, "utf-8");
                int userId = new OperationData().userId(userName);// 由用户名获取用户ID

                System.out.println("userName" + userName + "userId" + userId);
                String unitName = request.getParameter("unitName");
                // unitName=new String(unitName.getBytes("iso-8859-1"),"UTF-8");
                unitName = URLDecoder.decode(unitName, "utf-8");
                int unitId = new OperationData().unitId(unitName);
                System.out.println("unitName:" + unitName + "unitId:" + unitId);
                if (unitId != 0) {// 单位名和用户名都存在时才记录&& userId!=0
                    int pasteId = data.maxPasteId() + 1;// 生成的新粘贴栏id为当前最大的粘贴栏Id基础上加1
                    String time = new GetCurrentTime().currentTime();// 粘贴栏开设时间为插入的时间
                    System.out.println("time:" + time);

                    Post p = new Post();
                    p.setPostId(pasteId);
                    p.setPostName(paste_name);
                    p.setUnitId(unitId);
                    p.setUserId(userId);
                    p.setCreateTime(time);
                    boolean f = data.savePaste(p);
                    pasteShow(request, response);
                } else {
                    out.print("<script language=javascript>alert('请核对填写的信息，保证用户名和单位名存在')</script>");
                    out.print("<script language=javascript>history.go(-1);</script>");
                }
            }
        }
    }

    // 修改粘贴栏信息
    public void updatePaste(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        data = new AdminLogic();
        String Id = request.getParameter("id");
        int id = Integer.parseInt(Id);// 获取传入粘贴栏id
        String paste_name = request.getParameter("newName");// 获取传入的粘贴栏名
        paste_name = new String(paste_name.getBytes("iso-8859-1"), "UTF-8");
        System.out.println("paste_name1=" + paste_name);
        paste_name = URLDecoder.decode(paste_name, "utf-8");
        System.out.println("paste_name=" + paste_name);
        data.updatePaste(id, paste_name);
        pasteShow(request, response);
    }

    public void updatePasteGroupId(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        int groupId = Integer.parseInt(request.getParameter("newgroupid"));
        int oldgroupId = Integer.parseInt(request.getParameter("oldGroupId"));
        int id = Integer.parseInt(request.getParameter("id"));
        if (groupId != oldgroupId) {
            data = new AdminLogic();
            List list = data.getAdtypeById(oldgroupId);
            if (!list.isEmpty()) {
                String sql = "select * from ad where adTypeId=? and postId='"
                        + id + "'";
                List list2 = data.selectAdID(sql, list);
                data.delBatch_pic_ad(list2);// 删除类别下面的所有广告
                System.out.println("执行了" + id);
            }
            data.updatePasteGroupId(id, groupId);
        }
        pasteShow(request, response);

    }

    // 删除粘贴栏
    public void delPaste(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        String pasteId = request.getParameter("pasteId");
        System.out.println("pasteId=" + pasteId);
        int id = Integer.parseInt(pasteId);
        String compressPath = request.getSession().getServletContext()
                .getRealPath("/");// 首图压缩后存放路径
        String path = request.getSession().getServletContext()
                .getRealPath("/");// 图片存储路径
        boolean f = data.delPaste(id,path,compressPath);
        pasteShow(request, response);

    }

    // 后台显示单位
    public void unitShow(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        List<UnitType> list = new ArrayList<UnitType>();
        List units = new ArrayList();
        Administrator administrator = (Administrator) request.getSession()
                .getAttribute("adminInfo");
        if (administrator.getLevel() == 0) {// 可以写成一个方法，但是为了结合以前的程序，没写
            units = data.get_unit();
        } else {
            List<String> scopeList = new ArrayList<String>();
            String[] scopes = administrator.getScope().split("\\|");
            for (int i = 0; i < scopes.length; i++) {
                scopeList.add(scopes[i]);
            }
            list = data.get_pasteType(scopeList);
            units = data.get_unit(list);
        }

        List type = data.get_type();// 返回所有的粘贴栏类别信息
        request.setAttribute("list", units);
        request.setAttribute("type", type);// 似乎没用
        request.getRequestDispatcher("unitManager.jsp").forward(request,
                response);
    }

    // 插入一个单位
    public void insertUnit(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String unit_name = request.getParameter("unit_name");
        // unit_name=new String(unit_name.getBytes("iso-8859-1"),"UTF-8");
        // unit_name = URLDecoder.decode(unit_name, "utf-8");
        System.out.println("执行insertUnit,unit_name:" + unit_name);
        String paste_type = request.getParameter("paste_type");
        int paste_type2 = Integer.parseInt(paste_type);
        paste_type = new String(paste_type.getBytes("iso-8859-1"), "UTF-8");
        paste_type = URLDecoder.decode(paste_type, "utf-8");
        int pasteType = new OperationData().pasteType_id(paste_type);// 类别id
        if (unit_name.equals(null) || unit_name.equals("")) {// 如果没填单位名
            out.print("<script language=javascript>alert('单位名不能为空')</script>");
            out.print("<script language=javascript>history.go(-1);</script>");
        } else {
            // 如果该单位名在该类中已经存在，就不添加，显示已存在
            if (new OperationData().is_exist_unit(unit_name)) {

                out.print("<script language=javascript>alert('已存在此单位名，请重新取名!')</script>");
                out.print("<script language=javascript>history.go(-1);</script>");
            } else {
                int unitId = data.maxUnitId() + 1;
                Unit u = new Unit();
                u.setUnitId(unitId);
                u.setUnitName(unit_name);

                u.setUnitTypeId(paste_type2);
                // u.setPostType(pasteType);
                data.saveUnit(u);
                unitShow(request, response);
            }
        }
    }

    // 修改单位信息
    public void updateUnit(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String unit_name = request.getParameter("newName");
        unit_name = new String(unit_name.getBytes("iso-8859-1"), "UTF-8");
        unit_name = URLDecoder.decode(unit_name, "utf-8");
        String unit_id = request.getParameter("id");
        String newType = request.getParameter("newType");
        int unitId = Integer.parseInt(unit_id);
        int pasteType = Integer.parseInt(newType);
        Unit u = new Unit();
        u.setUnitId(unitId);
        u.setUnitName(unit_name);
        u.setUnitTypeId(pasteType);
        data.updateUnit(u);
        unitShow(request, response);
    }

    // 删除某个单位
    public void delUnit(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        data = new AdminLogic();
        String unitId = request.getParameter("unitId");
        System.out.println("unitId=" + unitId);
        int id = Integer.parseInt(unitId);
        String compressPath = request.getSession().getServletContext()
                .getRealPath("/");// 首图压缩后存放路径
        String path = request.getSession().getServletContext()
                .getRealPath("/");// 图片存储路径
        data.delUnit(id,path,compressPath);
        unitShow(request, response);

    }

    // 显示类别组信息
    public void typeGroupShow(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();

        List typeGroupList = new ArrayList();
        List<UnitType> list = new ArrayList<UnitType>();
        List units = new ArrayList();
        Administrator administrator = (Administrator) request.getSession()
                .getAttribute("adminInfo");
        if (administrator.getLevel() == 0) {// 可以写成一个方法，但是为了结合以前的程序，没写
            typeGroupList = data.getTypeGroup();
        } else {
            List<String> scopeList = new ArrayList<String>();
            String[] scopes = administrator.getScope().split("\\|");
            for (int i = 0; i < scopes.length; i++) {
                scopeList.add(scopes[i]);
            }
            list = data.get_pasteType(scopeList);
            units = data.get_unit(list);
            List posts = data.get_paste(units);
            typeGroupList = data.getTypeGroup(posts);
        }

        request.setAttribute("list", typeGroupList);
        request.getRequestDispatcher("typeGroupManager.jsp").forward(request,
                response);

    }

    // 插入一个组类别
    public void insertTypeGroup(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String paste_type = request.getParameter("typeGroupName");
        // paste_type = new String(paste_type.getBytes("iso-8859-1"), "UTF-8");
        // paste_type = URLDecoder.decode(paste_type, "utf-8");
        System.out.println("paste_type:" + paste_type);

        int typeId = data.maxTypeGroupId() + 1;
        TypeGroup t = new TypeGroup();
        t.setId(typeId);
        t.setName(paste_type);
        data.saveTypeGroup(t);
        typeGroupShow(request, response);
    }

    public void updateTypeGroup(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String typeGroupid = request.getParameter("typeGroupId");
        int typeGroupId = Integer.parseInt(typeGroupid);
        String typeGroupName = request.getParameter("typeGroupName");
        typeGroupName = new String(typeGroupName.getBytes("iso-8859-1"),
                "UTF-8");
        data.updateTypeGroup(typeGroupId, typeGroupName);
        typeGroupShow(request, response);
    }

    public void delTypeGroup(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        String typeGroupId = request.getParameter("typeGroupId");
        System.out.println("typeGroupId=" + typeGroupId);
        int id = Integer.parseInt(typeGroupId);
        List list = data.getAdtypeById(id);
        if (!list.isEmpty()) {
            String sql = "select * from ad where adTypeId=?";
            List list2 = data.selectAdID(sql, list);
            data.delBatch_pic_ad(list2);// 删除类别下面的所有广告
        }

        data.delTypeGroup(id);
        typeGroupShow(request, response);

    }

    // 显示类别信息
    public void typeShow(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        int id = -1;
        String GroupId;
        GroupId = request.getParameter("GroupId");
        if (!(GroupId == null)) {
            id = Integer.parseInt(GroupId);
        }
        if (GroupId == null) {
            GroupId = request.getSession().getAttribute("GroupId").toString();
            id = Integer.parseInt(GroupId);
        }
        if (id != -1) {
            data = new AdminLogic();
            List list = data.get_typeById(id);
            request.setAttribute("list", list);
            HttpSession session = request.getSession();
            session.setAttribute("GroupId", id);
            request.getRequestDispatcher("typeManager.jsp").forward(request,
                    response);
        }

    }

    // 插入一个广告类别
    public void insertType(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String paste_type = request.getParameter("typeName");
        // paste_type = new String(paste_type.getBytes("iso-8859-1"), "UTF-8");
        // paste_type = URLDecoder.decode(paste_type, "utf-8");
        System.out.println("paste_type:" + paste_type);
        String Groupid = request.getParameter("GroupId");
        System.out.println(Groupid);
        int GroupId = Integer.parseInt(Groupid);
        int typeId = data.maxTypeId() + 1;
        AdType t = new AdType();
        t.setAdTypeId(typeId);
        t.setAdTypeName(paste_type);
        t.setGroupId(GroupId);
        data.saveType(t);
        request.setAttribute("GroupId", GroupId);
        typeShow(request, response);
    }

    // 修改广告类别信息
    public void updateType(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String typeid = request.getParameter("typeId");
        int typeId = Integer.parseInt(typeid);
        String typeName = request.getParameter("typeName");
        // typeName = new String(typeName.getBytes("iso-8859-1"), "UTF-8");
        data.updateType(typeId, typeName);

        typeShow(request, response);
    }

    // 删除某个类别
    public void delType(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        data = new AdminLogic();
        String typeId = request.getParameter("typeId");
        System.out.println("typeId=" + typeId);
        int id = Integer.parseInt(typeId);
        List<Integer> list = data.getAdByAdTypeId(id);
        data.delBatch_pic_ad(list);// 删除类别是要删除此类别下面的广告
        data.delType(id);

        typeShow(request, response);

    }

    // 显示粘贴栏类别信息
    public void pasteTypeShow(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        List list = new ArrayList();
        Administrator administrator = (Administrator) request.getSession()
                .getAttribute("adminInfo");
        if (administrator.getLevel() == 0) {// 可以写成一个方法，但是为了结合以前的程序，没写
            list = data.get_pasteType();
        } else {
            List<String> scopeList = new ArrayList<String>();
            String[] scopes = administrator.getScope().split("\\|");
            for (int i = 0; i < scopes.length; i++) {
                scopeList.add(scopes[i]);
            }
            list = data.get_pasteType(scopeList);
        }

        request.setAttribute("list", list);
        request.getRequestDispatcher("pasteTypeManager.jsp").forward(request,
                response);
    }

    // 插入一个粘贴栏类别
    public void insertPasteType(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String paste_type = request.getParameter("typeName");
        // paste_type=new String(paste_type.getBytes("iso-8859-1"),"UTF-8");
        paste_type = URLDecoder.decode(paste_type, "utf-8");
        System.out.println("paste_type:" + paste_type);

        int typeId = data.maxPasteTypeId() + 1;
        UnitType t = new UnitType();

        t.setUnitTypeId(typeId);
        t.setUnitTypeName(paste_type);
        String sql = "select * from unittype where unitTypeName='" + paste_type
                + "'";
        if (!data.checkRepeat(sql)) {
            data.updateSuperAdministrator(typeId);
            data.savePasteType(t);
        } else {
            System.out.println("unitType名字重复");
        }

        pasteTypeShow(request, response);
    }

    // 修改粘贴栏类别
    public void updatePasteType(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String typeid = request.getParameter("typeId");
        int typeId = Integer.parseInt(typeid);
        String typeName = request.getParameter("typeName");
        typeName = new String(typeName.getBytes("iso-8859-1"), "UTF-8");
        typeName = URLDecoder.decode(typeName, "utf-8");
        data.updatePasteType(typeId, typeName);
        pasteTypeShow(request, response);
    }

    // 删除粘贴栏类别
    public void delPasteType(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data = new AdminLogic();
        String typeId = request.getParameter("typeId");
        System.out.println("typeId=" + typeId);
        int id = Integer.parseInt(typeId);
        String compressPath = request.getSession().getServletContext()
                .getRealPath("/");// 首图压缩后存放路径
        String path = request.getSession().getServletContext()
                .getRealPath("/");// 图片存储路径
        data.delPasteType(id,path,compressPath);

        List lists = data.get_pasteType();// 处理删除后超级管理员的范围
        if (lists.size() >= 0) {
            UnitType unitType = (UnitType) lists.get(0);
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(unitType.getUnitTypeId());
            if(lists.size()>=1){
                for (int i = 1; i < lists.size(); i++) {
                    unitType = (UnitType) lists.get(i);
                    stringBuilder.append("|");
                    stringBuilder.append(unitType.getUnitTypeId());
                }
            }
            
            data.updateAdminManager(stringBuilder.toString());
        }

        pasteTypeShow(request, response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);

    }

    public void TimingProcess(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        String flag = request.getParameter("flag");
        int on_off = Integer.parseInt(flag);
        TimeProcessThread thread = TimeProcessThread.getTimeProcessThread();
        if (on_off == 1) {
            thread.run();
        }
        if (on_off == 0)
            thread.interrupt();
    }

    public void AuditMarkState(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        OperationData operationData = new OperationData();
        Administrator administrator = (Administrator) request.getSession()
                .getAttribute("adminInfo");
        List<String> scopeList = new ArrayList<String>();
        List<Post> postList = new ArrayList<Post>();
        String[] scopes = administrator.getScope().split("\\|");
        for (int i = 0; i < scopes.length; i++) {
            scopeList.add(scopes[i]);
        }
        operationData.setAuditMarkState(scopeList);
        request.getRequestDispatcher("adminManager1.jsp").forward(request,
                response);
    }

    public void CostManager(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        List<Cost> costs = new OperationData().getCosts();
        request.setAttribute("costs", costs);
        request.getRequestDispatcher("costManager.jsp").forward(request,
                response);
    }

    public void addCostManager(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter outPrintWriter = response.getWriter();
        int grade = Integer.parseInt(request.getParameter("grade"));
        int money = Integer.parseInt(request.getParameter("money"));
        int time = Integer.parseInt(request.getParameter("time"));
        String sql = "select * from cost where grade='" + grade + "'";
        data = new AdminLogic();
        if (data.checkRepeat(sql)) {
            if (data.addCostManager(grade, money, time))
                outPrintWriter.write("1");
        }

    }

    public void updateCostManager(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter outPrintWriter = response.getWriter();
        int costId = Integer.parseInt(request.getParameter("costId"));
        int grade = Integer.parseInt(request.getParameter("grade"));
        int money = Integer.parseInt(request.getParameter("money"));
        int time = Integer.parseInt(request.getParameter("time"));
        data = new AdminLogic();
        String sql = "select * from cost where grade='" + grade + "'";
        if (data.checkRepeat(sql)) {
            if (data.updateCostManager(costId, grade, money, time))
                outPrintWriter.write("1");
        }

    }

    public void deleteCostManager(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        int costId = Integer.parseInt(request.getParameter("costId"));
        data = new AdminLogic();
        data.deleteCostManager(costId);
    }

    public void logManagerShow(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        String adType = request.getParameter("adType");
        String unitId = request.getParameter("pasteType");
        String advertisement = request.getParameter("advertisement");

//        if (unitId != null) {
//            unitId = new String(unitId.getBytes("iso-8859-1"), "UTF-8");
//        }
//        if (adType != null) {
//            adType = new String(adType.getBytes("iso-8859-1"), "UTF-8");
//        }
//        if (advertisement != null) {
//            advertisement = new String(advertisement.getBytes("iso-8859-1"),
//                    "UTF-8");
//        }
        System.out.println("unitId " + unitId);
        String datepicker = request.getParameter("datepicker");
        System.out.println(datepicker);
        String datepicker2 = request.getParameter("datepicker2");

        String sql = "";
        List<VisitorLog> visitorLogs = new ArrayList<VisitorLog>();
        data = new AdminLogic();
        try {
            if (advertisement.equals("所有广告")) {
                if (unitId.equals("所有类别") && adType.equals("所有粘贴栏")) {
                    if (datepicker2 == "" && datepicker != "") {
                        sql = "SELECT * FROM visitorlog WHERE time>'"
                                + datepicker + "'";
                    }
                    if (datepicker2 != "" && datepicker == "") {
                        sql = "SELECT * FROM visitorlog WHERE time<'"
                                + datepicker2 + "'";
                    }
                    if (datepicker2 == "" && datepicker == "") {
                        sql = "SELECT * FROM visitorlog ";
                    }
                    if (datepicker2 != "" && datepicker != "") {
                        sql = "SELECT * FROM visitorlog where time>'"
                                + datepicker + "'and time<'" + datepicker2
                                + "'";
                    }
                    visitorLogs = data.selectVisitorLogs(sql);
                } else {
                    if (adType.equals("所有粘贴栏")) {
                        List<String> unitList = new ArrayList<String>();
                        unitList.add(unitId);
                        List<Post> posts = new OperationData()
                                .getPosts(unitList);
                        for (Iterator iterator = posts.iterator(); iterator
                                .hasNext();) {
                            Post post = (Post) iterator.next();

                            if (datepicker2 == "" && datepicker != "") {
                                sql = "SELECT * FROM visitorlog WHERE postId='"
                                        + post.getPostId() + "'and  time>'"
                                        + datepicker + "'";
                            }
                            if (datepicker2 != "" && datepicker == "") {
                                sql = "SELECT * FROM visitorlog WHERE postId='"
                                        + post.getPostId() + "' and time<'"
                                        + datepicker2 + "'";
                            }
                            if (datepicker2 == "" && datepicker == "") {
                                sql = "SELECT * FROM visitorlog where postId='"
                                        + post.getPostId() + "'";
                            }
                            if (datepicker2 != "" && datepicker != "") {
                                sql = "SELECT * FROM visitorlog where postId='"
                                        + post.getPostId() + "'and time>'"
                                        + datepicker + "'and time<'"
                                        + datepicker2 + "'";
                            }
                            List<VisitorLog> visitorLogsTemp = data
                                    .selectVisitorLogs(sql);
                            visitorLogs.addAll(visitorLogsTemp);
                        }
                    } else {
                        if (datepicker2 == "" && datepicker != "") {
                            sql = "SELECT * FROM visitorlog WHERE postId='"
                                    + adType + "' and time>'" + datepicker
                                    + "'";
                        }
                        if (datepicker2 != "" && datepicker == "") {
                            sql = "SELECT * FROM visitorlog WHERE postId='"
                                    + adType + "'and  time<'" + datepicker2
                                    + "'";
                        }
                        if (datepicker2 == "" && datepicker == "") {
                            sql = "SELECT * FROM visitorlog where postId='"
                                    + adType + "'";
                        }
                        if (datepicker2 != "" && datepicker != "") {
                            sql = "SELECT * FROM visitorlog where postId='"
                                    + adType + "'and time>'" + datepicker
                                    + "'and time<'" + datepicker2 + "'";
                        }
                        visitorLogs = data.selectVisitorLogs(sql);
                    }
                }
            } else {
                if (datepicker2 == "" && datepicker != "") {
                    sql = "SELECT * FROM visitorlog WHERE adID='"
                            + advertisement + "' and time>'" + datepicker + "'";
                }
                if (datepicker2 != "" && datepicker == "") {
                    sql = "SELECT * FROM visitorlog WHERE  adID='"
                            + advertisement + "'and  time<'" + datepicker2
                            + "'";
                }
                if (datepicker2 == "" && datepicker == "") {
                    sql = "SELECT * FROM visitorlog where adID='"
                            + advertisement + "'";
                }
                if (datepicker2 != "" && datepicker != "") {
                    sql = "SELECT * FROM visitorlog where adID='"
                            + advertisement + "'and time>'" + datepicker
                            + "'and time<'" + datepicker2 + "'";
                }
                visitorLogs = data.selectVisitorLogs(sql);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        int logNumPaste = 0;
        for (Iterator iterator = visitorLogs.iterator(); iterator.hasNext();) {
            VisitorLog visitorLog = (VisitorLog) iterator.next();
            if (visitorLog.getAdId() == 0) {
                logNumPaste++;
            }
        }
        request.setAttribute("logNum", visitorLogs.size() - logNumPaste);
        request.setAttribute("logNumPaste", logNumPaste);
        request.setAttribute("visitorLogs", visitorLogs);
        request.getRequestDispatcher("logManager.jsp").forward(request,
                response);
    }
    
    public void adManagerShow(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("adManager.jsp").forward(request,
                response);
    }
    
    public void adManagerDelete(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        String adType = request.getParameter("adType");
        String unitId = request.getParameter("pasteType");
        String advertisement = request.getParameter("advertisement");

        
        String compressPath = request.getSession().getServletContext()
                .getRealPath("/");// 首图压缩后存放路径
        String path = request.getSession().getServletContext()
                .getRealPath("/");// 图片存储路径
      
//        if (unitId != null) {
//            unitId = new String(unitId.getBytes("iso-8859-1"), "UTF-8");
//        }
//        if (adType != null) {
//            adType = new String(adType.getBytes("iso-8859-1"), "UTF-8");
//        }
//        if (advertisement != null) {
//            advertisement = new String(advertisement.getBytes("iso-8859-1"),
//                    "UTF-8");
//        }
        System.out.println("unitId " + unitId);
        String datepicker = request.getParameter("datepicker");

        String datepicker2 = request.getParameter("datepicker2");
    //    select *FROM ad where str_to_date(upLoadTime, '%Y%m%d%H%i')>str_to_date('2017-02-22 23:40', '%Y-%m-%d %H:%i');
       //delete from ad where str_to_date(upLoadTime, '%Y%m%d%H%i')>str_to_date(datepicker, '%Y-%m-%d %H:%i');
        String sql = "";
        List<VisitorLog> visitorLogs = new ArrayList<VisitorLog>();
        data = new AdminLogic();
        boolean flag=false;
        try {
            if (advertisement.equals("所有广告")) {
                if (unitId.equals("所有类别") && adType.equals("所有粘贴栏")) {
                    if (datepicker2 == "" && datepicker != "") {
                        sql = "select * from ad where money=0 and str_to_date(upLoadTime, '%Y%m%d%H%i')>=str_to_date('"+datepicker+"', '%Y-%m-%d %H:%i')";
                    }
                    if (datepicker2 != "" && datepicker == "") {
                        sql = "select *  from ad where  money=0 and str_to_date(upLoadTime, '%Y%m%d%H%i')<=str_to_date('"+datepicker2+"', '%Y-%m-%d %H:%i')";
                    }
                    if (datepicker2 == "" && datepicker == "") {
                        sql = "select *  from ad where money=0";
                    }
                    if (datepicker2 != "" && datepicker != "") {
                        sql ="select * from ad where money=0 and str_to_date(upLoadTime, '%Y%m%d%H%i')<='"+datepicker2+"'and str_to_date(upLoadTime, '%Y%m%d%H%i')>'"+datepicker+"'";
                    }
                    System.out.println(sql);
                   data.deleteAdManager(sql,path,compressPath);
                } else {
                    if (adType.equals("所有粘贴栏")) {
                        List<String> unitList = new ArrayList<String>();
                        unitList.add(unitId);
                        List<Post> posts = new OperationData()
                                .getPosts(unitList);
                        for (Iterator iterator = posts.iterator(); iterator
                                .hasNext();) {
                            Post post = (Post) iterator.next();

                            if (datepicker2 == "" && datepicker != "") {
                                sql = "select * from ad WHERE money=0 and postId='"
                                        + post.getPostId() + "'and   str_to_date(upLoadTime, '%Y%m%d%H%i')>='"
                                        + datepicker + "'";
                            }
                            if (datepicker2 != "" && datepicker == "") {
                                sql = "select * from ad WHERE money=0 and  postId='"
                                        + post.getPostId() + "' and str_to_date(upLoadTime, '%Y%m%d%H%i')<='"
                                        + datepicker2 + "'";
                            }
                            if (datepicker2 == "" && datepicker == "") {
                                sql = "select * from ad WHERE money=0 and postId='"
                                        + post.getPostId() + "'";
                            }
                            if (datepicker2 != "" && datepicker != "") {
                                sql = "select * from ad WHERE money=0 and  postId='"
                                        + post.getPostId() + "'and str_to_date(upLoadTime, '%Y%m%d%H%i')>='"
                                        + datepicker + "'and str_to_date(upLoadTime, '%Y%m%d%H%i')<='"
                                        + datepicker2 + "'";
                            }
                            System.out.println(sql);
                            data.deleteAdManager(sql,path,compressPath);
                        }
                    } else {
                        if (datepicker2 == "" && datepicker != "") {
                            sql = "select * from ad WHERE money=0 and postId='"
                                    + adType + "' and str_to_date(upLoadTime, '%Y%m%d%H%i')>='" + datepicker
                                    + "'";
                        }
                        if (datepicker2 != "" && datepicker == "") {
                            sql = "select * from ad WHERE money=0 and postId='"
                                    + adType + "'and str_to_date(upLoadTime, '%Y%m%d%H%i')<='" + datepicker2
                                    + "'";
                        }
                        if (datepicker2 == "" && datepicker == "") {
                            sql = "select * from ad where money=0 and postId='"
                                    + adType + "'";
                        }
                        if (datepicker2 != "" && datepicker != "") {
                            sql = "select * from ad where money=0 and postId='"
                                    + adType + "'and str_to_date(upLoadTime, '%Y%m%d%H%i')>='" + datepicker
                                    + "'and str_to_date(upLoadTime, '%Y%m%d%H%i')<='" + datepicker2 + "'";
                        }
                        System.out.println(sql);
                        data.deleteAdManager(sql,path,compressPath);
                    }
                }
            } else {
                if (datepicker2 == "" && datepicker != "") {
                    sql = "select * from ad WHERE money=0 and adID='"
                            + advertisement + "' and str_to_date(upLoadTime, '%Y%m%d%H%i')>='" + datepicker + "'";
                }
                if (datepicker2 != "" && datepicker == "") {
                    sql = "select *  from ad WHERE money=0 and adID='"
                            + advertisement + "'and  str_to_date(upLoadTime, '%Y%m%d%H%i')<='" + datepicker2
                            + "'";
                }
                if (datepicker2 == "" && datepicker == "") {
                    sql = "select * from ad where  money=0 and adID='"
                            + advertisement + "'";
                }
                if (datepicker2 != "" && datepicker != "") {
                    sql = "select *  from ad where money=0 and adID='"
                            + advertisement + "'and str_to_date(upLoadTime, '%Y%m%d%H%i')>='" + datepicker
                            + "'and str_to_date(upLoadTime, '%Y%m%d%H%i')<='" + datepicker2 + "'";
                }
                System.out.println(sql);
                data.deleteAdManager(sql,path,compressPath);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
       
        request.getRequestDispatcher("adManager.jsp").forward(request,
               response);
    }

    public void deleteLogManager(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        String visistorid = request.getParameter("visitorId");
        data = new AdminLogic();
        String sql = "delete from visitorlog where visitorID='" + visistorid
                + "'";
        data.deleteLogManager(sql);
    }

    public void findPasswordSelectAccount(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        String userInformation="";
        System.out.println("REFERER"+  request.getHeader("Referer").endsWith("adminLogin.jsp"));
        System.out.println("REFERER"+  request.getHeader("Referer").endsWith("login.jsp"));
        if( request.getHeader("Referer").endsWith("login.jsp")){
            userInformation="user";
        }else if(request.getHeader("Referer").endsWith("adminLogin.jsp")){
            userInformation="administrator";
        }
        request.setAttribute("userInformation", userInformation);
        request.getRequestDispatcher("findPasswordSelectAccount.jsp").forward(
                request, response);
        // response.sendRedirect("findPasswordSelectAccount.jsp");

    }

    public void findPassword(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
      
       
       name = new String(name.getBytes("iso-8859-1"), "UTF-8");
       System.out.println(name);
        String code = request.getParameter("code");
        String userInformation=request.getParameter("userInformation");
        System.out.println(userInformation);
        System.out.println(userInformation.equals("administrator"));
        String infomation = "";
        if (name.equals("") || code.equals("")) {
            infomation = "输入为空";
            request.setAttribute("infomation", infomation);
            request.getRequestDispatcher("findPasswordSelectAccount.jsp")
                    .forward(request, response);

        } else {
            if (!code.equals(request.getSession()
                    .getAttribute("stringBufferCode").toString())) {
                infomation = "验证码错误";
                request.setAttribute("infomation", infomation);
                request.getRequestDispatcher("findPasswordSelectAccount.jsp")
                        .forward(request, response);

            } else {
                if(userInformation.equals("administrator")){
                    AdminLogic adminLogic = new AdminLogic();
                    Administrator administrator = adminLogic.getAdminByName(name);
                    if (administrator.getEmailIsActive() > 0) {
                        request.setAttribute("email", administrator.getEmail());
                        request.setAttribute("id", administrator.getId());
                        request.setAttribute("userInformation", userInformation);
                        request.getRequestDispatcher("findPassword.jsp").forward(
                                request, response);
                    } else {
                        infomation = "信息有问题";
                        request.setAttribute("infomation", infomation);
                        request.setAttribute("userInformation", userInformation);
                        request.getRequestDispatcher(
                                "findPasswordSelectAccount.jsp").forward(request,
                                response);
                    }

                }else if(userInformation.equals("user")){
                    UserOperation userOperation=new UserOperation();
                    User user=userOperation.getUserByName(name);
                    if(user!=null){
                        request.setAttribute("email", user.getEmail());
                        request.setAttribute("id", user.getUserId());
                        request.setAttribute("userInformation", userInformation);
                        request.getRequestDispatcher("findPassword.jsp").forward(
                                request, response);
                    }else{
                        infomation = "用户信息有错";
                        request.setAttribute("infomation", infomation);
                        request.setAttribute("userInformation", userInformation);
                        request.getRequestDispatcher(
                                "findPasswordSelectAccount.jsp").forward(request,
                                response);
                    }
                }
              
            }
        }

    }

    public void findEmailVerificationCode(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
      
     //   System.out.println("REFERER"+  request.getHeader("Referer").endsWith("alterUserInformation.jsp"));
        String email = request.getParameter("email").trim();
        String userInformation=request.getParameter("userInformation");
        System.out.println(userInformation);
        System.out.println(email);
        int id = Integer.parseInt(request.getParameter("hiddenId"));
        Random random = new Random();
        int rand = random.nextInt(1000) * random.nextInt(1000);
        String randVerification = Integer.toString(rand);
        int stutas = 0;
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        AdminLogic adminLogic = new AdminLogic();

        if (AssistUtils.sendRetrieverPasswordAuthCode(email, randVerification)) {
          
            if(userInformation.equals("user")){
                adminLogic.updateUser(id, email, randVerification, timestamp);
            }else if(userInformation.equals("administrator")){
                int emailISActive = 1;
                adminLogic.updateAdminManager(email, randVerification, timestamp,
                        emailISActive, id);
            }
            stutas = 1;
        }
        response.getWriter().print(stutas);
    }

    public void findPasswordByEmailCode(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("UTF-8");
        String userInformation=request.getParameter("userInformation");
        int id = Integer.parseInt(request.getParameter("hiddenId"));
        String code = request.getParameter("emailCode");

        System.out.println("id" + id);
     
        String infomation = "";
        String url = "";
        if(userInformation.equals("user")){
            User user=new UserOperation().getUserById(id);
            if(user!=null){
                if(code.equals(user.getVerificationCode())){
                    if (user.getVerificationDate().after(
                            new Timestamp(System.currentTimeMillis() - 10800000))) {
                        url = "findPasswordShow.jsp";
                        request.setAttribute("password", user.getPassword());
                    } else {
                        infomation = "验证码失效";
                        request.setAttribute("infomation", infomation);
                        url = "findPasswordSelectAccount.jsp";
                    }
                }else{
                    infomation = "验证码错误";
                    request.setAttribute("infomation", infomation);
                    url = "findPasswordSelectAccount.jsp";
                }
            }else{
                infomation = "用户有问题";
                request.setAttribute("infomation", infomation);
                url = "findPasswordSelectAccount.jsp";
            }
        }else if(userInformation.equals("administrator")){
            Administrator administrator = data.selectAdminManager(id);
            if (code.equals(administrator.getVerification())) {//
                if (administrator.getVerificationDate().after(
                        new Timestamp(System.currentTimeMillis() - 10800000))) {
                    url = "findPasswordShow.jsp";
                    request.setAttribute("password", administrator.getPassword());
                } else {
                    infomation = "验证码失效";
                    request.setAttribute("infomation", infomation);
                    url = "findPasswordSelectAccount.jsp";
                }
            } else {
                infomation = "验证码错误";
                request.setAttribute("infomation", infomation);
                url = "findPasswordSelectAccount.jsp";
            }
        }

        request.getRequestDispatcher(url).forward(request, response);
    }
    
    public void browersPicNum(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        data=new AdminLogic();
        List<BrowserControl> browserControls=data.selectBrowserControls();
        request.setAttribute("browserControls", browserControls);
        request.getRequestDispatcher("browserPicNumManager.jsp").forward(request, response);
    }
    public void updateBrowserManager(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        String updatePicNum=request.getParameter("updatePicNum");
        
        data=new AdminLogic();
        boolean flag=data.updateBrowserPicNum(id,updatePicNum);
        if(flag){
            response.getWriter().print("成功");
        }else{
            response.getWriter().print("失败");
        }
    }
     
}

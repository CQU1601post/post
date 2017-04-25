package jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import tool.ChangeResultSetToArray;
import allClasses.*;

//粘贴栏相关的查找工作，ResultSet为空不影响查找结果，但在对结果应用的地方应该判断
public class SearchAboutPost {

	private ChangeResultSetToArray changeResultSetToArray = new ChangeResultSetToArray();

	// 返回所有单位类别信息，包括类别名以及名称
	public List<UnitType> unitTypes() {
		ConnectDB connect = new ConnectDB();
		// System.out.println("执行src/jdbc/SearchFromDB/unitTypeNames()");
		String sql = "select * from unittype";
		ResultSet result = connect.executeQuery(sql);
		List<UnitType> unitTypes = changeResultSetToArray
				.unitTypeArrays(result);
		connect.close();
		return unitTypes;

	}

	// 查找传入类别下的所有单位
	public List<Unit> unitsOfType(int unitTypeId) {
		// System.out.println("执行src/jdbc/SearchFromDB/unitsOfType(),传入的unitTypeId为："+unitTypeId);
		ConnectDB connect = new ConnectDB();
		String sql = "select * from unit where unitTypeId=" + unitTypeId;
		ResultSet result = connect.executeQuery(sql);
		List<Unit> units = changeResultSetToArray.unitsArray(result);
		connect.close();
		System.out.println("unitTypeId:" + unitTypeId + " unitsOfType:"
				+ units.size());
		return units;
	}

	// 查找传入类别下的所有包含非专栏的单位
	public List<Unit> unitsWithPublicPost(int unitTypeId) {
		System.out
				.println("执行src/jdbc/SearchFromDB/unitsOfType(),传入的unitTypeId为："
						+ unitTypeId);
		ConnectDB connect = new ConnectDB();
		String sql = "select * from unit where unitTypeId=" + unitTypeId;
		ResultSet result = connect.executeQuery(sql);
		List<Unit> units = new ArrayList<Unit>();
		try {
			while (result.next()) {
				int unitId = result.getInt(1);// 获取unitId
				List<Post> publicPosts = publicPostsOfUnit(unitId);// 获取对应单位下所有非专栏
				System.out.println("unitId:" + unitId);
				if (publicPosts.size() > 0) {// 如果单位下有非专栏，则添加到列表中
					Unit unit = new Unit(result.getInt(1), result.getString(2),
							result.getInt(3));
					units.add(unit);
				}
			}
		} catch (SQLException e) {
			System.out
					.println("false in:src/jdbc/ChangeResultSetToArray/postsArray");
			System.out.println(e);
		}
		System.out.println("unitTypeId:" + unitTypeId + " unitsWithPublicPost:"
				+ units.size());
		connect.close();
		return units;
	}

	// public List<AdType > unitsWithPublicAD(int postId) {
	// ConnectDB connect = new ConnectDB();
	// String sql
	// ="select * from adType where adType.groupId in (select post.groupId from post where postId='"+postId+"')";
	// ResultSet result = connect.executeQuery(sql);
	// List<AdType> adTypes = new ArrayList<AdType>();
	// try {
	// while(result.next()){
	// int adtypeId=result.getInt(1);//获取unitId
	//
	// System.out.println("adtypeId:"+adtypeId);
	//
	// AdType adType=new
	// AdType(result.getInt(1),result.getString(2),result.getInt(3));
	// adTypes.add(adType);
	// }
	//
	// } catch (SQLException e) {
	// System.out.println("false in:src/jdbc/ChangeResultSetToArray/postsArray");
	// System.out.println(e);
	// }
	// connect.close();
	// return adTypes ;
	// }

	// 查找传入单位下所有粘贴栏
	public List<Post> postsOfUnit(int unitId) {
		// System.out.println("执行src/jdbc/SearchFromDB/postsOfUnit(),传入的unitId为："+unitId);
		ConnectDB connect = new ConnectDB();
		String sql = "select * from post where unitId=" + unitId;
		ResultSet result = connect.executeQuery(sql);
		List<Post> posts = changeResultSetToArray.postsArray(result);
		connect.close();
		// System.out.println("unitId:"+unitId+"postsOfUnit:"+posts.size());
		return posts;

	}

	public Post postOfSql(String sql) {
		ConnectDB connect = new ConnectDB();
		ResultSet result = connect.executeQuery(sql);
		Post post = new Post();
		try {
			while (result.next()) {
				post.setPostId(result.getInt(1));
				post.setPostName(result.getString(2));
				post.setUnitId(result.getInt(3));
				post.setUserId(result.getInt(4));
				post.setCreateTime(result.getString(5));
				post.setVisitorsOfToday(result.getInt(6));
				post.setAllVisitors(result.getInt(7));
				post.setGroupId(result.getInt(8));

			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		try {
			result.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		connect.close();
		return post;
	}

	public Unit unitOfSql(String sql) {
		ConnectDB connect = new ConnectDB();
		ResultSet result = connect.executeQuery(sql);
		Unit unit = new Unit();
		try {
			while (result.next()) {
				unit.setUnitId(result.getInt(1));
				unit.setUnitName(result.getString(2));
				unit.setUnitTypeId(result.getInt(3));

			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		try {
			result.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		connect.close();
		return unit;
	}

	// 查找传入单位下所有非专栏粘贴栏
	public List<Post> publicPostsOfUnit(int unitId) {
		// System.out.println("执行src/jdbc/SearchFromDB/postsOfUnit(),传入的unitId为："+unitId);
		ConnectDB connect = new ConnectDB();
		String sql = "select * from post where userId<=0 and unitId=" + unitId;
		ResultSet result = connect.executeQuery(sql);
		List<Post> posts = changeResultSetToArray.postsArray(result);
		System.out.println("unitId:" + unitId + "publicPostsOfUnit:"
				+ posts.size());
		connect.close();
		return posts;
	}

	// 返回普通粘贴栏下的所有广告类别
	public List<AdType> adTypes() {
		ConnectDB connect = new ConnectDB();
		String sql = "select * from adType";
		ResultSet result = connect.executeQuery(sql);
		List<AdType> adTypes = changeResultSetToArray.adTypesArray(result);
		connect.close();
		return adTypes;
	}

	// 返回普通粘贴栏UnitType的所有广告类别
	public List<AdType> adTypesOfPost(int postId) {
		ConnectDB connect = new ConnectDB();
		String sql = "select * from adType where adType.groupId in (select post.groupId from post where postId='"
				+ postId + "')";
		ResultSet result = connect.executeQuery(sql);
		List<AdType> adTypes = changeResultSetToArray.adTypesArray(result);
		connect.close();
		return adTypes;
	}

	// 返回某个专栏下的所有广告类别
	public List<PrivateAdType> privateAdTypes(int postId) {
		ConnectDB connect = new ConnectDB();
		String sql = "select * from privateAdType where postId='" + postId
				+ "'";
		ResultSet result = connect.executeQuery(sql);
		List<PrivateAdType> adTypes = changeResultSetToArray
				.privateAdTypesArray(result);
		connect.close();
		return adTypes;
	}

	// select * from table order by id limit m, n;
	// 该语句的意思为，查询m+n条记录，去掉前m条，返回后n条记录
	// 当m更大的时候，较为高效的方法：select * from table where id > (select id from table
	// order by id limit m, 1) limit n;
	// 查找指定非专栏粘贴栏下第m~n条广告
	public List<Ad> adsOfPost(int postId, int m, int n) {
		// System.out.println("执行src/jdbc/SearchFromDB/adsOfPost(),传入的postId为："+postId);
		ConnectDB connect = new ConnectDB();
		// 返回通过审核的广告并且按时间排序
		String sql = "select * from ad where exist=1 and postId='" + postId
				+ "' and checked=1 order by sortValue DESC limit " + m + ","
				+ n;
		ResultSet result = connect.executeQuery(sql);
		List<Ad> ads = changeResultSetToArray.adsArray(result);
		connect.close();
		System.out.println(ads.size());
		return ads;
	}

	// 查找指定非专栏粘贴栏指定类别下m~n条广告
	public List<Ad> adsOfPost(int postId, int adTypeId, int m, int n) {
		// System.out.println("执行src/jdbc/SearchFromDB/adsOfPost(),传入的postId为："+postId);
		if (adTypeId > 0) {
			ConnectDB connect = new ConnectDB();
			// 返回通过审核的广告并且按时间排序
			String sql = "select * from ad where exist=1 and postId='" + postId
					+ "' and adTypeId='" + adTypeId
					+ "'and checked=1 order by sortValue  DESC limit " + m
					+ "," + n;
			ResultSet result = connect.executeQuery(sql);
			System.out.println("result:" + result);
			List<Ad> ads = changeResultSetToArray.adsArray(result);
			connect.close();
			System.out.println(ads.size());
			return ads;
		} else {
			System.out.println("src/jdbc/SearchFromDB/adsOfPost(),传入的postId为："
					+ postId);
			return null;
		}
	}

	// 查找指定非专栏广告下所有图片
	public List<Pic> picsOfAd(int adId) {
		// System.out.println("执行src/jdbc/SearchFromDB/adsOfPost(),传入的postId为："+postId);

		ConnectDB connect = new ConnectDB();
		// 返回通过审核的广告并且按时间排序
		/*
		 * String sql =
		 * "select * from pic where  pic.adId in(select ad.adId from ad where exist=1) and pic.adId='"
		 * + adId + "'and checked=1 "
		 */;
		String sql = "select * from pic where  adId='" + adId + "'";
		ResultSet result = connect.executeQuery(sql);
		// System.out.println("result:" + result);
		List<Pic> pics = changeResultSetToArray.picsArray(result);
		connect.close();
		// System.out.println(pics.size());
		return pics;

	}

	public void updateClick(String sql) {
		ConnectDB connectDB = new ConnectDB();
		boolean flag = connectDB.executeUpdate(sql);
		connectDB.close();
	}

	// 查找指定专栏下第m~n条广告
	public List<PrivateAd> adsOfPrivatePost(int postId, int m, int n) {
		// System.out.println("执行src/jdbc/SearchFromDB/adsOfPost(),传入的postId为："+postId);
		ConnectDB connect = new ConnectDB();
		// 返回通过审核的广告并且按时间排序
		String sql = "select * from privateAd where  exist=1 and postId='"
				+ postId + "' order by sortValue DESC limit " + m + "," + n;
		ResultSet result = connect.executeQuery(sql);
		List<PrivateAd> ads = changeResultSetToArray.privateAdsArray(result);
		connect.close();
		System.out.println(ads.size());
		return ads;
	}

	// 查找指定专栏粘贴栏指定类别下m~n条广告
	public List<PrivateAd> adsOfPrivatePost(int postId, int adTypeId, int m,
			int n) {
		// System.out.println("执行src/jdbc/SearchFromDB/adsOfPost(),传入的postId为："+postId);
		if (adTypeId > 0) {
			ConnectDB connect = new ConnectDB();
			// 返回通过审核的广告并且按时间排序
			String sql = "select * from privateAd where  exist=1 and postId='"
					+ postId + "' and adTypeId='" + adTypeId
					+ "' order by sortValue  DESC limit " + m + "," + n;
			ResultSet result = connect.executeQuery(sql);
			System.out.println("result:" + result);
			List<PrivateAd> ads = changeResultSetToArray
					.privateAdsArray(result);
			connect.close();
			System.out.println(ads.size());
			return ads;
		} else {
			System.out
					.println("src/jdbc/SearchFromDB/PrivateadsOfPost(),传入的postId为："
							+ postId);
			return null;
		}
	}

	// 查找指定专栏广告下所有图片
	public List<PrivatePic> picsOfPrivateAd(int adId) {
		// System.out.println("执行src/jdbc/SearchFromDB/adsOfPost(),传入的postId为："+postId);

		ConnectDB connect = new ConnectDB();
		// 返回通过审核的广告并且按时间排序
		String sql = "select * from privatePic where  adId in(select adId from ad where exist=1) and privatePic.adId='"
				+ adId + "'";
		ResultSet result = connect.executeQuery(sql);
		// System.out.println("result:" + result);
		List<PrivatePic> pics = changeResultSetToArray.privatePicsArray(result);
		connect.close();
		// System.out.println(pics.size());
		return pics;

	}

	// 查找包含指定字符串的单位和粘贴栏，如果是单位中包含，则同时返回单位下所有粘贴栏
	public List<Map<String, List<Post>>> postsContaintText(String text) {
		// System.out.println("执行src/jdbc/SearchFromDB/adsOfPost(),传入的postId为："+postId);
		ConnectDB connect = new ConnectDB();
		List<Map<String, List<Post>>> posts = new ArrayList<Map<String, List<Post>>>();
		String sql = "select * from unit";// 查找所有的单位
		ResultSet result = connect.executeQuery(sql);
		try {
			while (result.next()) {
				int unitId = result.getInt(1);// 获取单位Id
				String unitName = result.getString(2);// 获取单位名
				String unit = unitId + "_" + unitName;
				if (unitName.contains(text)) {// 如果单位中包含该字符串，则返回此单位和单位下所有粘贴栏
					System.out.println("unit" + unit);
					List<Post> post = postsOfUnit(unitId);// 返回单位下所有粘贴栏
					Map<String, List<Post>> unitsAndPost = new HashMap<String, List<Post>>();
					unitsAndPost.put(unit, post);// 将单位跟粘贴栏放在Map中
					posts.add(unitsAndPost);// 将map添加到list
				} else {// 如果单位中不包含该字符串，则判断单位下是否有粘贴栏名包含该自段
					List<Post> postsOfUnit = postsOfUnit(unitId);// 返回单位下所有粘贴栏
					if (postsOfUnit.size() > 0) {
						List<Post> postsContainText = new ArrayList<Post>();// 用来存储包含指定字段的粘贴栏名
						for (int i = 0; i < postsOfUnit.size(); i++) {
							String postName = postsOfUnit.get(i).getPostName();// 获取粘贴栏名
							if (postName.contains(text)) {// 如果粘贴栏中包含字段则加入List
								postsContainText.add(postsOfUnit.get(i));
								System.out.println(unitName + "postName:"
										+ postName);
							}
						}
						if (postsContainText.size() > 0) {// 如果有粘贴栏包含该字段，则将单位跟包含字段的粘贴栏放在map
							Map<String, List<Post>> unitsAndPost = new HashMap<String, List<Post>>();
							unitsAndPost.put(unit, postsContainText);// 将单位跟粘贴栏放在Map中
							posts.add(unitsAndPost);// 将map添加到list
						}
					}
				}
			}
		} catch (SQLException e) {
			System.out
					.println("false in:src/jdbc/SearchFromDB/postsContaintText");
			e.printStackTrace();
		}
		finally{
	        if(connect!=null){
	            connect.close();
	        }
	    }
		System.out.println("posts.size()" + posts.size());
		return posts;
	}

	// 查找包含指定字符串的单位和粘贴栏，如果是单位中包含，则同时返回单位下所有粘贴栏
	public List<Map<String, List<Post>>> adsContaintText(String text) {
		// System.out.println("执行src/jdbc/SearchFromDB/adsOfPost(),传入的postId为："+postId);
		ConnectDB connect = new ConnectDB();
		List<Map<String, List<Post>>> posts = new ArrayList<Map<String, List<Post>>>();
		String sql = "select * from ad";// 查找所有的广告
		ResultSet result = connect.executeQuery(sql);
		String recordMapKey = "";
		System.out.println("text" + text);
		List<Post> recordMapValueList = new ArrayList<Post>();
		boolean judgeRepeat = false, judgeExist = false;
		try {
			while (result.next()) {
				
				int postId = result.getInt(5);// 获取单位Id
				String remark = result.getString(10);// 获取单位名
				if (remark.contains(text)) {// 如果广告中包含该字符串，则返回此广告粘贴栏
					System.out.println("postId" + postId);
					judgeExist=false;
					judgeRepeat = false;
					sql = "select * from post where postId='" + postId + "'";
					Post post = postOfSql(sql);
					

					int j=0;
					List<Post> postList = new ArrayList<Post>();
					postList.add(post);
					sql = "select * from unit where unitId='"
							+ post.getUnitId() + "'";
					Unit unit = unitOfSql(sql);
					String unitString = unit.getUnitId() + "_"
							+ unit.getUnitName();
					
					for (int i = 0; i < posts.size(); i++) {
						Map<String, List<Post>> map = (Map<String, List<Post>>) posts
								.get(i);
						for (Map.Entry<String, List<Post>> entry : map
								.entrySet()) {
							
							if (entry.getKey().equals(unitString)) {
								judgeRepeat = true;
								judgeExist=true;
								for (Iterator iterator = entry.getValue().iterator(); iterator
										.hasNext();) {
									Post post3 = (Post) iterator.next();
									System.out.println(post3.getPostName());
									
								}
								j=i;
								recordMapKey=entry.getKey();
								System.out.println(recordMapKey);
								recordMapValueList.addAll(entry.getValue());
								recordMapValueList.addAll(postList);
								System.out.println(1);
							}
						}
						

					}
					if(judgeRepeat){
						System.out.println(2);
						List<Post> postList2=new ArrayList<Post>();//必须要重新new 不然地址是相同的。
						for (Iterator iterator = recordMapValueList.iterator(); iterator
								.hasNext();) {
							Post post2 = (Post) iterator.next();
							postList2.add(post2);
							System.out.println(post2.getPostName());
							
						}
						
						posts.get(j).put(recordMapKey, postList2);
						
						recordMapValueList.clear();//不能这么清理，所占内存是一样的。
						System.out.println(recordMapValueList.size());
						
						Map<String, List<Post>> map1 = (Map<String, List<Post>>) posts
								.get(j);
						for (Map.Entry<String, List<Post>> entry : map1
								.entrySet()) {
							for (Iterator iterator = entry.getValue().iterator(); iterator
									.hasNext();) {
								Post post3 = (Post) iterator.next();
								System.out.println(post3.getPostName());
								
							}
						}
						recordMapKey="";
						
						
					}
					
					
					if(!judgeExist){
						System.out.println(3);
						Map<String, List<Post>> unitsAndPost = new HashMap<String, List<Post>>();
						unitsAndPost.put(unitString, postList);// 将单位跟粘贴栏放在Map中
						posts.add(unitsAndPost);// 将map添加到list
						
					}
					

				}
			}
		} catch (SQLException e) {
			System.out
					.println("false in:src/jdbc/SearchFromDB/postsContaintText");
			e.printStackTrace();
		}
		
		for (int i = 0; i < posts.size(); i++) {
			Map<String, List<Post>> map = (Map<String, List<Post>>) posts
					.get(i);
			for (Map.Entry<String, List<Post>> entry : map
					.entrySet()) {
				System.out.println(entry.getKey());
				
					for (Iterator iterator = entry.getValue().iterator(); iterator
							.hasNext();) {
						Post post = (Post) iterator.next();
						System.out.println("posts"+post.getPostName());
					}
					
				}
			
		}
		connect.close();
		
		System.out.println("posts.size()" + posts.size());
		return posts;
	}
    public List<Map<String, Map<Integer,List<Ad>>>> adsContaintText1(String text) {
        // System.out.println("执行src/jdbc/SearchFromDB/adsOfPost(),传入的postId为："+postId);
        ConnectDB connect = new ConnectDB();
        List<Map<String,Map<Integer,List<Ad>>>> posts = new ArrayList<Map<String, Map<Integer,List<Ad>>>>();
        String sql = "select * from ad where checked=1 and exist=1";// 查找所有的广告
        ResultSet result = connect.executeQuery(sql);
        String recordMapKey = "";
        System.out.println("text" + text);
        Map<Integer,List<Ad>> recordMapValueMap= new HashMap<Integer, List<Ad>>();
        List<Ad>ads=new ArrayList<Ad>();
        boolean judgeRepeat = false, judgeExist = false , judgeAd=false;
        try {
            while (result.next()) {
                Ad ad = new Ad(result.getInt(1), result.getInt(2),
                        result.getString(3), result.getInt(4),result.getInt(5), result.getString(6),result.getInt(7),result.getLong(8),result.getInt(9),result.getString(10),result.getInt(11),result.getInt(12),result.getInt(13),result.getInt(14),result.getInt(15));//通过审核的广告checked属性必为1
                int postId = result.getInt(5);// 获取单位Id
                String remark = result.getString(10);// 获取单位名
                if (remark.contains(text)) {// 如果广告中包含该字符串，则返回此广告粘贴栏
                    System.out.println("postId" + postId);
                    judgeExist=false;
                    judgeRepeat = false;
                    judgeAd=false;
                    sql = "select * from post where postId='" + postId + "'";
                    Post post = postOfSql(sql);
                
                    int j=0;
                    List<Post> postList = new ArrayList<Post>();
                    postList.add(post);
                    sql = "select * from unit where unitId='"
                            + post.getUnitId() + "'";
                    Unit unit = unitOfSql(sql);
                    String unitString = unit.getUnitId() + "_"
                            + unit.getUnitName();
                    
                    for (int i = 0; i < posts.size(); i++) {
                        Map<String, Map<Integer,List<Ad>>>  map = (Map<String, Map<Integer,List<Ad>>> ) posts
                                .get(i);
                        for (Map.Entry<String, Map<Integer,List<Ad>>> entry : map
                                .entrySet()) {
                            
                            if (entry.getKey().equals(unitString)) {
                                judgeRepeat = true;
                                judgeExist=true;
                                
                                
                                if(entry.getValue().containsKey(post.getPostId())){
                                    judgeAd=true;
                                    ads=entry.getValue().get(post.getPostId());
                                }
                      
                                j=i;
                                recordMapKey=entry.getKey();
                                System.out.println(recordMapKey);
                               
                                System.out.println(1);
                            }
                        }
                        

                    }
                    if(judgeRepeat){
                        Map<Integer,List<Ad>> recordMapValueMap2= new HashMap<Integer, List<Ad>>();//必须要重新new 不然地址是相同的。
                        List<Ad> ads2=new ArrayList<Ad>();
                        if(judgeAd){
                            ads2.addAll(ads);
                            ads2.add(ad);
                            recordMapValueMap2=posts.get(j).get(recordMapKey);
                            recordMapValueMap2.put(ad.getPostId(),ads2);
                            posts.get(j).put(recordMapKey,recordMapValueMap2);
                             //List<Map<String,Map<Integer,List<Ad>>>>
                        }else {
                            ads2.add(ad);
                            recordMapValueMap2=posts.get(j).get(recordMapKey);
                            recordMapValueMap2.put(ad.getPostId(), ads2);
                            posts.get(j).put(recordMapKey,recordMapValueMap2);
                        }
                        recordMapKey="";
                    }
                    if(!judgeExist){
                        System.out.println(3);
                        List<Ad> ads3=new ArrayList<Ad>();
                        ads3.add(ad);
                        Map<Integer,List<Ad>> recordMapValueMap3= new HashMap<Integer, List<Ad>>();
                        recordMapValueMap3.put(ad.getPostId(), ads3);
                        Map<String, Map<Integer,List<Ad>>> unitsAndPost = new HashMap<String, Map<Integer,List<Ad>>>();
                        unitsAndPost.put(unitString,  recordMapValueMap3);// 将单位跟粘贴栏放在Map中
                        posts.add(unitsAndPost);// 将map添加到list
                        
                    }
                    

                }
            }
        } catch (SQLException e) {
            System.out
                    .println("false in:src/jdbc/SearchFromDB/postsContaintText");
            e.printStackTrace();
        }
        
       
        connect.close();
        
        System.out.println("posts.size()" + posts.size());
        return posts;
    }

	// 查找用户所拥有的的粘贴栏
	public List<Post> postsOfUser(int userId) {
		ConnectDB connect = new ConnectDB();
		String sql = "select * from post where userId='" + userId + "'";
		ResultSet result = connect.executeQuery(sql);
		List<Post> posts = changeResultSetToArray.postsArray(result);
		connect.close();
		return posts;

	}

	// 返回指定id的粘贴栏信息
	public Post postOfId(int postId) {
		ConnectDB connect = new ConnectDB();
		String sql = "select * from post where postId='" + postId + "'";
		ResultSet result = connect.executeQuery(sql);
		List<Post> posts = changeResultSetToArray.postsArray(result);
		Post post = new Post();
		if (posts.size() > 1) {// 如果根据postId查出的单位栏超过一个，则出现错误
			System.out
					.println("false in:SearchAboutPost/postId,一个postId对应的粘贴栏不可能为多个");
		} else {
			post = posts.get(0);// 只有一个则获取第一个
			
		}
		connect.close();
		return post;
	}

	public List<Ad> getAd(int postId, int money) {
		ConnectDB connectDB = new ConnectDB();
		String sql = "select * from ad where checked=1 and exist=1 and postId='" + postId
				+ "'and money>'" + money + "'";
		ResultSet result = connectDB.executeQuery(sql);
		List<Ad> ads = new ArrayList<Ad>();
		try {
			while (result.next()) {
				Ad ad = new Ad(result.getInt(1), result.getInt(2),
						result.getString(3), result.getInt(4),
						result.getInt(5), result.getString(6),
						result.getInt(7), result.getLong(8), result.getInt(9),
						result.getString(10), result.getInt(11),
						result.getInt(12), result.getInt(13),
						result.getInt(14), result.getInt(15));// 通过审核的广告checked属性必为1
				ads.add(ad);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			connectDB.close();
		}
		return ads;
	}

	public List<Ad> getAdByMoney(int money) {
        ConnectDB connectDB = new ConnectDB();
        String sql = "select * from ad where checked=1 and exist=1 and  money>'" + money + "'";
        ResultSet result = connectDB.executeQuery(sql);
        List<Ad> ads = new ArrayList<Ad>();
        try {
            while (result.next()) {
                Ad ad = new Ad(result.getInt(1), result.getInt(2),
                        result.getString(3), result.getInt(4),
                        result.getInt(5), result.getString(6),
                        result.getInt(7), result.getLong(8), result.getInt(9),
                        result.getString(10), result.getInt(11),
                        result.getInt(12), result.getInt(13),
                        result.getInt(14), result.getInt(15));// 通过审核的广告checked属性必为1
                ads.add(ad);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connectDB.close();
        }
        return ads;
    }
	
	// postId 代表post的id(上传的粘贴栏) ; num 表示要随机生成的图片数量；money 表示什么等级以上的图片随机滚动，现在一般取0
	public List<Ad> getRandAd(int postId, int num, int money) {
		List<Ad> ads2 = new ArrayList<Ad>();
		if (money < 0) {
			System.out.println("等级小于0");
			return null;
		} else {
			List<Ad> ads = getAd(postId, money);//查找满足要求的某一个粘贴栏的广告
	//	    List<Ad> ads=getAdByMoney(money);//查找所有的粘贴栏满足要求的广告
		    if(ads.size()==0){
		        return null;
		    }else{
		        for (Iterator iterator = ads.iterator(); iterator.hasNext();) {
	                Ad ad = (Ad) iterator.next();
	                if (ad.getMoney() == 2) {
	                    ads2.add(ad);
	                }
	                if (ad.getMoney() == 3) {
	                    ads2.add(ad);
	                    ads2.add(ad);
	                }
	            }
	            ads.addAll(ads2);
	            Collections.shuffle(ads);
	            ads2.removeAll(ads2);
	            if(ads.size()<5){
	                for (int i = 0; i < ads.size(); i++) {
	                    ads2.add(ads.get(i));
	                }
	                for (int i = 0; i < 5-ads.size(); i++) {
	                    Collections.shuffle(ads);
                        ads2.add(ads.get(0));
                    }
	            }else if(ads.size()<10){
	                for (int i = 0; i < ads.size(); i++) {
                        ads2.add(ads.get(i));
                    }
                    for (int i = 0; i < 10-ads.size(); i++) {
                        Collections.shuffle(ads);
                        ads2.add(ads.get(0));
                    }
	            }else if(ads.size()>=10){
	                for (int i = 0; i < 10; i++) {
                        ads2.add(ads.get(i));
                    }
	            }
	            
		    }
		    System.out.println(ads2.size());
				return ads2;
			
		}

	}

	// 将post对应的访问量增加
	public boolean updateVisitors(int postId) {
		ConnectDB connect = new ConnectDB();
		String sql = "update post set visitorsOfToday=visitorsOfToday+1,allVisitors=allVisitors+1 where postId='"
				+ postId + "'";
		boolean isUpdate = connect.executeUpdate(sql);
		connect.close();
		System.out.println("isUpdate:" + isUpdate);
		return isUpdate;

	}

	// 返回指定id的单位信息
	public Unit unitOfId(int unitId) {
		ConnectDB connect = new ConnectDB();
		String sql = "select * from unit where unitId='" + unitId + "'";
		ResultSet result = connect.executeQuery(sql);
		List<Unit> units = changeResultSetToArray.unitsArray(result);
		Unit unit = new Unit();
		if (units.size() > 1) {// 如果根据postId查出的单位栏超过一个，则出现错误
			System.out
					.println("false in:SearchAboutPost/postId,一个postId对应的粘贴栏不可能为多个");
		} else {
			unit = units.get(0);// 只有一个则获取第一个
			connect.close();
		}
		return unit;
	}

	public UnitType unitTypeOfUnitId(int unitTypeId){
	    ConnectDB connect = new ConnectDB();
        String sql = "select * from unittype where unitTypeId='" + unitTypeId + "'";
        ResultSet result = connect.executeQuery(sql);
        List<UnitType> unitTypes = changeResultSetToArray.unitTypeArrays(result);;
        UnitType unitType = new UnitType();
        if (unitTypes.size() > 1) {// 如果根据postId查出的单位栏超过一个，则出现错误
            System.out
                    .println("false in:SearchAboutPost/postId,一个postId对应的粘贴栏不可能为多个");
        } else {
            unitType = unitTypes.get(0);// 只有一个则获取第一个
            connect.close();
        }
        return unitType;
	}
	// 返回当前的最大广告id
	public int maxAdId() {
		ConnectDB connect = new ConnectDB();
		String sql = "select max(adId) from ad ";
		ResultSet result = connect.executeQuery(sql);
		int maxAdId = 0;
		try {
			while (result.next()) {
				maxAdId = result.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("maxAdId:" + maxAdId);
		connect.close();
		return maxAdId;
	}

	// 返回当前的最大专帖栏广告id
	public int maxPrivateAdId() {
		ConnectDB connect = new ConnectDB();
		String sql = "select max(adId) from privateAd  ";
		ResultSet result = connect.executeQuery(sql);
		int maxAdId = 0;
		try {
			while (result.next()) {
				maxAdId = result.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("maxAdId:" + maxAdId);
		connect.close();
		return maxAdId;
	}

	// 存储广告
	public boolean saveAd(Ad ad) {
		ConnectDB connect = new ConnectDB();
		System.out.println("ad.getFirstPicAddr():" + ad.getFirstPicAddr());
		String sql = "insert into ad(adId,adTypeId,upLoadTime,userId,postId,firstPicAddr,money,sortValue,checked,remark,height,width,exist,click,auditMark) "
				+ "values('"
				+ ad.getAdId()
				+ "','"
				+ ad.getAdTypeId()
				+ "','"
				+ ad.getUpLoadTime()
				+ "','"
				+ ad.getUserId()
				+ "','"
				+ ad.getPostId()
				+ "','"
				+ ad.getFirstPicAddr()
				+ "','"
				+ ad.getMoney()
				+ "','"
				+ ad.getSortValue()
				+ "','"
				+ ad.getChecked()
				+ "','"
				+ ad.getRemark()
				+ "','"
				+ ad.getHeight()
				+ "','"
				+ ad.getWidth()
				+ "','"
				+ ad.getExist()
				+ "','"
				+ ad.getClick()
				+ "','"
				+ ad.getAuditMark() + "')";

		boolean isSave = connect.executeUpdate(sql);
		System.out.println("isSave:" + isSave);
		connect.close();
		return isSave;
	}

	// 存储广告的金额
	public boolean saveMoney(int adId, int money) {
		ConnectDB connectDB = new ConnectDB();
		String sql = "update ad set money='" + money + "'where adId='" + adId
				+ "'";
		boolean flag = connectDB.executeUpdate(sql);
		connectDB.close();
		return flag;
	}

	public List<Cost> getCost() {
		ConnectDB connectDB = new ConnectDB();
		String sql = "select * from cost";
		ResultSet rSet = connectDB.executeQuery(sql);
		List<Cost> costs = new ArrayList<Cost>();
		try {
			while (rSet.next()) {
				Cost cost = new Cost();
				cost.setCostId(rSet.getInt("costId"));
				cost.setGrade(rSet.getInt("grade"));
				cost.setMoney(rSet.getInt("money"));
				costs.add(cost);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			connectDB.close();
		}
		return costs;
	}

	// 存储图片
	public boolean savePic(Pic pic) {
		ConnectDB connect = new ConnectDB();
		System.out.println("pic.getPicAddr():" + pic.getPicAddr());
		String sql = "insert into pic(picAddr,width,height,checked,adId) "
				+ "values('" + pic.getPicAddr() + "','" + pic.getWidth()
				+ "','" + pic.getHeight() + "','" + pic.getChecked() + "','"
				+ pic.getAdId() + "')";
		boolean isSave = connect.executeUpdate(sql);
		System.out.println("isSave:" + isSave);
		connect.close();
		return isSave;
	}

	// 存储专栏图片
	public boolean savePrivatePic(PrivatePic pic) {
		ConnectDB connect = new ConnectDB();
		System.out.println("pic.getPicAddr():" + pic.getPicAddr());
		String sql = "insert into privatepic(picAddr,width,height,adId) "
				+ "values('" + pic.getPicAddr() + "','" + pic.getWidth()
				+ "','" + pic.getHeight() + "','" + pic.getAdId() + "')";
		boolean isSave = connect.executeUpdate(sql);
		System.out.println("isSave:" + isSave);
		connect.close();
		return isSave;
	}

	// 存储专栏广告
	public boolean savePrivateAd(PrivateAd ad) {
		ConnectDB connect = new ConnectDB();
		System.out.println("ad.getRemark():" + ad.getRemark());
		String sql = "insert into privatead(adId,adTypeId,upLoadTime,userId,postId,firstPicAddr,money,sortValue,remark,height,width,exist,click,auditMark) "
				+ "values('"
				+ ad.getAdId()
				+ "','"
				+ ad.getAdTypeId()
				+ "','"
				+ ad.getUpLoadTime()
				+ "','"
				+ ad.getUserId()
				+ "','"
				+ ad.getPostId()
				+ "','"
				+ ad.getFirstPicAddr()
				+ "','"
				+ ad.getMoney()
				+ "','"
				+ ad.getSortValue()
				+ "','"
				+ ad.getRemark()
				+ "','"
				+ ad.getHeight()
				+ "','"
				+ ad.getWidth()
				+ "','"
				+ ad.getExist()
				+ "','"
				+ ad.getClick()
				+ "','" + ad.getAuditMark() + "')";

		boolean isSave = connect.executeUpdate(sql);
		System.out.println("isSave:" + isSave);
		connect.close();
		return isSave;
	}

	// 返回指定专栏下所有广告
	public List<PrivateAd> adsOfPrivatePost(int postId) {
		// System.out.println("执行src/jdbc/SearchFromDB/adsOfPost(),传入的postId为："+postId);
		ConnectDB connect = new ConnectDB();
		// 返回通过审核的广告并且按时间排序
		String sql = "select * from privatead where postId='" + postId
				+ "' order by sortValue  DESC";
		ResultSet result = connect.executeQuery(sql);
		List<PrivateAd> ads = changeResultSetToArray.privateAdsArray(result);
		connect.close();
		System.out.println(ads.size());
		return ads;
	}

	// 返回指定id的广告信息
	public Ad adOfId(int adId) {
		ConnectDB connect = new ConnectDB();
		String sql = "select * from ad where adId='" + adId + "'";
		ResultSet result = connect.executeQuery(sql);
		List<Ad> ads = changeResultSetToArray.adsArray(result);
		Ad ad = new Ad();
		if (ads.size() > 1) {// 如果根据postId查出的单位栏超过一个，则出现错误
			System.out
					.println("false in:SearchAboutPost/adOfId,一个adId对应的粘贴栏不可能为多个");
		} else {
			ad = ads.get(0);// 只有一个则获取第一个
			connect.close();
		}
		if(connect!=null){
		    connect.close();
		}
		return ad;
	}

	// 返回指定id的单位类别
	public AdType adTypeOfId(int adTypeId) {
		ConnectDB connect = new ConnectDB();
		System.out.println("adTypeId:" + adTypeId);
		String sql = "select * from adType where adTypeId='" + adTypeId + "'";
		ResultSet result = connect.executeQuery(sql);
		List<AdType> adTypes = changeResultSetToArray.adTypesArray(result);
		AdType adType = new AdType();
		if (adTypes.size() > 1) {// 如果根据postId查出的单位栏超过一个，则出现错误
			System.out
					.println("false in:SearchAboutPost/adTypeId,一个adTypeId对应的粘贴栏不可能为多个");
		} else {
			adType = adTypes.get(0);// 只有一个则获取第一个
			connect.close();
		}
		System.out.println("adTypeName:" + adType.getAdTypeName());
		  if(connect!=null){
	            connect.close();
	        }
		return adType;
	}

	public AdType adTypeOfIdOfUnitType(int adTypeId, int unitTypeId) {
		ConnectDB connect = new ConnectDB();
		System.out.println("adTypeId:" + adTypeId);
		String sql = "select * from adType where adTypeId='" + adTypeId
				+ "'and unitTypeId='" + unitTypeId + "'";
		ResultSet result = connect.executeQuery(sql);
		List<AdType> adTypes = changeResultSetToArray.adTypesArray(result);
		AdType adType = new AdType();
		if (adTypes.size() > 1) {// 如果根据postId查出的单位栏超过一个，则出现错误
			System.out
					.println("false in:SearchAboutPost/adTypeId,一个adTypeId对应的粘贴栏不可能为多个");
		} else {
			adType = adTypes.get(0);// 只有一个则获取第一个
			connect.close();
		}
		  if(connect!=null){
	            connect.close();
	        }
		System.out.println("adTypeName:" + adType.getAdTypeName());
		return adType;
	}

	// 返回指定id的专栏单位类别
	public PrivateAdType privateAdTypeOfId(int adTypeId) {
		ConnectDB connect = new ConnectDB();
		System.out.println("adTypeId:" + adTypeId);
		String sql = "select * from privateAdType where typeId='" + adTypeId
				+ "'";
		ResultSet result = connect.executeQuery(sql);
		List<PrivateAdType> adTypes = changeResultSetToArray
				.privateAdTypesArray(result);
		PrivateAdType adType = new PrivateAdType();
		if (adTypes.size() > 1) {// 如果根据postId查出的单位栏超过一个，则出现错误
			System.out
					.println("false in:SearchAboutPost/adTypeId,一个adTypeId对应的粘贴栏不可能为多个");
		} else if (adTypes.size() == 0) {
			System.out.println("false in:SearchAboutPost/adTypeId,没有对应的类别");
		} else {
			adType = adTypes.get(0);// 只有一个则获取第一个
			connect.close();
		}
		  if(connect!=null){
	            connect.close();
	        }
		System.out.println("adTypeName:" + adType.getAdTypeName());
		return adType;
	}

	// 更新指定专栏广告的排序值
	public boolean updateSortValueOfPrivateAds(int adId, long sortValue) {
		ConnectDB connect = new ConnectDB();
		String sql = "update privatead set sortValue='" + sortValue
				+ "' where adId='" + adId + "'";
		boolean isUpdate = connect.executeUpdate(sql);
		System.out.println("isUpdate:" + isUpdate);
		  if(connect!=null){
	            connect.close();
	        }
		return isUpdate;

	}

	public static void main(String[] args) throws SQLException {
		SearchAboutPost search = new SearchAboutPost();
		// search.unitsOfType(1);
		// new SearchAboutPost().unitsWithPublicPost(1);
		// new SearchAboutPost().unitTypes();
		// new SearchAboutPost().postsOfUnit(11);
		// new SearchAboutPost().publicPostsOfUnit(11);
		// new SearchAboutPost().adsOfPost(11,1,0,10);
		// new SearchAboutPost().adsOfPost(11,10,20);
		// new SearchAboutPost().picsOfAd(430);
		// search.postsContaintText("12");
		// search.postsOfUser(12);
		// search.privateAdTypes(21);
		// search.maxAdId();
		// search.updateVisitors(4);
		// search.adOfId(4);
		// search.updateSortValue(4,001234);
		// search.adsOfPrivatePost(1,1,0,2);
		// search.picsOfPrivateAd(1);
		// search.adsOfPrivatePost(21);
		// search.adTypeOfId(1);
		search.privateAdTypeOfId(1);
	}

}

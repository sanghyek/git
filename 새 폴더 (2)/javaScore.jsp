<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">

  <title>Document</title>
 </head>
 <body>
  <h2>JavaBeans를 이용한 학생의 이름과 성적의 저장과 조회 예제</h2>
  <jsp:useBean id="score" class="javabean.ScoreBean" scope="page"/>

  <hr>
  <h3>이름과 성적을 JavaBeans ScoreBean에 저장</h3><p>
  이름:<%= "나군"%>,
  성적:<%= "85"%><p>
  <jsp:setProperty name="score" property="name" value="나군"/>
  <jsp:setProperty name="score" property="point" value="85"/>

  <hr>
  <h3>JavaBeans ScoreBean에 저장된 정보를 조회 출력</h3><p>
  이름:<jsp:getProperty name="score" property="name"/><br>
  성적:<jsp:getProperty name="score" property="point"/><br>

 </body>
</html>



ArrayList<String[]> list = new ArrayList<String[]>();
	
	list.add(new String[] {"id","name","snum","year","pass","email"});
	list.add(new String[] {"ga","na","da","ra","ma","ba"});
	list.add(new String[] {"gab","nab","dab","rab","mab","bab"});
	list.add(new String[] {"gan","nan","dan","ran","man","ban"});
	list.add(new String[] {"gas","nas","das","ras","mas","bas"});


	
  ID:<%= "zzkin1"%>,
  이름:<%= "한상혁"%>,
  숫자:<%= "55646224"%>,
  출생년도:<%= "1991"%>,
  패스워드:<%= "1234"%>,
  이메일:<%= "zzkin1@nate.com"%><p>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- FOR문 -->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!-- divided -->
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

	

    <div id="article_table">
        <table class="table">
          <thead class="table-dark">
            <tr>
              <th scope="col" width="10%">번호</th>
              <th scope="col" width="10%">type</th>              
              <th scope="col" width="20%">제목</th>
              <th scope="col" width="10%">글쓴이</th>
              <th scope="col" width="10%">등록일</th>
              
            </tr>
          </thead>
          <tbody>
          <c:forEach items="${list}" var= "boardVO">        
           <tr> <!-- vo 1개가 tr 한줄 -->
           	  <td>${boardVO.numbero}</td>
           	   <td>${boardVO.type}</td>
           	   <td>${boardVO.title}</td>           	   
           	    <td>${boardVO.username}</td>              
              <td>${boardVO.indate}</td>
              <td><a href="del?delno=${boardVO.title}">수정/삭제</a></td>
            </tr>
            </c:forEach>
          </tbody>
        </table>
        <div id="table_menu">
          <a href="bwr">
          <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-file-plus"
            viewBox="0 0 16 16">
            <path d="M8.5 6a.5.5 0 0 0-1 0v1.5H6a.5.5 0 0 0 0 1h1.5V10a.5.5 0 0 0 1 0V8.5H10a.5.5 0 0 0 0-1H8.5V6z" />
            <path
              d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2zm10-1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1z" />
          </svg>
        </a>
        </div>

      </div>
    </div>
  </div>   



    
</body>
</html>
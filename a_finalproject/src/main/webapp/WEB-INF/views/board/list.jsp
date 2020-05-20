<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>��������</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
  integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/resources/css/board.css">

<style>

</style>

<body>
  <div id="bg">
    <div id="boardWrapper">
      <h3>���ǻ���</h3>
      <table id="boardLists">
        <tbody>
          <!-- ��� -->
          <thead>
            <tr>
              <td id="boardNum">��ȣ</td>
              <td id="boardTitle">����</td>
              <td id="boardDate">�۾���</td>
            </tr>
          </thead>
          
          <c:forEach var="list" items="${list}">
			<tr>
			<td>${list.bno}</td>
			<td><a href="/board/get?bno=${list.bno}">${list.title}</a></td>
			<td>${list.writer}</td>
          	</tr>
		 </c:forEach>
        </tbody>
      </table>
      <a id="boardlistWriteBttn" class="btn btn-primary" href="/board/insert" role="button">���ۼ�</a>
      <a href="/board/noticeList.html">��������</a>
    </div>
  </div>

  <!-- <script src="/board/boardlist.js"></script> -->
</body>

</html>
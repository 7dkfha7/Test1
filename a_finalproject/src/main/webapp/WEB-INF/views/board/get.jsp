<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>공지사항</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
  integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/resources/css/board.css">

<style>

</style>

<body>
  <div id="bg">
    <div id="boardWrapper">
      <h3>공지사항</h3>
      <table id="boardLists">
        <tbody>
          <!-- 상단 -->
          <thead>
            <tr>
              <td id="boardNum">번호</td>
              <td id="boardTitle">제목</td>
              <td id="boardDate">날짜</td>
            </tr>
          </thead>
          <tr>
            <td>${board.bno}</td>
            <td>${board.title}</td>
            <td>${board.regDate}</td>
          </tr>

        </tbody>
      </table>
      <table>
        <tbody>
          <tr>
            <td id="boardContent">${board.content}</td>
          </tr>
        </tbody>
      </table>
      <a id="boardlistWriteBttn" class="btn btn-primary" href="/board/insert" role="button">글작성</a>
      <a href="/board/qnaList.html">문의사항</a>
    </div>
  </div>

  <!-- <script src="/board/boardlist.js"></script> -->
</body>

</html>
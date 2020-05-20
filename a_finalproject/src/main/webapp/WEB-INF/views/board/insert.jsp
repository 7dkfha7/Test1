<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="/resources/css/board.css">
</head>
<style>

</style>

<body>
  <div id="bg">
    <div id="boardWrapper">
      <h3>글작성</h3>
      <table id="boardInputTable">
        <tbody>
		  	  <form action="add" method="post">
			
          <tr>
            <td>
              <!-- 로그인한 경우 보여지는 인풋 -->
              <!-- <input type="text" readonly class="form-control-plaintext" id="staticId" value="로그인이름">  -->
              <input id="boardInputName" name="writer" class="form-control" type="text" placeholder="이름">
              <input type="password" class="form-control" id="inputPassword" placeholder="비밀번호">

            </td>
          </tr>
          <tr>
            <td>
              <input id="boardInputTitle" name="title" class="form-control" type="text" placeholder="제목">
            </td>
          </tr>


          <tr>
            <td>
              <textarea id="boardInputTextarea" class="form-control" id="formTextarea1" name="content" rows="10"></textarea>
            </td>
          </tr>

          <tr>
            <td>
              <input id="fileUpload" type="file" class="btn btn-light">
              <!-- 파일업로드 리스트 -->
              <ul id="fileUploadList">
                <li><span>파일이름-1</span><span><img id="deleteIcon" src="/img/close.png"></li>

              </ul>

            </td>

          </tr>


          <tr>
            <td>

              <button id="boardSubmit" type="submit" class="btn btn-primary">작성하기</button> </td>
          </tr>
		</form>
        </tbody>
        
      
	  
      </table>

    


    </div>
  </div>

</body>

</html>
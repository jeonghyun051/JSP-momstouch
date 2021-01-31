<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div>
<div class="container">
	<form action="/momstouch/board?cmd=saveAdmin" method="POST">
		<input type="hidden" name="userId" value="${sessionScope.principal.id}" />
		<div class="form-group">
			<label for="title">Title:</label>
			<input type="text" class="form-control" placeholder="title1" id="title" name="title">
		</div>

		<div class="form-group">
			<label for="content">Content:</label>
			<textarea id="summernote" class="form-control" rows="5" id="content1" name="content"></textarea>
		</div>

		<button type="submit" class="btn btn-primary">글쓰기 등록</button>
	</form>
</div>
</div>
  <script>
  	$('#summernote').summernote({
        placeholder: '글을 쓰세요.',
        tabsize: 2,
        height: 400
      });
  </script>
</body>
</html>
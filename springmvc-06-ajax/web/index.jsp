<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
  <%--<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>--%>
  <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
  <script>
      function a1(){
          $.post({
              url:"${pageContext.request.contextPath}/a1",
              data:{'name':$("#txtName").val()},
              success:function (data,status) {
                  alert(data);
                  // alert(status);
              }
          });
      }
  </script>
</head>
<body>
<label>用户名: </label><input type="text" id="txtName" onblur="a1()"/>
</body>
</html>
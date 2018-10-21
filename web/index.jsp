<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/21/2018
  Time: 8:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Management</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
    <style>
        .row {
            margin: 30px;
        }

        span {
            display: block;
        }
    </style>
</head>

<body>
<div class="container">
    <div class="row">
        <h1>Quản lý khách hàng</h1>
    </div>
    <!-- Thêm khách hàng mới -->
    <div class="row">
        <div class="col-md-12">
            <h3>Thêm khách hàng mới</h3>
            <form action="/CustomerList" method="post">
                <input type="text" name="name" placeholder="Tên">
                <input type="date" name="birthdate" placeholder="Ngày sinh">
                <input type="text" name="address" placeholder="Địa chỉ">
                <button type="submit">Thêm khách hàng</button>
            </form>
        </div>
    </div>

    <!-- Product list -->
    <div class="row">
        <h2>Danh sách khách hàng</h2>
        <table class="table">
            <thead>
            <tr>
                <th>Tên</th>
                <th>Ngày Sinh</th>
                <th>Địa chỉ</th>
            </tr>
            </thead>
            <tbody>
            <%
                if (request.getAttribute("customerList") != null) {
                    String message = (String) request.getAttribute("customerList");
                    out.println(message);
                }
            %>
            </tbody>

        </table>

    </div>

</div>
</body>

</html>

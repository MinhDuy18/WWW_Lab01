<%@ page import="vn.edu.iuh.fit.www_lab01.models.Account" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddAccount</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./style.css">
</head>
<body>
<%
    Account acc = (Account) session.getAttribute("accountLogin");
    String grant_accessLogin = session.getAttribute("grant_accessLogin").toString();
%>
<h3 style="font-family: SansSerif,sans-serif; margin: 0 auto">Welcome: <%= acc.getFull_name() %> </h3>
<!-- Menu -->
<div class="menu">
    <ul>
        <li><a href="login?action=info" methods="get">Information Account</a></li>
        <li><a href="login?action=listRole">List role</a></li>
        <% if(grant_accessLogin.equals("admin")){%>
            <li><a href="login?action=listAllAccount">List Account</a></li>
        <%}%>
        <li><a href="index.jsp">Log out</a></li>
    </ul>
</div>
<!-- Nội dung chính -->
<div >
    <h1>Information Of New Account</h1>
    <form id="formAddAcc" action="login?action=addAccount" method="post">
        <label for="accountID">Account ID</label>
        <input type="text" id="accountID" name="accountID" placeholder="Enter account ID"/>
        <label for="fullName">FullName</label>
        <input type="text" id="fullName" name="fullName" placeholder="Enter full name"/> <br>
        <label for="email">Email</label>
        <input type="text" id="email" name="email" placeholder="Enter email"/> <br>
        <label for="phone">Password</label>
        <input type="text" id="password" name="password" placeholder="Enter password"/> <br>
        <label for="phone">Phone</label>
        <input type="text" id="phone" name="phone" placeholder="Enter your phone"/> <br>
        <button type="submit" id="addBtn" >ADD ACCOUNT</button>
    </form>
</div>

</body>
</html>

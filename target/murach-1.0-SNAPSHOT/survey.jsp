<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css"/>
        <link rel="stylesheet" href="styles/chuong04Style.css"> 
</head>

<body>
     <nav>
            <ul>
                <li><a href="./index.html">Home</a></li>
                <li><a href="./Chuong04.html">Chapter 04</a></li>
                <li><a href="./Chuong05.html">Chapter 05</a></li>
            </ul>
        </nav>
    <section class="content">
        <h1>Thanks for taking our survey!</h1>

            <p>Here is the information that you entered:</p>

            <label>Email:</label>
            <span>${user.email}</span><br>
            <label>First Name:</label>
            <span>${user.firstName}</span><br>
            <label>Last Name:</label>
            <span>${user.lastName}</span><br>
            <label>Birth:</label>
            <span><fmt:formatDate value="${user.birth}" pattern="yyyy-MM-dd"/></span><br>

            <label>Heard From:</label>
            <span>${user.heardFrom}</span><br>
            <label>Updates:</label>
            <span>${user.wantsUpdates}</span><br>

            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:if test="${user.wantsUpdates == 'Yes'}">
                <label>Contact Via:</label>
                <span>${user.contactVia}</span>
            </c:if>    
    </section>
    
    
</body>
</html>
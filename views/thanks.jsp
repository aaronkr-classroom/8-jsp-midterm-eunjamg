<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thank You</title>
</head>
<body>

<jsp:include page="header.jsp" />

<% 
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String email = request.getParameter("email");
    String gender = request.getParameter("gender");
    String hobbies[] = request.getParameterValues("hobbies");

    // Handle hobbies display (in case there are multiple)
    String hobbyList = "";
    if (hobbies != null) {
        for (String hobby : hobbies) {
            hobbyList += hobby + " ";
        }
    }
%>

<h2>Thank you for registering, <%= firstName %> <%= lastName %>!</h2>
<p>We have received your details:</p>
<ul>
    <li>Email: <%= email %></li>
    <li>Gender: <%= gender %></li>
    <li>Hobbies: <%= hobbyList %></li>
</ul>

<jsp:include page="footer.jsp" />

</body>
</html>

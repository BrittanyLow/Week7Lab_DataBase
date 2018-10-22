<%-- 
    Document   : notes
    Created on : Oct 18, 2018, 12:31:05 PM
    Author     : 707114
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Note!</h1>
        <table>
            <tr> 
                <th>Note Id </th>
                <th> Date Created </th>
                <th> Content</th>
            </tr>
            <c:forEach var="user" items="${note}">
                <tr>
                    <td>${note.id}</td>
                    <td>${note.date}</td>
                    <td>${note.content}</td>
                    <td>
                        <form action="users" method="post" >
                            <input type="submit" value="Delete">
                            <input type="hidden" name="action" value="delete">
                            <input type="hidden" name="selectedID" value="${note.id}">
                        </form>
                    </td>
                    <td>
                        <form action="users" method="get">
                            <input type="submit" value="Edit">
                            <input type="hidden" name="action" value="view">
                            <input type="hidden" name="selectedID" value="${note.id}">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    <c:if test="${selectedNote == null}">
        <h3>Add User</h3>
        <form action="users" method="POST">
            Note: <input type="text" name="note" maxlength="15" size="10" ><br>
            <input type="hidden" name="action" value="add">
            <input type="submit" value="Save">
        </form>
    </c:if>
    <c:if test="${selectedNote != null}">
        <h3>Edit User</h3>
        <form action="users" method="POST">
            Note: <input type="text" name="note" value="${selectedNote.content}" maxlength="15" size="10" readonly><br>
            <input type="hidden" name="action" value="edit">
            <input type="submit" value="Save">
        </form>
    </c:if>
</body>
</html>

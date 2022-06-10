<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
 <body>

 <h2>All Users</h2>
 <br>

 <table>
     <tr>
         <th>Name</th>
         <th>SurName</th>
         <th>Job</th>
         <th>Salary</th>
         <th>Operations</th>
     </tr>
     <c:forEach var="us" items="${allUs}">
<%--         снизу что то произошло--%>
<%--         <c:url var="updateButton" value='/'>--%>
<%--             <c:param name="usId" value="${us.id}"/>--%>
<%--         </c:url>--%>
         <c:url value="/updateInfo" var="updateButton">
             <c:param name="usId" value="${us.id}" />
         </c:url>

         <tr>
             <td>${us.firstName}</td>
             <td>${us.lastName}</td>
             <td>${us.job}</td>
             <td>${us.salary}</td>
             <td>
                 <input type="button" value="Update"
                        onclick="window.location.href = '${updateButton}'"/>
             </td>
         </tr>
     </c:forEach>
 </table>
 <br>

 <input type="button" value="Add"
 onclick="window.location.href = 'addNewUser'"/>
</body>
</html>
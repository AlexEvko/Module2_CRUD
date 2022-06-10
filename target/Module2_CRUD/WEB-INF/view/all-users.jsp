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
     </tr>
     <c:forEach var="us" items="${allUs}">
         <tr>
             <td>${us.firstName}</td>
             <td>${us.lastName}</td>
             <td>${us.job}</td>
             <td>${us.salary}</td>
         </tr>
     </c:forEach>
 </table>
 <br>

 <input type="button" value="Add"
 onclick="window.location.href = 'addNewUser'"/>
</body>
</html>
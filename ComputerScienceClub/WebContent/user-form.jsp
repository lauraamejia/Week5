<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<head>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8" />
	<title>Computer Science Club</title>
</head>
</head>
<body>
	<center>
		<h1>Welcome to the Computer Science Club!</h1>
        <h2>
        	<a href="new">New Member?</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">List All Members Information</a>
        	
        </h2>
	</center>
    <div align="center">
		<c:if test="${user != null}">
			<form action="update" method="post">
        </c:if>
        <c:if test="${user == null}">
			<form action="insert" method="post">
        </c:if>
        <table   BORDER="1" align="center" bgcolor="#E8FDFF"
     weight="50%" height="20%">
            <caption>
            	<h2>
            		<c:if test="${user != null}">
            			Edit a Member
            		</c:if>
            		<c:if test="${user == null}">
            			Add a New Member
            		</c:if>
            	</h2>
            </caption>
        		<c:if test="${user != null}">
        			<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
        		</c:if>            
            <tr>
                <th>User Name: </th>
                <td>
                	<input type="text" name="name" size="45"
                			value="<c:out value='${user.name}' />"
                		/>
                </td>
            </tr>
            <tr>
                <th>User Email: </th>
                <td>
                	<input type="text" name="email" size="45"
                			value="<c:out value='${user.email}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Country: </th>
                <td>
                	<input type="text" name="country" size="15"
                			value="<c:out value='${user.country}' />"
                	/>
                </td>
            </tr>
            <tr>
            	<td colspan="2" align="center">
            		<input type="submit" value="Save" />
            	</td>
            </tr>
        </table>
    </div>	
</body>
</html>
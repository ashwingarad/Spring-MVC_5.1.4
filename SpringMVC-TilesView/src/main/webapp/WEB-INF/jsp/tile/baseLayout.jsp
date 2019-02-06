<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<table border="1px">
	<thead>
		<tr>
			<th><tiles:insertAttribute name="header" /></th>
		</tr>
		<tr>
			<th><tiles:insertAttribute name="menu" /></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><tiles:insertAttribute name="body" /></td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<td><tiles:insertAttribute name="footer" /></td>
		</tr>
	</tfoot>
</table>





<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%

double  dolar=0, euro =0 , dolpe=0, peso =0,pesodolar=0,pesoeuro=0,dolareuro=0 ,dolpeso=0;
if (request.getParameter("ok")!= null){
	peso= Double.parseDouble(request.getParameter("text1"));
	dolar= Double.parseDouble(request.getParameter("text2"));
	dolpe= Double.parseDouble(request.getParameter("text3"));
	euro= Double.parseDouble(request.getParameter("text4"));
	
	pesodolar= peso/23;
	dolpeso=dolpe*23;
	pesoeuro= dolar* 25;
	dolareuro= euro*1.1;
	
}

%>




<form  action="Index.jsp"  method="POST" >

<table>
<tr>


<td>PESO a dolar </td>

<td> <input type="text" name="text1"> </td>
<td> <input type="submit" value="enviar" name="ok"> </td>

<td> <input type="text" value=<%out.print(pesodolar);%>> </td>
</tr>

<tr>


<td>PESO a euro </td>

<td> <input type="text" name="text2"> </td>
<td> <input type="submit" value="enviar" name="ok"> </td>
<td> <input type="text" value=<%out.print(pesoeuro);%>> </td>
</tr>



<tr>

<td>dolar a peso </td>

<td> <input type="text" name="text3"> </td>
<td> <input type="submit" value="enviar" name="ok"> </td>
<td> <input type="text" value=<%out.print(dolpeso);%>> </td>
</tr>
<tr>


<td>euro a dolar </td>

<td> <input type="text" name="text4"> </td>
<td> <input type="submit" value="enviar" name="ok"> </td>
<td> <input type="text" value=<%out.print(dolareuro);%>> </td>
</tr>


</table>

</form>

</body>
</html>
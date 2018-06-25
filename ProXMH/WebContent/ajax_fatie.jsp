<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发表失物招领页面</title>
</head>
<body>
<div class="fatie">

            	<form action="fatie.do?" method="post" enctype="multipart/form-data" >
            		<h2>发帖</h2>	
            		<table>           		
            		<tr><th> &nbsp; </th><td>  &nbsp; </td></tr>  	
            		<tr><th>标题: </th><td><input type="text" maxlength="18" name="head"></td></tr>
            		  <tr><th> &nbsp; </th><td>  &nbsp; </td></tr>   	
            		<tr><th>内容:</th><td><textarea rows="10" cols="30" maxlength="180" name="text"></textarea></td></tr>
            		<tr><th> &nbsp; </th><td>  &nbsp; </td></tr>   	
            		<tr><th>图片：</th><td><input type="file" name="file"></td></tr>
            		<tr><th> &nbsp; </th><td>  &nbsp; </td></tr>
                   <tr><th>失物类型: 
                   </th><td>
                   <input type="radio" name="type" value="fan" /> 饭卡&nbsp;&nbsp;
                   <input type="radio" name="type" value="fan" /> 书&nbsp;&nbsp;
                   <input type="radio" name="type" value="xue" />学习用品&nbsp;&nbsp;
                   <input type="radio" name="type" value="qian" /> 钱包<br>
                   <input type="radio" name="type" value="zi" /> 自行车&nbsp;&nbsp;
                   <input type="radio" name="type" value="yin" /> 银行卡&nbsp;&nbsp;
                   <input type="radio" name="type" value="qi" />其他
                   </td></tr>
            		 <tr><th> &nbsp; </th><td>  &nbsp; </td></tr>   	
            		<tr><th>报酬: </th><td><input type="text" onkeyup="value=value.replace(/[^\d]/g,'')" placeholder="请输入数字" name="money"></td></tr>
            		<tr><th> &nbsp; </th><td>  &nbsp; </td></tr>   	
            	   	
            		<tr>
            			<td> <input type="radio" name="leibie" value="shiwu" /> 失物&nbsp; &nbsp;</td> 
            			<td> <input type="radio" name="leibie" value="zhaoling" /> 招领</td>
            		</tr>
            		<tr><th> &nbsp; </th><td>  &nbsp; </td></tr>  
            		<tr><th>联系方式: </th><td><input type="text" maxlength="18" name="tel"></td></tr>
            		<tr><th> &nbsp; </th><td>  &nbsp; </td></tr>    	
            		</table>
            		<input type="submit" value="发帖"/>
            	</form>
            	   
            </div>


</body>
</html>
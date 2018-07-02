<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="{CHARSET}">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>    <c:forEach items="${sessionScope.tieList}" var="tie" >
            <div class="grids">
                <h2> ${tie.t_data}</h2>
                <div class="grid">
                    <div class="preview">
                        <a href="#"><img src="./images/11.png" alt=""></a>
                        <div class="data">
                            <h3><a href="#">赏金:${tie.money}</a></h3>
                        </div>
                    </div>
                </div>
                <div class="grid">
                    <p>${tie.t_txt}<p>
                </div>
                 <div class="grid">
                  <br>
               </div>
                <div class="clearFloat"></div>
            </div>
            <div class="more">
               <a href="javascript:showDialog('${tie.tel}');" >联系我</a>
            </div>
            
            </c:forEach>
       

              <div class="more">
              
                 <ul>
                	<li><a href="#" onclick="Pageto(0)">&laquo;</a></li>
                	<li ><a href="#" onclick="Pageto(${sessionScope.pageNo})">${sessionScope.pageNo+1}</a></li>
                	<li><a href="#" onclick="Pageto(${sessionScope.pageNo+1})">${sessionScope.pageNo+2}</a></li>
                	<li><a href="#" onclick="Pageto(${sessionScope.pageNo+2})">${sessionScope.pageNo+3}</a></li>
                	<li><a href="#" onclick="Pageto(${sessionScope.pageNo+3})">${sessionScope.pageNo+4}</a></li>
                	<li><a href="#" onclick="Pageto(${sessionScope.pageCount-1})">&raquo;</a></li>
                </ul>
              
            </div>
            
</body>
</html>
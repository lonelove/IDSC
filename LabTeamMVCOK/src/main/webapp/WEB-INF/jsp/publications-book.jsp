<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<title>publications-book</title>
	<base href="<%=basePath%>/resources/">
<meta name="viewport" content="width=device-width, initial-scale=1">	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Cache-Control" content="no-transform" />
<meta name="renderer" content="webkit">
<meta name="keywords" content=""/>
<meta name="description" content=""/>


<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/fwslider.css" media="all">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/paper.css">


<script type="text/javascript" src="js/modernizr.custom.28468.js"></script>
<script type="text/javascript" src="js/jquery.cslider.js"></script>
	
</head>
<body>
<!--å¯¼èªæ -->
<div class="header_bg">
<div class="header_bg">
	<!-----start-conatiner---->
	<div class="container">
			<!-----start-header---->
		<div class="header">
					<!----start-top-nav---->
		    <header id="topnav">
			  <div class="topnavifloat">
				<div class="topnavifloat">
				     <div class="topnavifloat">
			            <a class=" headlogo" href="<%=path %>/index"><img src="images/logo_1.png" alt=""/></a>
					 </div>
					 <div style="; overflow:hidden;">
					 <div style="width:1000000px;">
					 <div style="float:left;;">
					 <nav>
			        		 <ul>
								<li ><a  href="<%=path %>/index">HOME</a></li>
								<li><a href="#about" class="scroll">IDSC</a></li>
								<li><a href="#portfolio" class="scroll">EVENTS</a></li>
								<li><a href="#team" class="scroll">MEMBERS</a></li>
								<li class="active"><a href="publications.html" class="scroll">PUBLICATIONS</a></li>
								<li class="last"><a href="#contact" class="scroll">CONTACT US</a></li>
							</ul>
		        	</nav>
					</div>
					</div>
					</div>
				</div>
			    <div style="clear:both"></div>
			  </div>
			  <a href="#" id="navbtn">Nav Menu</a>
			  <div style="clear:both"></div>
			  <div class="clearfix"> </div>
		    </header>
		         <!----start-top-nav---->
		</div>
		   <!-----start-header---->
	</div>
</div>
	<script type="text/javascript"  src="js/menu.js"></script>
</div>

<!--Body-->
<div class="chu" >
	<span >${book.PUtitle}</span>
	<hr>	
</div>
	<div class="row display-font">
		<div class="col-md-5">
    	    <span><b>Author:</b></span>
    	    <c:if test="${!empty book.persons}">
        		<c:forEach items="${book.persons}" var="s">
            		<a href="${s.purl}">${s.pname}</a>
            	</c:forEach>
        	</c:if>			
	    </div>	
	    <div class="col-md-1 col-md-offset-4">
	    	<button type="button" class="btn btn-default btn-block"><a href="${book.PUbuyUrl }">Buy</a></button>	
	    </div>
	</div>
	<div class="row display-font">
		<div class="col-md-5">
			<span>Publisher:</span>
			<span>Computational Intelligence</span>		
		</div>	
	</div>
	<div class="row display-font">		
		<div class="col-md-5">
			<span>Time:</span>
			<span>${book.PUdate}</span>			
		</div>
	</div>	
	<div class="row display-font">		
		<div class="col-md-5">
			<span>Keyword:</span>
			<span>${book.PUkeyword}</span>			
		</div>
	</div>
	<br/>	

</body>
</html>
<%@page import="beans.Season"%>
<%@page import="beans.Anime"%>
<%@page import="java.util.List"%>
<%@page import="beans.Episode"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1" />
<link rel="stylesheet" href="/Css/" />
<script src="/Js/jquery-2.1.3.min.js"></script>
<script src="/Js/jquery-ui.min.js"></script>
<script src="/Js/classes-ajax.js"></script>
<style>


/***************************************************/
body {
	background: #111;
	font-family: palatino linotype;
}

#infoEp {
	color: white;
	margin-left: 200px;
}

#infoEp h3 {
	display: inline-block;
	vertical-align: baseline;
}

#infoEp #h3ep {
	margin-top: -5px;
}

#infoEp #imgfav {
	width: 30px;
	margin-left: 10px;
}

#infoEp h3:nth-child(2) {
	font-size: 1em;
}

#secP {
	margin: 10px auto;
}

#secP #videoy {
	width: 700;
	height: 380px;
	margin-left: 200px;
	border: 3px solid black;
}

#secP #videoy, #episodes {
	display: inline-block;
	vertical-align: middle;
}

#episodes ul {
	list-style: none;
	margin: 0;
	padding: 0;
	color: white;
	background: rgba(10, 10, 10, 0.8);
	border: 3px solid rgba(10, 10, 10, 0.8);
	width: 250px;
	height: 380px;
	margin-left: 20px;
	overflow: scroll;
	overflow-x: hidden;
	border-radius: 5px;
}

#episodes li {
	text-align: center;
	border-bottom: 1px #111 solid;
	margin: 0;
	padding: 4px 0;
	vartical-align: middle;
	color: #008563;
}

#episodes li p {
	padding: 0;
	margin: 1px;
	font-size: 0.8em;
	opacity: 0.8;
}

#episodes li a {
	text-decoration: none;
	color: white;
	opacity: 0.8;
}

#episodes li a:hover {
	opacity: 1;
}

#infoEp #h31 {
	text-transform: capitalize;
	font-size: 1.5em;
}

#infoEp #h31+h3 {
	text-indent: 10px;
	text-weight: normal;
}

#comments {
	background: rgba(10, 10, 10, 0.8);
	width: 708;
	margin-left: 200px;
	padding-bottom: 30px;
	display: none;
}

#hcomm p, img {
	color: white;
	display: inline-block;
	vertical-align: middle;
}

#hcomm {
	border-radius: 5px;
	background: rgba(10, 10, 10, 0.8);
	margin-left: 200px;
	width: 708;
	border-bottom: 3px solid #111;
	padding-top: 5px;
	padding-bottom: 5px;
}

#hcomm img {
	margin-left: 550px;
}

#hcomm img:hover {
	cursor: pointer;
}

#hcomm p {
	padding-left: 20px;
	opacity: 0.8;
}




.CommentHeader{
margin-top:0;
padding-top:2%;
width:100%;
}

.CommentHeader #anonym,.CommentHeader a,.CommentHeader span{
vertical-align:top;
}
.CommentHeader #anonym{
margin-left:47%;
}
.CommentHeader #anonym {
/* 	position: relative; */
/* 	top: 0px; */
/* 	left: 400px; */
}

.CommentHeader #anonym:hover {
	cursor: pointer;
}


.CommentHeader a{
	color: white;
	font-size: 1em;
	text-decoration:none;
	}
.CommentHeader a.login {
margin-left: 4%;
}
.CommentHeader a.homePage {
margin-left: 4%;
}
.CommentHeader span {
/* 	position: relative; */
/* 	top: 0px; */
/* 	left: 20px; */
	color: white;
	font-size: 1em;
}

.CommentHeader #userImage,
.CommentHeader input[type="textarea"],
.CommentHeader input[type="button"]{
    margin-top:2%;
    vertical-align:middle;
}
.CommentHeader #userImage {
/* 	position: relative; */
/* 	top: 65px; */
	width: 50px;
	height: 50px;
	border-radius: 5px;
}
.CommentHeader input[type="textarea"] {

	width: 520px;
	height: 50px;
	font-size: 1.2em;
	border-radius: 5px;
	color: #008563;
}

.CommentHeader input[type="button"] {
/* 	margin-left: 640px; */
/* 	margin-top: -35px; */

	padding:12px 20px;
	border: 1px solid white;
	border-radius: 0 0 2px 2px;
	background:
		URL('https://cdn3.iconfinder.com/data/icons/google-material-design-icons/48/ic_keyboard_arrow_right_48px-48.png')
		no-repeat center center white;
	color: black;
	border-radius: 5px;
}

.CommentHeader input[type="button"]:hover {
	cursor: pointer;
}

.CommentHeader hr {
	margin-top: 30px;
	margin-left:0;
	border: 2px solid #111;
	width: 85%;
}
.Comment{
 margin:0 5% ;
    color:white;
	border-bottom: 1px solid #008563;
}
.Comment img,
.Comment div{
vertical-align:top;
display:inline-block;

    margin:2% 0;
}
.Comment img {
	float: left;
	width: 10%;
	height: 10%;
}

.Comment img  {
	min-height: 70px;
	max-height: 500px;
	overflow: hidden;
	color: white;
}
.Comment  div{
	width:85% ;
	}
.Comment  div p {
	margin-left: 30px;
	width:100%;
}

.Comment .leftSpan,
.Comment .rightSpan{
display:inline;

	margin-left:3%;
}
.Comment .leftSpan {
	color: #008563;
}

.Comment .rightSpan {
	opacity: 0.8;
	font-size: 0.8em;
}
</style>
</head>
<jsp:useBean  id="tools" class="Service.Tools" />
<body>
	<div id="infoEp">

 <c:if test="${episode ne null}">
		<h3 id="h31">${requestScope.anime.name}</h3>
		<h3>Season ${requestScope.season.season}</h3>
		<br>
		<h3 id="h3ep">Episode ${requestScope.episode.episode}&nbsp; :
			&nbsp; &nbsp; &nbsp;${requestScope.episode.name}</h3>
			</c:if>
			
			 <c:if test="${movie ne null}">
		<h3 id="h31">${requestScope.anime.name}</h3>
<%-- 		<h3>Season ${requestScope.season.season}</h3> --%>
		<br>
		<h3 id="h3ep">Movie ${requestScope.movie.movie}&nbsp; :
			&nbsp; &nbsp; &nbsp;${requestScope.movie.name}</h3>
			</c:if>
	</div>
	<c:set var="found" value="false" />
	<section id="secP">
	 <c:if test="${episode ne null}">
	 <iframe id="videoy"
		src="${requestScope.episode.link}" frameborder="0"
		allowfullscreen></iframe>
		</c:if>
		 <c:if test="${movie ne null}">
		  <iframe id="videoy"
		src="${requestScope.movie.link}" frameborder="0"
		allowfullscreen></iframe></c:if>
		 <aside id="episodes">

	<ul>
		<c:forEach var="episode" items="${allEpisodes}">
			<c:if test="${episode.episode > requestScope.episode.episode}">
				<c:set var="link"
					value="/watch/${anime.name.replace(' ','_')}/season_${season.season}/episode_${episode.episode}"></c:set>
				<li><a href="${link}">Episode ${episode.episode}</a>
					<p>${anime.name}</p></li>
				<c:set var="found" value="true" />
			</c:if>

		</c:forEach>
		<c:if test="${!found}">
			<li><a href="#"> No Other Episodes </a>
				<p>${anime.name}</p></li>
		</c:if>
	</ul>


	</aside> </section>


	<div id="hcomm">
		<p>Comments</p>
		<img
			src="https://cdn3.iconfinder.com/data/icons/google-material-design-icons/48/ic_keyboard_arrow_down_48px-32.png"
			id="imgcom" />
	</div>
	
	<section id="comments"> 
	
	
	<!-- ,
.CommentHeader a.login -->
	
	<figure class="CommentHeader" id="${episode.episodeid}">
	<span>${comments.size()} Comments</span> <a href="/" class="homePage">OTAKUS</a>
	<img
		src="http://icons.iconarchive.com/icons/hopstarter/malware/32/Notification-icon.png"
		id="anonym" />
	<c:if test="${user==null}">
	<a href="/signin" class="login">Login</a> 
	</c:if>
	<br/>
	 
		<img
		src="${user.imageLink}"
		id="userImage" /> <input type="textarea" placeholder="Join the discussion" rows="2"/>
	
	<input type="button"  onclick="comment()"/>
	
	<hr>
	</figure>
	
	
	
	
	<c:choose >
	<c:when test="${comments.size() ne 0}">
	<c:forEach var="comment" items="${comments}">
	<article class="Comment"> <img src="${comment.user.imageLink}"  />

	<div id="${comment.id}">
		<span class="leftSpan">${comment.user.userName}</span><span class="rightSpan">${tools.dateToString(comment.time)}</span>
		<p>${comment.comment}</p>
	</div>
	</article>
	
	</c:forEach>
	</c:when>
	<c:otherwise><h5 class="NoResult">No Comment be the first and put your comment here</h5> 
	</c:otherwise>
	</c:choose>
	
	
	<!-- <article> <img src="/Image/Avatars/002.png" id="img3" />

	<div id="infocom">
		<span>Mahdi</span><span>5 Day ago</span>
		<p>dragon ball is the best</p>
	</div>
	</article> <article> <img src="/Image/Avatars/003.png" id="img3" />

	<div id="infocom">
		<span>Anas</span><span>7 Day ago</span>
		<p>i hate tokyo goul</p>
	</div>
	</article> -->  </section>

</body>
<script>
	$(document).ready(function() {
		$("#imgcom").click(function() {
			$("#comments").slideToggle();
			$('html, body').animate({
				scrollTop : 100
			}, 800);
		});
    
	});
	 function comment(){
		 ajaxConnection("/AddComment?comment="+$(".CommentHeader input[type='textarea']").val()+"&episode="+$(".CommentHeader").attr("id")+"&op=true", "post");

		 $('.CommentHeader').after("<article class='Comment'> <img src='"+$('#userImage').attr('src')+"'  /> <div id='3'> <span class='leftSpan'>${user.userName}</span><span class='rightSpan'>0 sec</span> <p>"+$('.CommentHeader  input[type="textarea"]').val()+"</p></div></article>");	 
	 } 
 
</script>
</html>
<%@page import="beans.Visitor"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>


<html>
<head>
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script src="/Js/classes-ajax.js"></script>
<style>
#profile h1,#profile h3,#profile h4,#profile h5{
  display:inline-block;
   margin:0;
  padding:0;
}

#profile h1{
  font-size:35px;
  margin-left:20px;
  text-transform:capitalize;
  font-weight:normal;
}

#profile h4{
    font-size:18px;
  font-variant:small-caps;
  font-weight:normal;
    margin-left:40px;
}
#profile img{
  width:32px;
  padding:0;
  margin:0;
}
#profile img,#profile h5{
  vertical-align:bottom;
}
#profile,#photoProfile{
display:inline-Block;
vertical-align:middle;}
#profile{
  width:55%;
  height:120px;
  margin-bottom:30px;
  margin-left:170px;
  padding-left:30px;
}
#photoProfile{
width:160px;
height:150px;
border-radius:150px;
margin-left:70px;
margin-bottom:30px;
box-shadow:0 0 75px #008563 inset;
}

#photoProfile + img{
background:rgba(0,0,0,.5);
position:relative;
top:57px;
right:164px;
padding:60px 64px;
border-radius:80px;
visibility:hidden;
cursor:pointer;
}
#photoProfile:hover + img{
visibility:visible;
}
#photoProfile + img:hover{
visibility:visible;}
/*STATS--------------------------------------
*/
#Stats{
  width:80%;
  margin:0px auto;
  margin-bottom:30px;
  border-top:none;
}
#Stats a{
text-decoration:none;
}
#statsArticle{
width:80%;
margin:0px auto;
margin-bottom:5px;
background: rgba(0,0,0,.8);
border-bottom:none;
  }

#statsArticle span{
  padding:15px 0px 10px 15px;
  font-family:Label;
  font-size:14px;
}
#statsArticle img{
  width:24px;
  height:24px;
  float:right;
  padding:8px 10px;
}
#statsArticle span,#statsArticle img{
  display:inline-block;
}

#Stats figure {
  display:inline-block;
  width:15%;
  height:150px;
}
#Stats figure h6{
  padding:0;
  margin:5px 0;
  text-align:center;
  font-variant:small-caps;
  font-size:18px;
  font-weight:normal;
  text-transform:lowercase;
}

#Stats figure p{
  font-size:50px;
  text-align:center;
  padding:30px 0;
  margin:0;
}
/*UploadImgProfile--------------------------
*/

#uploadImg{
border-left:2px black solid;
padding-left:10px;
display:none;
width:330px;
z-index:1;
position:absolute;
top:100px;
left:660px;
}
#uploadImg .imgs{
padding:10px;
box-shadow:0 0 40px #008563 inset;
border-radius:35px;
}

#uploadImg #avatar {
				width:310px;
				height:80px;
				overflow:hidden;
				padding:2px 5px;
			}
			
#uploadImg #avatar figure img{
				width:60px;
			    margin:0;
				padding: 0;
				box-shadow:inset 0 0 20px rgba(0,0,0,.7);
			}
#uploadImg #avatar figure img:hover{
				cursor:pointer;
			}
			
#uploadImg .arrow{
			  width:16px;
			  height:16px;
			  margin:0;
			  padding:0;
			  position:relative;
			  bottom:40px;
			  cursor:pointer;	
			  opacity:.6;
			}
#uploadImg .arrow:hover{
			  opacity:1;
			}
#uploadImg #leftArrow{
			  left:0%;
			}
#uploadImg #rightArrow{
			left:285px;
			}
#uploadImg #avatar figure {
				width: 1020px;
				height:300px;
				margin: 0;
				padding: 0;
				padding-top:20px;
			}
			
#uploadImg #upload,#uploadImg #link{
margin-top:40px;
display:none;
width:90%;
}
#uploadImg #link{
color:#008563;
height:28px;
background:rgba(0,0,0,.7);
border:1px solid #008563;
border-radius:3px;
}
/*RECS--------------------------------------
*/
#rec,#watch{
  width:76%;
}
#rec figure,#watch figure{
  margin:0 auto;
}
#rec figure p,#watch figure p{
  margin-top:5px; 
  padding:5px 0;
} 

#rec div,#watch div{
  padding-left:11px;
  width:100%;
}

/********************************************/
#eps {
  display:none;
  width:100%;
  height:1000px;
  background:rgba(0,0,0,.9);
  position:fixed;
  top:0;
  left:0;
  z-index:2;
}
#eps header{
  font-family:Palatino Linotype;
  width:90%;
  margin:auto;
  padding:7%;
}
#eps header img,#eps header aside{
  display:inline-block;
  vertical-align:middle;
}
#eps header img{
  width:30%;
  height:230px;
  border-radius:7px;
}
#eps header aside h2,#eps header aside h5,#eps header aside h3{
  padding:0;
  margin:0;
}
#eps header aside h2{
  font-size:45px;
  padding-left:12px;
}
#eps header aside h3{
  font-size:18px;
  padding-left:25px;
}
#eps header aside h5{
  font-size:16px;
  padding:6px 3px;
}

#eps footer{
   width:76%;
   
  overflow:hidden;
  margin:auto;
}
#eps div{
  width:6000px;
  padding:0;
  margin:0;
}
#eps figure{
  height:130px;
}
#eps figure img{
   border-radius:7px;
}
#eps  figure p{
height:20px;
position:relative;
bottom:20px;
background : rgba(0,0,0,.7);
padding:0;
margin:0;
}
#eps .closeImg{
display:inline-block;
width:18px;
height:18px;
opacity:.5;
float:right;
}
#eps .closeImg:hover{
cursor:pointer;	
opacity:.95;
}
.secRec{
 margin:0px auto;
 padding:0px;
 margin-bottom:30px;
 width:98%;
 font-family:Label;
 font-size:11px;
}


.secRec  figure {
height:160px;
  margin:0 2px;
  padding:0;
  cursor:pointer;	
}
.secRec  figure img{
height:130px;
padding:0;
margin:0;
}
.secRec  figure p{
  padding:10px 2px;
}
.secRec  figure img, .secRec figure{
  width:250px;
  display:inline-block;
}


body{
  color:white;
  background:rgb(10,10,10);
}
/*CLASS--------------------------------------
*/
.arrows{
  width:32px;
  height:32px;
  margin:0;
  padding:0;
  position:relative;
  bottom:80px;
  cursor:pointer;	
  opacity:.7;
}
.arrows:hover{
  opacity:1;
}
#leftArrow{
  left:0%;
}
#rightArrow{
  left:93.5%;
}

.arrows,.secRec figure{

  vertical-align:middle;
}
.fstLbl,.sndLbl{
  display:inline-block;
}
.sndLbl{
  width:40%;
  text-align:right;
}
.fstLbl{
  text-align:left;
   width:60%;
}

.blocks{
border: 1px solid #101010;
border-radius:2px;
background: rgba(0,0,0,.8);

}
.blocks2{
border: 1px solid rgba(0,0,0,.8);
border-radius:3px;
background: #101010;

}
s
hr {
border: solid #101010 2px;
margin:0px;
padding:0px;
}
.hr {
border: solid rgba(0,0,0,.8) 2px;
margin:0px;
padding:0px;
}
.recH4,.recH3{
  width:80%;
  margin:10px 20px;
  font-size:18px;
  font-weight:normal;
}
.recH4{
  width:100%;
  font-size:13px;
  margin:0;
  padding:20px 0px 10px 15px;
 
}
.recH3{
  text-transform:capitalize;
  width:100%;
  border-bottom:solid rgba(255,255,255,.7) 1px;
  margin:8px auto;
  padding:0;
}

/**************IMPORT****************/
@font-face{
  font-family:Label;
  src:url('Fonts/Aspex.ttf');
}
a{
color:white;
}
</style>
</head>

    <jsp:useBean id="favoriteImpl" class="Service.FavoriteImpl"/>
    <jsp:useBean id="animeImpl" class="Service.AnimeImpl"/>
    <jsp:useBean id="episodeImpl" class="Service.EpisodeImpl"/>
<body>
  <header id="profile">
<h3>WELCOME</h3><h1>${sessionScope.user.userName}</h1><br>
  <h4 style="margin-left:130px;">${sessionScope.user.firstName}</h4><h4 style="margin-right:50px;">${sessionScope.user.lastName}</h4><h5><a href="edit"><img src="/Image/edit.png" alt="">edit</a></h5>
  </header>
   <form id="uploadImg" action="/UploadFile" method="post" enctype="multipart/form-data">
   
		
      <img class="imgs" src="/Image/link.png" id="linkNav"/> <img id="uploadNav" class="imgs" src="/Image/upload.png"/> <img id="avatarNav" class="imgs" src="/Image/anonym.png"/>
    
      <div id="avatar">
								<figure>
								<img src="/Image/Avatars/001.png" alt="avatar"/>
								<img src="/Image/Avatars/002.png" alt="avatar"/>
								<img src="/Image/Avatars/003.png" alt="avatar"/>
								<img src="/Image/Avatars/004.png" alt="avatar"/>
								<img src="/Image/Avatars/005.png" alt="avatar"/>
								<img src="/Image/Avatars/006.png" alt="avatar"/>
								<img src="/Image/Avatars/007.png" alt="avatar"/>
								<img src="/Image/Avatars/008.png" alt="avatar"/>
								<img src="/Image/Avatars/009.png" alt="avatar"/>
								<img src="/Image/Avatars/010.png" alt="avatar"/>
								<img src="/Image/Avatars/011.png" alt="avatar"/>
								<img src="/Image/Avatars/0012.png" alt="avatar"/>
								<img src="/Image/Avatars/0013.png" alt="avatar"/>
								<img src="/Image/Avatars/0014.png" alt="avatar"/>
								<img src="/Image/Avatars/0015.png" alt="avatar"/>
								</figure>				
		</div>
		
		<img  class="arrow" id="leftArrow" src="Image/left-slider.png" alt="" onclick="slideright()" >
		 <img class="arrow" id="rightArrow" src="Image/right-slider.png" alt="" onclick="slideleft()">
		 <input type="file" name="fileUpload" id="upload">
		<input type="text" name="link" id="link" placeholder="Image Link">
		<input type="hidden" name="avatar" id="avatarImg" value="/Image/Avatars/007.png"/>
 </form>
  <img id="photoProfile"src="${sessionScope.user.imageLink}"/>
  <img src="/Image/camera.png"/>

  
    <article id="statsArticle" class="blocks">
        <span >Stats</span> <img src="/Image/upDown.png" alt="">
      </article>
      
  
  <section id="Stats" class="blocks">
    <center>
    <figure class="blocks2">
    <a href="/search?action=Favorite">
      <h6>Favorite</h6>
      <hr class="hr">
      <p>${favoriteImpl.getAll(user.userName).size()}</p>
      </a>
    </figure>
    <figure class="blocks2">
    <a href="/search?action=Watching">
      <h6>Watching</h6>
      <hr class="hr">
      <p>${animeImpl.getWatching(user.userName).size()}</p>
       </a>
    </figure>
    <figure class="blocks2">
    <a href="/search?action=Queued">
      <h6>Queued</h6>
      <hr class="hr">
      <p>${animeImpl.getQueued(user.userName).size()}</p>
       </a>
    </figure>
    <figure class="blocks2">
    <a href="/search?action=Watched">
      <h6>Watched</h6>
      <hr class="hr">
      <p>${animeImpl.getWatched(user.userName).size()}</p>
       </a>
    </figure>
    </center>
  </section>
  
     
<!----------------------->
  
  <section id="eps" class="secRec">
    
    <header>
<!--       <img src="http://www.app.steparu.com/images/h/hunterxhunter/hunterxhunter1.jpg" alt=""> -->
<!--       <aside> -->
<!--         <h5>Seasons : 5</h5> -->
<!--       <h5>Statue : Ongoing</h5> -->
<!--       <h2>Hunter x Hunter</h2> -->
<!--         <h3>HXH</h3> -->
<!--       <h5>Episodes : 5</h5> -->
<!--         <h5>Genre : "Action" , "Adventure"</h5> -->
<!--         </aside> -->
        <img class="closeImg"src="/Image/closeDialog.png" alt="close">
    </header>
    
    <footer>
  <h3 class="recH3">Last Episodes</h3>
    
     <div class="Episodes">
    <!-- //# EPIODES-->
      </div>
    <img class="arrows" id="leftArrow" src="http://www.lgetg.fr/style-site/img/flech-left-img.png" alt="">
      
      <img class="arrows" id="rightArrow" src="http://www.lgetg.fr/style-site/img/flech-right-img.png" alt="">
    </footer>
      </section>
  
   
  
  <!-------------------------->
  
  
  <section id="watch" class="secRec blocks">
      <h4 class="recH4">To Watch</h4>
    <hr/>
    <div>
    <c:forEach var="anime" items="${animeImpl.waiting(user.userName)}">
    <figure id="${anime.name}">
      
			  <img  src="${anime.imageLink}" alt="">
			   
			  <p class="fstLbl">${anime.name}</p><p class="sndLbl">episode ${episodeImpl.getLast(anime.animeId).episode}</p>
		</figure>
   </c:forEach>
    </div>
 
      </section>
      
      <section id="rec" class="secRec blocks">
      <h4 class="recH4">Recommendation</h4>
    <hr/>
    <div>
    <c:forEach var="anime" items="${animeImpl.getRecommanded(user.userName)}">
    <figure><a href="/anime/${anime.name.replace(' ','_')}">
      
			  <img  src="${anime.imageLink}" alt="">
			   
			  <p class="fstLbl">${anime.name}</p><p class="sndLbl">episode ${episodeImpl.getLast(anime.animeId).episode}</p>
		</a>
		</figure>
   </c:forEach>
    </div>
 
      </section>
  
  
  
<script>
var place=1,total=0,slideBoolean=false; 
var a=$(this).parent().children('footer div');
//Stats Frame
$('#statsArticle').click(function(){

	$('#Stats').slideToggle();
if (!slideBoolean)
	{
	$(this).css('margin-bottom','30px');
	slideBoolean=true;
	}
else{
	$(this).css('margin-bottom','5px');
	slideBoolean=false;
}
});

//1st FRAME
$('#watch figure').click(function(){
	var animeName=$(this).attr("id");
	  var request = new XMLHttpRequest();
	  request.onreadystatechange = function() {
	    if (request.readyState == 4 && request.status == 200) {

			   var ajax= document.getElementById('otksajax');
			   ajax.textContent="";
			   ajax.appendChild(document.createTextNode(request.responseText));
			  
              total=anime.seasons[anime.seasons.length-1].episodes.length;
              
				  $(".Episodes").text("");

				  
				  $("#eps header").text("");
				  var type="";
				  var i=0;
				  for (;i<anime.genre.length;i++){
					  type+="\""+anime.genre[i].type+"\"";
					  if (i<anime.genre.length-1)
                          type+=" , ";
				  }
				  var alias="";
				  for (i=0;i<anime.alias.length;i++){
					  alias+=anime.alias[i].alias;
					  if (i<anime.alias.length-1)
                          alias+=" , ";
				  }
				  var episodes=0;
				  anime.seasons.forEach(function(season,index,table){
					  season.episodes.forEach(function(episode,index,table){
						  episodes++;
					  });
				  });
				   $("#eps header").append(' <img src="'+anime.imagelink+'" alt=""> <aside><h5>Seasons : '+anime.seasons.length+'</h5><h5>Statue : '+anime.status+'</h5> <h2>'+anime.name+'</h2> <h3>'+alias+'</h3> <h5>Episodes : '+episodes+'</h5><h5>Genre : '+type+'</h5> </aside> <img class="closeImg"src="/Image/closeDialog.png" onclick="closeViewer()" alt="close">');
				  
				   $(".Episodes").text("");
				   
				   
				   anime.seasons[anime.seasons.length-1].episodes.forEach(function(episode,index,table){
					
	 				   $(".Episodes").append('<figure> <a href="watch/'+animeName.replace(/ /g,"_")+'/episode_'+episode.episode+'"><img  src="'+episode.imagelink+'" alt=""><p class="fstLbl">Episode '+episode.episode+'</p><p class="sndLbl">'+episode.time+'</p></a></figure>');
	 			   });
				  
	    }
	  };
	  request.open("GET", "/Animes?anime="+escape(animeName), true);
	  request.send();
	  

 $('#eps').css('display','inline');
});
//SECOND FRAME 
function closeViewer(){
 $('#eps').css('display','none');
}


  if (total<4){
  document.querySelector('#eps #leftArrow').style.display='none';
  document.querySelector('#eps #rightArrow').style.display='none'; 
}
  var ss=258;
$('#eps #leftArrow').click(function(){

   var a=$(this).parent().children('#eps footer div');
 
if (place<total-3){

  place++;

  a.animate({'marginLeft':'-='+ss+'px'},1000);
}
});


$('#eps #rightArrow').click(function(){
    var a=$(this).parent().children('#eps div');

  if (place>1){
    place--;

  a.animate({
  
 'marginLeft':'+='+ss+'px'

},1000);
  }
});
//DIV ID AUTO
</script>

	<script>
	var $sl=$("#uploadImg #avatar figure");
	var s;
	
		var length=$("#uploadImg #avatar figure img").length;
		var c=1;
		function slideleft(){
			
			if(c<length-5){
				c++;
			$sl.animate({'margin-left' : '-='+s+'px'},100);
			}
		}
		function slideright(){
			if(c>1){
				c--;
			$sl.animate({'margin-left' : '+='+s+'px'},100);
			}
		}
		
		$('#photoProfile  + img').click(function (){

if ($('#uploadImg').css('display')!='none'){
var formElement = document.querySelector("#uploadImg");
var request = new XMLHttpRequest();
request.open("POST", "/UploadFile");
request.send(new FormData(formElement));

if ($("#uploadImg #upload").val()!=""){
 //   open(location.href,"_self");
     }
else if ($("#uploadImg #link").val()!=""){
    $(".Profile").attr('src',$("#uploadImg #link").val());
$("#photoProfile").attr('src',$("#uploadImg #link").val());}
else
    $(".Profile").attr('src',$("#photoProfile").attr('src'));

		}

alert($('#avatarImg').val());
s=document.querySelector('#uploadImg #avatar figure img').offsetWidth+=4.5;
$('#uploadImg').fadeToggle();
		});
		$("#uploadImg #avatar figure img").click(function (){
			$("#uploadImg #avatar figure img").css('box-shadow','inset 0 0 20px rgba(0,0,0,.7)');
			$(this).css('box-shadow','0 0 25px  #008563 inset');
		  $('#photoProfile').attr('src',$(this).attr('src'));
		  $('#avatarImg').val($(this).attr('src'));
		});
		$('#avatarNav').click(function(){
			$("#uploadImg #avatar").css('display','block');
			$("#uploadImg  .arrow").css('display','inline');
			$("#uploadImg #upload").css('display','none');
			$("#uploadImg #link").css('display','none');
		});
		$('#linkNav').click(function(){
			$("#uploadImg #avatar").css('display','none');
			$("#uploadImg  .arrow").css('display','none');
			$("#uploadImg #upload").css('display','none');
			$("#uploadImg #link").css('display','inline');
		});
		$('#uploadNav').click(function(){
			$("#uploadImg #avatar").css('display','none');
			$("#uploadImg  .arrow").css('display','none');
			$("#uploadImg #upload").css('display','inline');
			$("#uploadImg #link").css('display','none');
		});
		</script>
</body>
</html>
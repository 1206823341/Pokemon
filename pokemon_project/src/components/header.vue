<template>
    <div>
        <div id="topdiv">
            <router-link to="/index" class="top">
                <img src="image/header/pokemon.png" alt="图片未找到" height="120px" width="200rem"></router-link>
            <a href="#javascript:;" class="top" id="top1">
                <img src="image/header/pokemon_ball.png" alt="图片未找到" height="20rem" width="20rem">电视动画系列
            </a>
            <a href="#" class="top" id="top2">
                <img src="image/header/pokemon_ball.png" alt="图片未找到" height="20rem" width="20rem">商品
            </a>
            <a href="#" class="top" id="top3">
                <img src="image/header/pokemon_ball.png" alt="图片未找到" height="20rem" width="20rem">电影
            </a>
            <router-link  to="/shopping" class="top" id="top4">
                <img src="image/header/pokemon_ball.png" alt="图片未找到" height="20rem" width="20rem">游戏
            </router-link>
            <a href="#" class="top" id="top5">
                <img src="image/header/pokemon_ball.png" alt="图片未找到" height="20rem" width="20rem">关于我们
            </a>
            <router-link  to="/login" id="top6">
                登录
            </router-link>
	    </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
        }
    }
}
</script>
<style scoped>
    *{margin:0;padding:0}
a{
	text-decoration:none;
}
#topdiv{
	width:100%;
	height:120px;
	margin:0 auto;
	display:flex;
}
#topdiv::after{
	content:"";
	display:block;
	clear:both;
}
.top{
	width:282px;
	height:120px;
	float:left;
	line-height:120px;
	text-align:center;
	color:#000;
}
.top:link{
	color:#000;
}
.top:visited{
	color:black;
}
.top:hover{
	color:#fff;
}
.topfont2:hover{
	color:#fff;
}
#topfont3{
	float:left;
	color:#5e5e5e;
	font-size:20px;
	margin-top:22%;
	margin-left:24%;
	text-align:center;
}
#topfont3:hover{
	color:#fff;
}
#top1{
	border-top:4px solid #03a9f4;
	transition: all 0.4s linear;
}
#top1:hover{
	background-color:#03a9f4;
	border-radius:10px;
}
#top2{
	border-top:4px solid #ff9600;
    transition: all 0.4s linear;
}
#top2:hover{
	background-color:#ff9600;
	border-radius:10px;
}
#top3{
	border-top:4px solid #4caf50;
    transition: all 0.4s linear;
}
#top3:hover{
	background-color:#4caf50;
	border-radius:10px;
}
#top4{
	border-top:4px solid #f44336;
    transition: all 0.4s linear;
}
#top4:hover{
	background-color:#f44336;
	border-radius:10px;
}
#top5{
	border-top:4px solid #3f51b5;
    transition: all 0.4s linear;
}
#top5:hover{
	background-color:#3f51b5;
	border-radius:10px;
}
#top6{
	background:url(../../public/image/header/ball3.png) no-repeat center;
	background-size:60%;
	width:200px;
	height:120px;
	float:left;
	border-radius:80px;
	color:transparent;
	line-height:120px;
	text-align:center;
	font-size:0px;
	font-family:华文琥珀;
	transition: all 0.2s ease-in-out;	
}
#top6:hover{
	background:url(../../public/image/header/openball.png) no-repeat center;
	background-size:60%;
	font-family:华文琥珀;
	color:#1adaea;
	text-shadow: 2px 2px 4px black;
}

@media screen and (min-width:576px){

	.top{
		font-size:12px;
	}
	#top6:hover{
		font-size:12px;
	}
}
@media screen and (min-width:767px){
	.top{
		font-size:15px;
	}
	#top6:hover{
		font-size:15px;
	}
}
@media screen and (min-width:992px){
	.top{
		font-size:30px;
	}
	#top6:hover{
		font-size:30px;
	}
}
</style>

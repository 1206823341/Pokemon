<template>
    <div>
        <div class="footer">
			<div class="footer_top">
					<ul>
					  <li class="title">官方账号</li>
						<li><a href="#"><img src="image/footer/facebook.png" alt="图片找不到" width="66px" height="66px"></a></li>
						<li><a href="#"><img src="image/footer/youtube.png" alt="	图片找不到" width="66px" height="66px"></a></li>
					</ul>
					<a href="#"><img src="image/footer/switch.png" alt=""></a>
			</div>
			<div id="footer_bottom">
				<div id="footer_bottom_1">
					<ul>
						<li><a href="#">精灵宝可梦是什么？</a></li>
						<li><a href="#">使用条款</a></li>
						<li><a href="#">网站地图</a></li>
					</ul>
				</div>
			</div>
			<div id="footer_bottom_2">
				<small>
					©2019 Pokémon. ©1995 - 2019 Nintendo/Creatures Inc./GAME FREAK inc.<br>
					©1997 Nintendo, Creatures, GAME FREAK, TV Tokyo, ShoPro, JR Kikaku. ©Pokémon. TM and ® are trademarks of Nintendo.
				</small>
			</div>
		</div>
    </div>
</template>
<script>
export default {
    data(){
        return{}
    }
}
</script>
<style scoped>
    *{padding:0;margin:0;}
a{text-decoration:none;}
/*一楼*/
.footer_1::after{
	content:"";
	display:block;
	clear:both;
}
.footer_top{
	max-width:600px;
	height:66px;
	margin:0 auto;
	text-align:center;
	padding:20px 0;
	display: flex;
}
.footer_top ul{
	list-style:none;
}
.footer_top ul li{
	float:left;
	padding:0 3px;
}
.title{
	float:left;
	margin-right:10px;
	color:#505050;
	font-size:18px;
	line-height:63px;	
}	

/*二楼*/
#footer_bottom{
	height:22px;
	padding:30px 0;
	background:#000;
	display: flex;
}
#footer_bottom_1{
	height:17px;
	width:1320px;
	line-height:76px;
	margin:0 auto;
}
#footer_bottom_1 ul{
	height:17px;
	display:flex;
	list-style:none;
	float:left;
}
#footer_bottom_1 ul li{
	line-height:17px;
	padding:0 5px;
}
#footer_bottom_1 ul li a{
	color:#fff;
}
#footer_bottom_1 ul li:nth-child(2) a{
	border-left:1px solid #fff;
	padding-left:10px
}
#footer_bottom_1 ul li:nth-child(3) a{
	border-left:1px solid #fff;
	padding-left:10px
}
#footer_bottom_2{
	display: flex;
	width:1320px;
	padding-top:15px;
	margin:0 auto;
}
#footer_bottom_2 small{
	color:#888;
}
</style>

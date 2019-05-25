<template>
  <div>
    <my-header></my-header>
    <!-- 轮播图-->
    <div id="rider" class="carousel" data-ride="carousel">
      <div class="carousel-inner">
        <div v-for="(item,i) in slide" :key="i" class="carousel-item" :class="{active:i==ins}">
          <a href="#">
            <img class="sliderimg" :src="item.slide_img" alt>
          </a>
        </div>
      </div>
      <!-- 轮播图左右箭头-->
      <a data-slide="prev" class="carousel-control-prev" href="#rider">
        <span class="carousel-control-prev-icon"></span>
      </a>
      <a data-slide="next" class="carousel-control-next" href="#rider">
        <span class="carousel-control-next-icon"></span>
      </a> -->
      <!-- 轮播指示器-->
      <ul class="carousel-indicators">
        <li data-target="#rider" data-slide-to="0" class="active"></li>
        <li data-target="#rider" data-slide-to="1"></li>
        <li data-target="#rider" data-slide-to="2"></li>
        <li data-target="#rider" data-slide-to="3"></li>
      </ul>
    </div>
    <!-- 第一行图片-->
    <div class="row m-auto pt-3">
      <div class="col-lg-3">
        <div class="text-white bg-danger">
          <img class="w-9" src="image/header/pokemon_ball.png" alt>游戏
        </div>
        <div>
          <div class="small_img_borderbottom">
            <router-link to="/gameshopping">
              <img class="w-100" src="image/index/taikenban_tc-thumb-624xauto-13153.jpg" alt>
            </router-link>
          </div>
          <p class="textheight_12 m-0">
            <a href="#">【體驗版】『精靈寶可夢 Let's Go！皮卡丘／Let's Go！伊布』在Nintendo eShop開始發佈！</a>
          </p>
        </div>
      </div>
      <div class="col-lg-3">
        <div class="text-white bg-danger">
          <img class="w-9" src="image/header/pokemon_ball.png" alt>游戏
        </div>
        <div>
          <div class="small_img_borderbottom">
            <router-link to="/gameshopping">
              <img
                class="w-100"
                src="image/index/main_pikavee_20181221-thumb-624xauto-13059.png"
                alt
              >
            </router-link>
          </div>
          <p class="textheight_12 m-0">
            <a href="#">『精靈寶可夢 Let's Go！皮卡丘／Let's Go！伊布』更新資料（Ver.1.0.1）發佈公告</a>
          </p>
        </div>
      </div>
      <div class="col-lg-3">
        <div class="text-white bg-primary">
          <img class="w-9" src="image/header/pokemon_ball.png" alt>电视动画系列
        </div>
        <div>
          <div class="small_img_borderbottom_pr">
            <router-link to="/gameshopping">
              <img
                class="w-100"
                src="image/index/6ea338193e15079a168bc8efdc49a06a051b7d8d-thumb-320x320-13123.png"
                alt
              >
            </router-link>
          </div>
          <p class="textheight_8 m-0">
            <a href="#">免費的節奏遊戲「精靈寶可夢點點名 節奏遊戯」登場囉！</a>
          </p>
        </div>
      </div>
      <div class="col-lg-3">
        <div class="text-white bg-danger">
          <img class="w-9" src="image/header/pokemon_ball.png" alt>游戏
        </div>
        <div>
          <div class="small_img_borderbottom">
            <router-link to="/gameshopping">
              <img
                class="w-100"
                src="image/index/e94ec211431681a4d46995ea79a7c7970158e209-thumb-624xauto-13069.jpg"
                alt
              >
            </router-link>
          </div>
          <p class="textheight_8 m-0">
            <a href="#">任天堂官方『精靈寶可夢 Let's Go！皮卡丘/Let's Go！伊布』周邊商品發售中！</a>
          </p>
        </div>
      </div>
    </div>
    <!-- 第二行图片-->
    <div class="row m-auto pt-3">
      <div class="col-lg-3 pb-0">
        <div class="text-white bg-success">
          <img class="w-9" src="image/header/pokemon_ball.png" alt>商品
        </div>
        <div>
          <div class="small_img_borderbottom_su">
            <router-link to="/gameshopping">
              <img class="w-100" src="image/index/pokemon KV_re3-thumb-autox468-13058.jpg" alt>
            </router-link>
          </div>
          <p class="textheight_4 m-0">
            <a href="#">Pokémon Pikachu 蛋榚於香港東海堂獨家首推</a>
          </p>
        </div>
      </div>
      <div class="col-lg-3 pb-0">
        <div class="text-white bg-warning">
          <img class="w-9" src="image/header/pokemon_ball.png" alt>活动
        </div>
        <div>
          <div class="small_img_borderbottom_wr">
            <router-link to="/gameshopping">
              <img
                class="w-100"
                src="image/index/8f1c4b7799e3bcab0bed1757b7e24926cf545c47-thumb-624xauto-13045.jpg"
                alt
              >
            </router-link>
          </div>
          <p class="textheight_15 m-0">
            <a href="#">精靈寶可夢精美首飾登陸香港</a>
          </p>
        </div>
      </div>
      <div class="col-lg-3 pb-0">
        <div class="text-white bg-warning">
          <img class="w-9" src="image/header/pokemon_ball.png" alt>活动
        </div>
        <div>
          <div class="small_img_borderbottom_wr">
            <router-link to="/gameshopping">
              <img
                class="w-100"
                src="image/index/23795138_932725500216215_4805562898770722462_n-thumb-320x320-13014.jpg"
                alt
              >
            </router-link>
          </div>
          <p class="textheight_8 m-0">
            <a href="#">Pokémon Hub即將於 12/8 在 Langham place 朗豪坊重新開幕！</a>
          </p>
        </div>
      </div>
      <div class="col-lg-3 pb-0">
        <div class="text-white bg-success">
          <img class="w-9" src="image/header/pokemon_ball.png" alt>游戏
        </div>
        <div>
          <div class="small_img_borderbottom_su">
            <router-link to="/gameshopping">
              <img
                class="w-100"
                src="image/index/970b531f52a2debb8c30ace6233781936cf0f1b4-thumb-624xauto-12983.png"
                alt
              >
            </router-link>
          </div>
          <p class="textheight_14 m-0">
            <a href="#">精靈寶可夢3D八達通配飾 12月5日發售！</a>
          </p>
        </div>
      </div>
    </div>
    <my-footer></my-footer>
  </div>
</template>

<script>
import myHeader from "@/components/header.vue";
import myFooter from "@/components/footer.vue";
export default {
  data() {
    return {
      slide: [],
      ins: 0
    };
  },
  created() {
    this.axios.get("http://127.0.0.1:8088/index/slide").then(res => {
      this.slide = res.data.data;
    });
  },
  components: {
    myHeader,
    myFooter
  }
};
</script>

<style scoped>
a {
  color: #000;
}
a:hover {
  text-decoration: none;
}
body {
  background: #e8e8e8;
}
.carousel-control-prev,
.carousel-control-next {
  width: 4%;
  height: 20%;
  background: #e60012;
  top: 40%;
}
.carousel-control-prev {
  left: 0.45rem;
}
.carousel-control-next {
  right: 0.45rem;
}
.carousel-indicators li {
  cursor: pointer;
  background: #000;
}
.carousel-indicators .active {
  background-color: #20d8e2;
}
.w-9 {
  width: 9% !important;
}
.small_img_borderbottom {
  border-bottom: 4px solid #dc3545;
}
.small_img_borderbottom_pr {
  border-bottom: 4px solid #007bff;
}
.small_img_borderbottom_su {
  border-bottom: 4px solid #28a745;
}
.small_img_borderbottom_wr {
  border-bottom: 4px solid #ffc107;
}
.col-lg-3 div {
  background: #fff;
}
.textheight_12 {
  height: 12rem;
}
.textheight_8 {
  height: 8.1rem;
}
.textheight_4 {
  height: 4.3rem;
}
.textheight_15 {
  height: 15.8rem;
}
.textheight_14 {
  height: 14.8rem;
}
.col-lg-3 {
  transition: all 0.5s linear;
  animation: pulse 1s;
}
.col-lg-3:hover {
  box-shadow: 0px 1px 30px 1px;
  animation: bounce 1s;
}
.sliderimg{
  height:690px !important;
}
</style>

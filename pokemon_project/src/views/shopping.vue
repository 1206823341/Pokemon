<template>
  <div>
    <my-header></my-header>
    <div class="top">
      <div class="top-1 m-auto bg-333">
        <ul class="breadcrumb mb-0">
          <li class="breadcrumb-item ls1">
            <a class="a-size-small" href="javascript:;">视频游戏</a>
          </li>
          <li class="breadcrumb-item ls1">
            <a class="a-size-small" href="javascript:;">Nintendo Switch</a>
          </li>
          <li class="breadcrumb-item ls1">
            <a class="a-size-small" href="javascript:;">游戏</a>
          </li>
        </ul>
        <div>
          <span class="h3 pl-3">Pokemon: Let's Go, Pikachu!</span>
          <span>
            <a class="a-link-normal" href="javascript:;">by Nintendo</a>
          </span>
          <div class="float-right pt-3">
            <button class="btn1">Trade in now</button>
          </div>
          <div class="float-right top-right mr-3">
            <div class="float-left">
              Earn an
              <b>Pokemon Gift Card</b> for this item
            </div>
            <div class="text-right">
              Earn up to
              <b>$27.75</b>
              <a href="javascript:;" class="a-link-normal">Learn More</a>
            </div>
          </div>
        </div>
        <div class="top-2 bg-333 w-50">
          <ul class="breadcrumb pb-0 mb-0">
            <li class="breadcrumb-item ls2">
              <el-rate
                v-model="goodstar"
                disabled
                show-score
                text-color="#ff9900"
                score-template="{value}"
              ></el-rate>
            </li>
            <li class="breadcrumb-item ls2">
              <a class="a-link-normal" href="javascript:;">566 customer reviews</a>
            </li>
            <li class="breadcrumb-item ls2">
              <a class="a-link-normal" href="javascript:;">91 answered questions</a>
            </li>
            <li class="breadcrumb-item ls2" id="show1">
              <span>Rated:</span>
              <a class="a-link-normal" href="javascript:;">
                Everyone
                <img src="image/shopping/xiala.png" alt>
              </a>
              <div class="row" id="restrict">
                <div class="float-left">
                  <img src="image/shopping/esrb-everyone._CB277762535_SS90_.gif" alt>
                </div>
                <div>
                  <p class="text-dark mb-0 pt-2">This title has been rated Everyone</p>
                  <p>
                    <a href="javascript:;">Learn more about video game ratings</a>
                  </p>
                </div>
              </div>
            </li>
          </ul>
        </div>
        <div>
          <div class="commodity"></div>
        </div>
      </div>
    </div>
    <div class="middle">
      <div class="bigshopimg">
        <img src="image/shopping/81eJlNQ1UCL._AC_SX215_.jpg" alt>
      </div>
      <ul class="list-inline smallshopimg mt-3">
        <li class="list-inline-item border-secondary border" @click="open">
          <a href="javascript:;">
            <img src="image/shopping/81eJlNQ1UCL._AC_SX215_.jpg" height="75px" alt>
          </a>
        </li>
        <li class="list-inline-item border-secondary border" @click="open">
          <a href="javascript:;">
            <img src="image/shopping/51weYD6a99L._AC_SX150_SY75_CR,0,0,150,75_.jpg" alt>
          </a>
        </li>
        <li class="list-inline-item border-secondary border" @click="open">
          <a href="javascript:;">
            <img src="image/shopping/41Yv+-ss8GL._AC_SX150_SY75_CR,0,0,150,75_.jpg" alt>
          </a>
        </li>
        <li class="list-inline-item border-secondary border" @click="open">
          <a href="javascript:;">
            <img src="image/shopping/41wpIPYhMCL._AC_SX150_SY75_CR,0,0,150,75_.jpg" alt>
          </a>
        </li>
        <li class="list-inline-item border-secondary border" @click="open">
          <a href="javascript:;">
            <img src="image/shopping/41N3Ef5cozL._AC_SX150_SY75_CR,0,0,150,75_.jpg" alt>
          </a>
        </li>
        <li class="list-inline-item border-secondary border" @click="open">
          <div class="readmore">
            <div>14+</div>
          </div>
        </li>
      </ul>
      <!-- 弹出图片框 -->
      <div id="bigalert" v-show="cansee==true">
        <p class="alert_title">
          <span>Pokemon: Let's Go, Pikachu!</span> Platform: Nintendo Switch | Edition: Let's Go,
          Pikachu!
          <span
            @click="close"
            class="a-icon a-icon-close"
          ></span>
        </p>
        <div class="mdimg">
          <div width="700px" height="608px">
            <img :src="bigimg" width="35%">
          </div>
        </div>
        <div class="undersm">
          <div class="iprevious" :class="btnLeftDisabled==true?'disabled':''" @click="moveright">
            <span class="a-icon a-icon-previous"></span>
          </div>
          <div class="smimgout">
            <div class="smimgin" :style="divImgsStyle">
              <div
                class="sm"
                v-for="(item,i) in mdimg"
                :data-i="item.img"
                @click="openimg"
                :key="i"
              >
                <img :src="'http://127.0.0.1:8088/'+item.img">
              </div>
            </div>
          </div>
          <div class="inext" :class="btnRightDisabled==true?'disabled':''" @click="moveleft">
            <span class="a-icon a-icon-next"></span>
          </div>
        </div>
      </div>
      <!--右上角价格表-->
      <div class="card1">
        <div>
          <span class="bigmoney">
            <sup>$</sup>54
            <sup>94</sup>
          </span>
          <div class="a-size-small">
            + $13.53 Shipping & Import Fees Deposit to China
            <a
              href="javascript:;"
              class="a-link-blue"
            >
              Details
              <img src="image/shopping/xiala.png" alt>
            </a>
          </div>
        </div>
        <div class="instantsavings-button a-size-normal mb-3">
          <b>Get it for less with trade-in.</b>
          <span>See what you'll save.</span>
        </div>
        <div class="twoster mt-2">
          <div class="twoster_left pb-2">
            <div>
              <b>Platform:</b>
            </div>
            <div>
              <img src="image/shopping/switch.png" alt>
            </div>
          </div>
          <div class="twoster_right sliverbuttom">
            <div>
              <b>Edition:</b>
            </div>
            <div>
              Let's Go, Pikachu!
              <img src="image/shopping/xiala.png" alt>
            </div>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="selectprice pt-2">
          <div :class="active==1?'checked':''">
            <input type="radio" name="price" id="1" @click="firc">
            <label for="1" @click="firc">
              <span>
                <b>Buy digital:</b>
                <sup>$</sup>
                <span>59</span>
                <sup>99</sup>
              </span>
              <span class="text-success" @click="firc">Download now!</span>
            </label>
          </div>
          <div :class="active==2?'checked':''">
            <input checked type="radio" name="price" id="2" @click="secc">
            <label for="2" @click="secc">
              <span>
                <b>Buy digital:</b>
                <sup>$</sup>
                <span>54</span>
                <sup>94</sup>
              </span>
            </label>
          </div>
          <div :class="active==3?'checked':''">
            <input type="radio" name="price" id="3" @click="thic">
            <label for="3" @click="thic">
              <span>
                <b>Buy digital:</b>
                <sup>$</sup>
                <span>49</span>
                <sup>99</sup>
              </span>
            </label>
          </div>
        </div>
        <div class="smallfont">
          <div class="text-center">
            <span class="font-weight-bold">Platform:</span>
            <span>Nintendo Switch</span>
          </div>
          <p class="font-weight-bold text-center m-0">In Stock.</p>
          <div class="smallmessage p-0">
            <div class="text-center">
              <span class="a-size-small">Sold by</span>
              <a class="a-link-blue" href="javascript:;">ealsAllDay13</a>
              <span class="a-size-small">and</span>
              <a class="a-link-blue" href="javascript:;">Fulfilled by Pokemon.</a>
            </div>
            <div class="text-center">
              This item ships to
              <span
                class="font-weight-bold"
              >China. Get it by Thursday, April 11 - Tuesday, April 16</span>Choose this date at checkout.
              <a class="a-link-blue" href="#javascript:;">Learn more</a>
            </div>
            <div class="pt-2">
              <a class="a-link-blue" href="javascript:;">
                <img src="image/shopping/location.png" alt>Deliver to China
              </a>
            </div>
            <div class="pt-2 pb-2">
              <span class="font-weight-bold">
                Qty:
                <select class="custom-select">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                </select>
              </span>
              <span class="float-right pt-2">
                <a href="javascript:;" class="a-link-blue">Turn on 1-click ordering</a>
              </span>
            </div>
          </div>
        </div>
        <div id="shoppingcar" class="pb-2" @click="dialogVisible = true">
          <div class="a-button-warning text-center m-auto">
            <span class="float-left p-1">
              <img src="image/shopping/shoppingcar1.png" alt>
            </span>
            <span>Buy It Now</span>
          </div>
        </div>
        <div class="cardlast">
          <div class="pb-2 pt-2">
            <span class="font-weight-bold">Other Sellers on Amazon:</span>
            <a href="javascript:;" class="a-link-blue">45 used & new from $49.99</a>
          </div>
          <div class="sliverbuttom">Add to List</div>
          <ul class="list-inline pt-3">
            <li class="list-inline-item">
              <a href="javascript:;" class="a-link-blue">Share</a>
            </li>
            <li class="list-inline-item">
              <a href="javascript:;">
                <div class="a-icon a-icon-share-email"></div>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="javascript:;">
                <div class="a-icon a-icon-share-facebook"></div>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="javascript:;">
                <div class="a-icon a-icon-share-twitter"></div>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="javascript:;">
                <div class="a-icon a-icon-share-pinterest"></div>
              </a>
            </li>
            <li class="list-inline-item text-secondary">1K+ Shares</li>
          </ul>
        </div>
      </div>
      <!--About the product-->
      <div class="middle-d1">
        <h2 class="smalltitle">About the product</h2>
        <ul class="w-75">
          <li>Become a top Pokémon trainer on an adventure with Pikachu</li>
          <li>Encounter Pokémon in the Kanto region</li>
          <li>Play the entire game with a single Joy-Con controller or use the Poké Ball Plus accessory, which will light up, vibrate and make sounds to brig your adventure to life.</li>
        </ul>
      </div>
      <hr>
      <!--Frequently bought together-->
      <div class="middle-d1 d2 mt-0">
        <h2 class="smalltitle">Frequently bought together</h2>
        <div class="mt-4">
          <img src="image/shopping/81eJlNQ1UCL._AC_SX215_.jpg" alt>
          <span class="font-weight-bold">+</span>
          <img src="image/shopping/71ivrWiYkLL._AC_UL115_.jpg" alt>
          <div class="together">
            <div class="text-secondary align-top ml-5">
              Total price:
              <span class="smalltitle align-top">$353.94</span>
            </div>
            <div class="ml-5 pt-1">
              <button class="a-button-warning p-0">Buy both Now</button>
            </div>
            <div class="ml-5 pt-1">
              <button class="sliverbuttom p-0">Add both to List</button>
            </div>
          </div>
        </div>
        <p class="pt-3 mb-0">
          <input type="checkbox" id="justgame" checked>
          <label for="justgame">
            <span>This item:</span>Pokemon: Let's Go, Pikachu! by Nintendo Nintendo Switch
            <span class="smalltitle">$53.95</span>
          </label>
        </p>
        <p>
          <input type="checkbox" id="justswitch" checked>
          <label for="justswitch">
            <a
              href="javascript:;"
              class="a-link-normal"
            >Nintendo Switch – Neon Red and Neon Blue Joy-Con</a> by Nintendo Nintendo Switch
            <span class="smalltitle">$299.00</span>
          </label>
        </p>
      </div>
      <hr>
      <div class="moutside">
        <div class="turnLaR" :class="btnLeftDisabled2?'disbled':''" @click="moveright2">
          <div class="a-icon a-icon-previous"></div>
        </div>
        <div class="mlist">
          <ul class="list-inline" :style="liImgStyle">
            <li v-for="(item,i) in bottomimg" :key="i" class="list-inline-item bottomli">
              <div>
                <a href="#javascript:;" class="a-link-normal">
                  <div>
                    <img :src="'http://127.0.0.1:8088/'+item.img" alt>
                  </div>
                  <div v-text="item.title"></div>
                </a>
                <div>PokemonBasics</div>
                <el-rate
                  v-model="item.score"
                  disabled
                  show-score
                  text-color="#ff9900"
                  score-template="{value}"
                ></el-rate>
                <div class="smalltitle">
                  {{item.price}}
                  <span class="a-icon a-icon-prime"></span>
                </div>
              </div>
            </li>
          </ul>
        </div>
        <div class="turnLaR" :class="btnRightDisabled2?'disabled':''" @click="moveleft2">
          <div class="a-icon a-icon-next"></div>
        </div>
      </div>
    </div>
    <el-dialog
      title="Really?"
      :visible.sync="dialogVisible"
      width="30%"
      :before-close="handleClose"
    >
      <h1>Confirm purchase?</h1>
      <hr>
      <h6>Once you confirm the purchase, funds will be immediately deducted be deducted from the account.</h6>
      <span slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="Buycof">确 认</el-button>
      </span>
    </el-dialog>
  </div>
</template>

<script>
import myHeader from "@/components/header.vue";
export default {
  data() {
    return {
      mdimg: {},
      width: 0,
      cansee: false,
      divImgsStyle: {
        width: 0,
        "margin-left": 0
      },
      moved: 0,
      liImgStyle: {
        width: 0,
        "margin-left": 0
      },
      moved2: 0,
      bigimg: "http://127.0.0.1:8088/image/shopping/81eJlNQ1UCL._AC_SX215_.jpg",
      bottomimg: {},
      active: 2,
      dialogVisible: false,
      goodstar:4.6,
    };
  },
  components: {
    myHeader
  },
  computed: {
    //中间图片提示框
    btnLeftDisabled() {
      return this.moved == 0;
    },
    btnRightDisabled() {
      return this.moved >= this.mdimg.length - 10;
    },
    btnLeftDisabled2() {
      return this.moved2 == 0;
    },
    btnRightDisabled2() {
      return this.moved2 >= this.bottomimg.length - 5;
    }
  },
  methods: {
    //右上角价格点击切换active
    firc() {
      this.active = 1;
    },
    secc() {
      this.active = 2;
    },
    thic() {
      this.active = 3;
    },
    //打开关闭提示图片框
    openimg(e) {
      this.bigimg = e.target.src;
    },
    close() {
      this.cansee = false;
    },
    open() {
      this.cansee = true;
    },
    //中间图片提示框
    moveleft() {
      //如果右边按钮没有禁用
      if (this.btnRightDisabled == false) {
        // 就左移一次
        this.moved++;
        this.divImgsStyle["margin-left"] = this.moved * -73 + "px";
      }
    },
    moveright() {
      if (this.btnLeftDisabled == false) {
        this.moved--;
        this.divImgsStyle["margin-left"] = this.moved * -69 + "px";
      }
    },
    //底部滚动图片
    moveleft2() {
      if (this.btnRightDisabled2 == false) {
        this.moved2++;
        this.liImgStyle["margin-left"] = this.moved2 * -260 + "px";
      }
    },
    moveright2() {
      if (this.btnLeftDisabled2 == false) {
        this.moved2--;
        this.liImgStyle["margin-left"] = this.moved2 * -260 + "px";
      }
    },
    middleimg() {
      this.axios.get("http://127.0.0.1:8088/gameshopping/mdimg").then(res => {
        this.mdimg = res.data.data;
        //中部图片提示框总宽度
        this.divImgsStyle.width = this.mdimg.length * 69 + "px";
      });
    },
    bottomli() {
      this.axios.get("http://127.0.01:8088/gameshopping/bottomli").then(res => {
        this.bottomimg = res.data.data;
        for (var item of this.bottomimg) {
          item.score = Number(item.score);
        }
        this.liImgStyle.width = this.bottomimg.length * 260 + "px";
      });
    },
    //购买弹框
    handleClose(done) {
      this.$confirm("Cancel the purchase?")
        .then(_ => {
          done();
        })
        .catch(_ => {});
    },
    Buycof(){
      var url="http://127.0.0.1:8088/gameshopping/buying?gamename=PokemonPikachu&uname="+window.sessionStorage.data
      this.axios.post(url).then(res=>{
        var code=res.data.code
        console.log(code)
        if (code=="-100"){
          this.$notify.error({
          title: '请登录',
          message: '请登陆后再回来此页面购买商品'
        });
        return
        }else if(code=="200"){
          this.$notify({
          title: '购买成功',
          message: '从现在起，您可以开始畅玩此游戏了',
          type: 'success'
        });
        return
        }else if(code=="-200"){
          this.$notify({
          title: '购买失败',
          message: '请刷新页面后再次尝试',
          type: 'warning'
        });
        return
        }else{
          this.$notify.error({
          title: '已拥有',
          message: '您已拥有此商品，无需再次购买'
        });
        }
      })
      this.dialogVisible= false
    }
  },
  created() {
    this.middleimg();
    this.bottomli();
  }
};
</script>

<style scoped>
.top {
  background: #333;
}
.top-1 {
  width: 1500px;
}
.breadcrumb a:hover {
  text-decoration: none;
}
.breadcrumb {
  background: transparent;
}
.breadcrumb-item + .breadcrumb-item::before {
  content: "";
}
.ls1 + .ls1::before {
  content: ">";
}
.ls2 + .ls2::before {
  content: "|";
}
.a-size-small {
  font-size: 12px !important;
  color: #ccc !important;
}
.a-size-normal {
  font-size: 15px !important;
  color: #000;
}
.top {
  color: #fff;
}
.btn1 {
  width: 10rem;
  background: #fff;
  box-shadow: 0 0 2px inset;
  border: 0;
  border-radius: 4px;
}
.checked {
  font-weight: bold;
}
.btn1:focus {
  outline: none;
}
.btn1:hover {
  background: #eee;
}
.bg-333 {
  background: #333;
}
.a-link-normal {
  color: #56c2ec;
}
.a-link-blue {
  color: #0066c0;
}
.a-link-normal:hover,
.a-link-blue:hover {
  color: #c45500;
}
.top-2 {
  position: relative;
}
#restrict {
  width: 22rem;
  background: #fff;
  border-radius: 0 0 5px 5px;
  position: absolute;
  left: 27rem;
  display: none;
}
#show1:hover #restrict {
  display: block;
}
.commodity {
  background-image: url(../../public/image/shopping/71RKNxX4VxL.jpg);
  background-size: cover;
  height: 32rem;
  box-shadow: #333 0 0 110px 60px inset;
}
.card1 {
  padding: 2rem;
  color: #000;
  background: #fff;
  width: 420px;
  position: absolute;
  right: 5px;
  top: -520px;
  box-shadow: -2px 2px 7px;
}
.bigmoney {
  font-size: 36px !important;
  font-weight: bold;
}
.bigmoney sup {
  font-size: 23px !important;
  font-weight: normal;
}
.bigmoney + div,
span.a-size-small {
  color: #555 !important;
}
.instantsavings-button {
  overflow: hidden;
  border: 1px solid #009502 !important;
  border-radius: 5px 5px 5px 5px;
  background-image: linear-gradient(white, #f7f8fa 1px, #e7e9ec);
  box-shadow: 0 1px rgba(0, 0, 0, 0.125);
  transition: box-shadow 0.18s ease-out;
  padding: 3px 0 3px 0;
  text-align: center;
}
.instantsavings-button:hover {
  box-shadow: 0 1px rgba(0, 0, 0, 0.125), inset 0 0 4px rgba(47, 241, 50, 0.3);
  cursor: pointer;
}
.twoster_left {
  float: left;
  width: 11rem;
  height: 4rem;
  padding: 6px;
  border: 1px solid #ddd;
  transition: all 0.1s linear;
}
.twoster_left:hover {
  border-color: #bbb;
}
.sliverbuttom {
  width: 11rem;
  height: 4rem;
  border: 1px solid #ddd;
  border-radius: 5px 5px 5px 5px;
  padding: 6px;
  background-image: linear-gradient(white, #f7f8fa 1px, #e7e9ec);
  cursor: pointer;
}
.twoster_right {
  float: right;
}
.sliverbuttom:hover {
  background: #eee;
}
.twoster {
  height: 80px;
  border-bottom: 1px solid #ddd;
}
.selectprice {
  border-bottom: 1px solid #ddd;
}
.smallmessage {
  padding: 0 20px 0;
  margin-top: 0;
  font-size: 12px;
  line-height: 15px;
  border-bottom: 1px solid #ddd;
}
.custom-select {
  width: 60px !important;
}
.smallmessage > div:nth-child(3) > a:hover {
  text-decoration: none;
}
.a-button-warning {
  line-height: 15px;
  background: #f4d078;
  background: linear-gradient(to bottom, #f7dfa5, #f0c14b);
  box-shadow: 0 1px 0 rgba(255, 255, 255, 0.4) inset;
  width: 330px;
  border: 1px solid #888888;
  border-radius: 3px;
}
.a-button-warning:hover {
  background: #f0c14b;
  cursor: pointer;
}
.a-button-warning > span:last-child {
  text-align: center;
  line-height: 33px;
}
.a-button-warning:after {
  content: "";
  display: block;
  clear: both;
}
#shoppingcar {
  border-bottom: 1px solid #ddd;
}
.cardlast {
  font-size: 13px;
  text-align: center;
}
.cardlast > .sliverbuttom {
  height: 2rem;
  width: 330px;
  margin: auto;
}
.a-icon {
  background-image: url(../../public/image/shopping/AmazonUIIcon@legacyImages-sprite_1x-6c462f5dc3bc3e40d0788502814fa7043355712a._V2_.png);
  background-size: 400px 900px;
  display: inline-block;
  vertical-align: top;
  cursor: pointer;
}
.a-icon-close {
  opacity: 0.64;
  width: 10px;
  height: 9px;
  background-position: -297px -5px;
}
.a-icon-share-email {
  width: 19px;
  height: 17px;
  background-position: -99px -168px;
  position: relative;
  top: 1px;
}
.a-icon-share-facebook {
  width: 17px;
  height: 17px;
  background-position: -36px -168px;
  position: relative;
  top: 1px;
}
.a-icon-share-twitter {
  width: 18px;
  height: 17px;
  background-position: -57px -168px;
  position: relative;
  top: 1px;
}
.a-icon-share-pinterest {
  width: 17px;
  height: 17px;
  background-position: -78px -168px;
  position: relative;
  top: 1px;
}
/*middle*/
.middle {
  width: 1500px;
  margin: auto;
  position: relative;
}
.bigshopimg img {
  position: absolute;
  top: -180px;
  left: 100px;
  border: 10px solid rgba(255, 255, 255, 0.8);
  height: auto !important;
  min-height: 0;
  max-height: 256px !important;
  max-width: 215px !important;
  box-shadow: -0.5px 1.5px 1px 1px rgba(0, 0, 0, 0.45);
  cursor: pointer;
}
.smallshopimg {
  width: 900px;
  margin: auto;
}
.smallshopimg li:last-child {
  height: 78px;
  width: 60px;
  line-height: 71px;
  text-align: center;
  cursor: pointer;
}
.smallshopimg li:last-child a {
  color: #000;
}
.smallshopimg li:last-child a:hover {
  text-decoration: none;
  color: #000;
}
.middle-d1 {
  margin: 50px auto;
  width: 1300px;
}
.d2 > .mt-4 {
  width: 400px;
}
.d2 img:first-child {
  width: 70px;
}
.together {
  float: right;
}
.together .a-button-warning,
.together .sliverbuttom {
  font-weight: bold;
  font-size: 12px;
  height: 25px;
  width: 110px;
}
.smalltitle {
  color: #c60 !important;
  font-size: 16px !important;
}
/* 精明图图标 */
.a-icon-previous {
  width: 11px;
  height: 15px;
  background-position: -123px -7px;
}
.a-icon-next {
  width: 11px;
  height: 15px;
  background-position: -105px -7px;
}
.a-icon-star,
.a-icon-star-medium,
.a-icon-star-mini,
.a-icon-star-small {
  position: relative;
  vertical-align: text-top;
}
.a-icon-star {
  width: 80px;
  height: 18px;
}
.a-star-4-5 {
  background-position: -175px -368px;
}
.a-icon-prime {
  margin-left: 30px;
  margin-top: 6px;
  width: 44px;
  height: 12px;
  background-position: -205px -247px;
}
/* .imghiddenout{
  width:1300px;
  overflow: hidden
}
.imghiddenin{
  width:9000px;
} */

/* 图片提示框 */

#bigalert {
  position: fixed;
  top: 1%;
  left: 350px;
  width: 1200px;
  background: #fff;
  z-index: 999;
}

.alert_title {
  font-size: 13px;
  padding: 0.5% 2% 0.5% 2%;
  background: linear-gradient(to bottom, #f7f7f7, #eaeaea);
}

.alert_title span:first-child {
  font-weight: 700;
}
.alert_title span:last-child {
  margin-top: 0.4%;
  float: right;
}
.mdimg {
  text-align: center;
}

.undersm {
  margin: auto;
  width: 800px;
  padding-top: 50px;
  display: flex;
  justify-content: center;
}

.iprevious {
  width: 5%;
  line-height: 80px;
  padding-top: 33px;
  position: relative;
  display: inline-block;
  text-align: center;
  cursor: pointer;
}

.inext {
  width: 5%;
  line-height: 80px;
  padding-top: 33px;
  position: relative;
  display: inline-block;
  text-align: center;
  cursor: pointer;
}

.smimgout {
  width: 80%;
  overflow: hidden;
}
.smimgin {
  padding-top: 10px;
  transition: margin-left 0.5s linear;
}

.sm {
  display: inline-block;
  margin: 6px 6px 6px 12px;
  border: 1px solid #ddd;
  text-align: center;
  height: 50px;
  width: 49px;
  cursor: pointer;
}

.smimgout > div > div > img {
  width: 100%;
  height: 100%;
}
/* 最底部切换栏 */
.moutside {
  display: flex;
  justify-content: center;
}
.turnLaR {
  width: 10%;
  width: 50px;
  height: 100px;
  text-align: center;
  padding-top: 40px;
  margin: 140px 30px;
  cursor: pointer;
  background: linear-gradient(to bottom, #f7f8fa, #e7e9ec);
  border-radius: 5% 5% 5% 5%;
}
.mlist {
  width: 80%;
  overflow: hidden;
}
.mlist ul {
  transition: margin-left 0.5s linear;
}
.bottomli {
  width: 180px;
  margin: 0 30px;
}
.bottomli a div:last-child {
  font-size: 2px;
}
.bottomli img {
  width: 100%;
}
</style>
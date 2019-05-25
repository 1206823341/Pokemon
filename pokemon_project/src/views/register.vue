<template>
  <div>
    <my-header></my-header>
    <div>
      <img class="d-block m-auto" src="image/register/timg.png" width="500rem" alt>
      <div class="bgpokemon">
        <div class="bgpokemoncase text-align-center outside">
          <p class="my_small text-white">创建Pokémon通行证，开启您在Pokémon世界中的冒险旅程</p>
          <p>
            <input
              v-model="uname"
              class="allinput"
              placeholder="请输入6~8位可带英文阿拉伯数字和'_'的用户名"
              type="text"
            >
            <span>
              <img v-show="err1" src="..\..\public\image\register\error@2x.png" alt>
            </span>
          </p>
          <p>
            <input v-model="rname" class="allinput" placeholder="真实姓名" type="text">
            <span>
              <img v-show="err2" src="..\..\public\image\register\error@2x.png" alt>
            </span>
          </p>
          <p>
            <input
              v-model="upwd"
              class="allinput"
              placeholder="请输入6~8位可带英文阿拉伯数字和'_'的密码"
              type="password"
            >
            <span>
              <img v-show="err3" src="..\..\public\image\register\error@2x.png" alt>
            </span>
          </p>
          <p>
            <input v-model="email" class="allinput" placeholder="电子邮箱" type="text">
            <span>
              <img v-show="err4" src="..\..\public\image\register\error@2x.png" alt>
            </span>
          </p>
          <p>
            <input v-model="phone" class="allinput" placeholder="手机号码" type="text">
            <span>
              <img v-show="err5" src="..\..\public\image\register\error@2x.png" alt>
            </span>
          </p>
          <p class="plr-5">
            <input v-model="captcha" class="inputcode text_left" placeholder="验证码" type="text">
            <span>
              <img v-show="err6" src="..\..\public\image\register\error@2x.png" alt>
            </span>
            <img class="inputcode text_right" src="image/register/client.jpg" alt>
          </p>
          <p>
            <button
              class="allinput register text-white"
              :disabled="btndisabled?true:false"
              :class="btndisabled?'disab':''"
              @click="register"
            >注 册</button>
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
      uname: "",
      rname: "",
      upwd: "",
      email: "",
      phone: "",
      captcha: "",
      err1: false,
      err2: false,
      err3: false,
      err4: false,
      err5: false,
      err6: false
    };
  },
  components: {
    myHeader,
    myFooter
  },
  methods: {
    register() {
      var url =
        "http://127.0.0.1:8088/login/register?uname=" +
        this.uname +
        "&rname=" +
        this.rname +
        "&upwd=" +
        this.upwd +
        "&email=" +
        this.email +
        "&phone=" +
        this.phone;
      this.axios.get(url).then(res => {
        console.log(res.data.code);
        var code=res.data.code;
        if(code==-2){
          this.$notify.error({
          title: '错误',
          message: '该用户名已被使用'
        });
        }else if(code==1){
          this.$notify({
          title: '成功',
          message: '注册成功，以为您跳转到登录页',
          type: 'success'
        });
          this.$router.push("/login")
        }
      });
    }
  },
  watch: {
    uname: function(uname) {
      if (!uname) return;
      if (!/^\w{6,8}$/.test(uname)) {
        this.err1 = true;
      } else if (/^\w{6,8}$/.test(uname)) {
        this.err1 = false;
      }
    },
    rname: function(rname) {
      if (!rname) return;
      if (!/^[\u4e00-\u9fa5]{2,25}$/.test(rname)) {
        this.err2 = true;
      } else if (/^[\u4e00-\u9fa5]{2,25}$/.test(rname)) {
        this.err2 = false;
      }
    },
    upwd: function(upwd) {
      if (!upwd) return;
      if (!/^\w{6,10}$/.test(upwd)) {
        this.err3 = true;
      } else if (/^\w{6,10}$/.test(upwd)) {
        this.err3 = false;
      }
    },
    email: function(email) {
      if (!email) return;
      if (
        !/^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/.test(
          email
        )
      ) {
        this.err4 = true;
      } else if (
        /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/.test(
          email
        )
      ) {
        this.err4 = false;
      }
    },
    phone: function(phone) {
      if (!phone) return;
      if (!/^1[34578]\d{9}$/.test(phone)) {
        this.err5 = true;
      } else if (/^1[34578]\d{9}$/.test(phone)) {
        this.err5 = false;
      }
    },
    captcha: function(captcha) {
      if (!captcha) return;
      if (captcha != 0) {
        this.err6 = true;
      } else if (captcha == 0) {
        this.err6 = false;
      }
    },
  },
  computed: {
    btndisabled() {
      if (
        this.captcha!=""&&
        this.err1 == false &&
        this.err2 == false &&
        this.err3 == false &&
        this.err4 == false &&
        this.err5 == false &&
        this.err6 == false
      ) {
        this.$notify({
          title: '提示',
          message: '请再次确认好您的用户名密码哦^-^',
          type: 'warning'
        });
        return false;
      } else {
        return true;
      }
    }
  },
};
</script>

<style scoped>
body {
  animation: fadeInUp 0.5s;
}
.outside {
  width: 35rem;
  height: 45rem;
  background: rgba(78, 180, 200, 0.4);
  margin: auto;
  line-height: 4.5rem;
}
.allinput {
  width: 25rem;
  height: 2.5rem;
  margin: 1rem 0;
}
.inputcode {
  width: 10rem;
  height: 2.5rem;
  margin: 1rem 0;
}

.register {
  background-image: linear-gradient(0deg, #398bff, #3083ff);
  border: 1px #3083ff solid;
  border-radius: 4px;
  font-size: 20px;
  font-weight: lighter;
  box-shadow: 0 5px 8px 0 rgba(24, 95, 255, 0.1);
  transition: all 0.1s linear;
  cursor: pointer;
  line-height: 15px;
}
.disab{
  background: rgb(110, 110, 110);
  color:rgb(49, 49, 49) !important;
  box-shadow:none !important;
  border:none;
  cursor:auto
}
.register:hover {
  box-shadow: 0px 1px 30px 1px;
}
.rpkc {
  display: inline-block;
}
.plr-5 {
  padding-left: 5rem;
  padding-right: 5rem;
}
.bgpokemon {
  background: url("../../public/image/game/pokemon1.jpg") center center
    no-repeat;
  background-size: 100% 100%;
  text-align: center;
  margin: auto;
  animation: fadeInUp 2s;
}
.bgpokemoncase {
  animation: fadeInUp 2s;
}
.text_left {
  float: left;
}
.text_right {
  float: right;
}
</style>
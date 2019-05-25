<template>
  <div>
    <my-header></my-header>
    <video autoplay loop="loop">
      <source src="vedio/homepage.mp4" type="video/mp4">
    </video>
    <div class="login">
      <div class="text-align-center bg-middle">
        <img class="w-6" src="image/login/Bulbasaur.png" alt>
        <img class="w-6" src="image/login/Charmander.png" alt>
        <img class="w-6" src="image/login/Squirtle.png" alt>
        <div class="row_center">
          <div class="login_left">
            <div>
              <input
                class="input_1"
                placeholder="邮箱/账号"
                maxlength="16"
                type="text"
                id="uname"
                v-model="uname"
              >
              <div id="emptyusn" class="pb-1"></div>
            </div>
            <div>
              <input
                class="input_1"
                placeholder="密码"
                maxlength="12"
                type="password"
                id="upwd"
                v-model="upwd"
              >
              <div id="emptyupwd"></div>
            </div>
            <div>
              <div class="m-20 d-flex1">
                <router-link to="/register">
                  <b>新用户注册</b>
                </router-link>
                <a href="#">
                  <b>忘记密码</b>
                </a>
              </div>
            </div>
            <button class="denglu" @click="login">登录</button>
          </div>
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
      upwd: "",
      user: {}
    };
  },
  components: {
    myHeader,
    myFooter
  },
  methods: {
    login() {
      if (!this.uname) {
        alert("用户名不能为空");
        return;
      } else if (!this.upwd) {
        alert("密码不能为空");
        return;
      } else {
        var url =
          "http://127.0.0.1:8088/login/login?uname=" +
          this.uname +
          "&upwd=" +
          this.upwd;
        this.axios.post(url).then(res => {
          console.log(res);
          var code=res.data.code
          if (code==-1) {
            return alert("用户名或密码错误");
          } else {
            var ses = window.sessionStorage;
            console.log(res.data.data);
            var uname = res.data.data[0].uname;
            console.log(uname);
            ses.setItem("data", uname);
            this.user = res.data.data;
            this.$router.push("/shopping");
          }
        });
      }
    }
  },
  computed: {}
};
</script>

<style scoped>
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
a {
  text-decoration: none;
  color: rgba(0, 0, 0, 0.6);
  transition: all 0.2s ease-in-out;
}
body {
  background: url(../../public/image/login/allbg.jpg) no-repeat;
}
a:hover {
  text-shadow: 0px 0px 10px #fff;
}
video {
  position: fixed;
  right: 0px;
  bottom: 0px;
  min-width: 100%;
  min-height: 100%;
  height: auto;
  width: auto;
  /*加滤镜*/
  /*-webkit-filter: grayscale(100%);*/
  /*filter:grayscale(100%);*/
  z-index: -11;
}
source {
  min-width: 100%;
  min-height: 100%;
  height: auto;
  width: auto;
}
.d-flex1 a:first-child {
  color: #f5f5f5;
  transition: all 0.2s ease-in-out;
}
.d-flex1 a:first-child:hover {
  text-shadow: 2px 2px 10px;
}
.pb-1 {
  padding-bottom: 1rem;
}
.denglu {
  display: inline-block;
  color: #fff;
  font-size: 20px;
  background-image: linear-gradient(to bottom, #1c86ee 0%, #1874cd 100%);
  width: 220px;
  height: 45px;
  outline: none;
  border-radius: 10px 10px 10px 10px;
  border: 0px;
  margin: 20px 0 20px 0;
  transition: all 0.2s ease-in-out;
}
.denglu:hover {
  box-shadow: 0px 0px 10px 2px;
  cursor: pointer;
}
.bg-middle {
  background: rgba(0, 0, 0, 0.2);
  margin: 7rem 0 14rem 0;
}
.input_1 {
  width: 220px;
  height: 30px;
  position: relative;
  margin-bottom: 20px;
}
.login_left {
  padding-left: 20px;
  margin-right: 20px;
}
.d-flex1 {
  display: flex;
  justify-content: space-between;
  width: 220px;
  margin: auto;
}
.border {
  border: 0.5rem solid #ff9600;
}
#emptyusn {
  color: #fff;
  font-weight: bold;
}
#emptyupwd {
  color: #fff;
  font-weight: bold;
}
</style>


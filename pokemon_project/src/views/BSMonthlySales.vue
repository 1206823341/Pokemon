<template>
    <div class="app-bsmonthlysales">
        <!-- 事业部月累计销量 -->
       <el-row :gutter="8" type="flex" class="row-bg">
            <el-col :span="12">
                <div class="grid-content bg-white">
                    <div class="big">
                        <div class="big_title">
                            <div>事业部月累计销量</div>
                            <div>时间进度:64.5%</div>
                        </div>
                        <div class="big-content" v-for="item in department" :key="item.id">
                           <div class="department">{{item.name}}</div>
                           <div><el-progress :color="`${item.percentage<=20?'rgb(255,0,0)':(item.percentage>80?'rgb(0,255,0)':'rgb(255,255,0)')}`" :text-inside="true" :stroke-width="13" :percentage="item.percentage"></el-progress></div>
                           <div v-text="item.money">&nbsp;<span class="money" v-text="item.mn"></span></div>
                           <div>
                               <i class="el-icon-caret-bottom"></i><span>42.3%</span>
                           </div>
                        </div>
                    </div>
                </div>
                </el-col>
            <el-col :span="12">
                <div class="grid-content bg-white">
                    <div class="big">
                        <div class="big_title">
                            <div>事业部月累计销量</div>
                            <div>时间进度:97.2%</div>
                        </div>
                        <div class="big-content" v-for="item in list" :key="item.id">
                           <div class="department">{{item.name}}</div>
                           <div><el-progress  :text-inside="true" :stroke-width="13" :percentage="item.percentage"></el-progress></div>
                           <div v-text="item.money">&nbsp;<span class="money" v-text="item.mn"></span></div>
                           <div>
                               <i class="el-icon-caret-bottom"></i><span>42.3%</span>
                           </div>
                        </div>
                    </div>
                </div>
            </el-col>
        </el-row> 
    </div>
</template>
<script>
export default {
    data(){
        return{
            department:[
                {id:1,name:"立白市场部",percentage:50.6,money:"2.21",mn:"亿/11.25亿" },
                {id:2,name:"好爸爸市场部",percentage:15.3,money:"0.28",mn:"亿/1.82亿"},
                {id:3,name:"口腔品牌市场部",percentage:9.3,money:"9.3",mn:"亿/0.22亿"},
                {id:4,name:"渠道白营",percentage:0.0,money:"0.00",mn:"亿/0.00亿"},
                {id:5,name:"超威科技",percentage:90.5,money:"0.45",mn:"亿/2.43亿"},
                {id:6,name:"润之素",percentage:6.6,money:"0.01",mn:"亿/0.20亿"},
                {id:7,name:"广州晟美",percentage:2.6,money:"0.00",mn:"亿/0.10亿"},
                {id:8,name:"壹乐源",percentage:7.8,money:"0.00",mn:"亿/0.02亿"}   
                ],
            list:[
                {id:1,name:"立白市场部",percentage:65.9,money:"35.93",mn:"亿/54.53亿" },
                {id:2,name:"好爸爸市场部",percentage:60.5,money:"5.52",mn:"亿/9.12亿"},
                {id:3,name:"口腔品牌市场部",percentage:43.7,money:"0.48",mn:"亿/1.09亿"},
                {id:4,name:"渠道白营",percentage:2.7,money:"0.00",mn:"亿/0.15亿"},
                {id:5,name:"超威科技",percentage:84.2,money:"11.55",mn:"亿/13.67亿"},
                {id:6,name:"润之素",percentage:44.0,money:"0.47",mn:"亿/1.07亿"},
                {id:7,name:"广州晟美",percentage:100,money:"0.80",mn:"亿/0.39亿"},
                {id:8,name:"壹乐源",percentage:100,money:"0.08",mn:"亿/0.07亿"}   
                ]
        }
    }
}
</script>
<style scoped>
.grid-content{
    border-radius: 3px;
    min-height: 36px;
}
.bg-white{
    background: white;
}
.row-bg{
    padding: 8px 5px;
    background-color: #f9fafc;
}
.big{
    display: flex;
    flex-direction: column;
}
.big_title,.big-content{
    display: flex;
    flex-direction: row;
}
.big_title{
    padding: 10px 0px;   
    text-align:right;
}
.big_title div:nth-child(1){
    width: 40%; 
    font-size: 14px;  
}
.big_title div:nth-child(2){
     width: 60%;  
     color:rgb(165, 165, 194);
     font-size: 11px;
     padding-right:10px;  
}
.big-content{
    margin-bottom: 5px;
}
.department{
    font-size:12px;
    width: 20%;
    text-align: right;
    padding-right:8px; 
}
.big-content div:nth-child(2){
    width: 33.33%;  
    font-size:12px;  
}
.big-content div:nth-child(3){
    width: 23.33%;
    font-size:14px;
    font-weight: 600;
    line-height: 20px;
    padding-left:4px; 
}
.money{
    font-size: 0.01rem;
    font-weight: 100;
}
.big-content div:nth-child(4){
    width: 23.33%;
    font-size:12px;
    text-align: center;
    color: rgb(165, 165, 194);
}
.big-content div:nth-child(4) span{
    padding-left:3px; 
}
.el-icon-caret-bottom{
    color: rgb(255, 96, 0);
}
</style>

<template>

  <el-card class="box-card">
    <div slot="header">
      <span>企业车辆申请</span>
      &nbsp;
      <span>个人车辆申请</span>
    </div>

    <!--内容区-->
    <div class="content">

      <!--统计数据汇总区-->
      <div>


      </div>


      <!--文档搜索、按钮操作区-->
      <div style="margin-top: 25px;">

        <!--<div class="block">
          <span class="demonstration">文件日期：</span>
          <el-date-picker
            v-model="value6"
            type="daterange"
            range-separator="至"
            start-placeholder="开始日期"
            end-placeholder="结束日期">
          </el-date-picker>
        </div>

        关键字：<el-input  placeholder="请输入内容"></el-input>-->


        <el-form :inline="true" style="width:100%;" size="mini">

          <el-form-item label="申请时间：">


           <!-- <el-date-picker type="date" placeholder="选择日期"  style="width: 120px;"></el-date-picker>
            至
            <el-date-picker type="date" placeholder="选择日期"  style="width: 120px;"></el-date-picker>-->
            <el-date-picker
              @change="datePick"
              v-model="time"
              value-format="yyyy-MM-dd"
              type="daterange"
              unlink-panels
              range-separator="至"
              start-placeholder="开始日期"
              end-placeholder="结束日期">
            </el-date-picker>
          </el-form-item>

          <el-form-item label="认证状态：">

            <el-select v-model="params.authStatus" placeholder="请选择">
              <el-option
                v-for="item in options2"
                :key="item.value"
                :label="item.label"
                :value="item.value">
              </el-option>
            </el-select>


          </el-form-item>



          <el-form-item label="现金补贴状态：">

            <el-select v-model="params.subsidyStatus" placeholder="请选择">
              <el-option
                v-for="item in options3"
                :key="item.value"
                :label="item.label"
                :value="item.value">
              </el-option>
            </el-select>


          </el-form-item>

          <el-form-item label="关键字：">
            <el-select v-model="params.keywordType" placeholder="请选择" style="width: 100px;">
              <el-option
                v-for="item in options4"
                :key="item.value"
                :label="item.label"
                :value="item.value">
              </el-option>
            </el-select>
            <el-input  placeholder="关键字" style="width: 180px;" v-model="params.keyword"></el-input>
          </el-form-item>

          <el-form-item>
            <el-button type="primary" @click="search">搜索</el-button>
            <el-button @click="reset()">重置</el-button>
            <el-button type="text" @click="exportExcel">导出</el-button>
          </el-form-item>
        </el-form>
      </div>

      <!--统计数据汇总区-->
      <div class="statics">

        <div style="width: 600px;background-color: #dcdfe6;height: 60px;line-height: 60px;">

          <span class="left">
              共搜索<span style="color: blue;margin-left: 0;">{{data.total}}</span>条数据
          </span>

          <span class="center">

            总补贴额度/元:{{data.totalSubsidyAmt}}
          </span>

          <span class="right">

            总现金补贴/元:{{data.totalSubsidyCash}}
          </span>

        </div>

      </div>

      <!--列表展示区-->
      <div style="margin-top: 10px;">
        <el-table
          v-loading.fullscreen.lock="loading"
          :data="data.dataList"
          style="width: 100%">
          <el-table-column
            prop="applyTime"
            label="申请时间"
            width="110">
          </el-table-column>
          <el-table-column
            prop="applyNum"
            label="申请号"
            width="100">
          </el-table-column>
          <el-table-column
            prop="carNo"
            label="车牌号">
          </el-table-column>

          <el-table-column
            prop="useType"
            label="使用性质"
            width="100">
          </el-table-column>
          <el-table-column
            prop="name"
            label="车主姓名"
            width="100">
          </el-table-column>
          <el-table-column
            prop="phone"
            label="手机号">
          </el-table-column>


          <el-table-column
            prop="carType"
            label="补贴车辆类型"
            width="120">
          </el-table-column>
          <el-table-column
            prop="subsidyAmt"
            label="补贴总额(元)"
            width="120">
          </el-table-column>
          <el-table-column
            prop="subsidyCash"
            label="现金补贴">
          </el-table-column>

          <el-table-column
            prop="authStatus"
            label="认证状态"
            width="100">
          </el-table-column>
          <el-table-column
            prop="cashStatus"
            label="现金发放状态"
            width="120">
          </el-table-column>
          <el-table-column
            prop="bindTime"
            label="绑卡时间"
            width="110">
          </el-table-column>
          <el-table-column
            prop="address"
            label="操作">

            <template slot-scope="scope" >

                <el-button type="text" size="small" >查看车主信息</el-button>

            </template>
          </el-table-column>

        </el-table>

      </div>

      <!--页脚-->
      <!--<div style="margin-top: 15px;">
        <el-pagination
          background
          layout="prev, pager, next"
          :total="1000">
        </el-pagination>
      </div>-->
      <div class="gdf-pagination">
        <el-pagination :current-page="params.pageNum" :page-size="params.pageSize" :page-sizes="[10, 20,30,50, 100]" layout="total, sizes, prev, pager, next, jumper" :total="data.total" style="float:right" @size-change="handleSizeChange" @current-change="handleCurrentChange">
        </el-pagination>
      </div>
    </div>


  </el-card>

</template>

<script>
  import request from '@/utils/request'
    export default {
        name: "private",
      methods: {
        handleClick(row) {
          console.log(row);
        },
        refreshData(){

          const that = this;
          //this.dowloadFile = false;
          if(that.params.startDate == null || that.params.endDate == null){

            delete that.params.startDate;
            delete that.params.endDate;

          }
          request.post('/charge/mgr/subsidy/personSubsidyList',that.params)
            .then(function (response) {

              that.data = response;
            })
            .catch(function (response) {
              console.log(response);
            });
          //this.batchCheck = false;

        },
        initData(){
          this.loading = true;
          const that = this;
          //this.dowloadFile = false;
          setTimeout(function(){
            that.loading = false;
          },200);
          request.post('/charge/mgr/subsidy/personSubsidyList')
            .then(function (response) {

              that.data = response;
              //alert(response.total);
            })
            .catch(function (response) {
              console.log(response);
            });
          //this.batchCheck = false;

        },
        datePick() {

          if (this.time != null && this.time != ""){
            const time = eval(this.time);
            if (time.length > 0) {
              this.params.startDate = time[0];
              this.params.endDate = time[1];
              //this.refreshData();

            }
          }

        },
        search(){
          this.loading = true;
          const that = this;
          setTimeout(function(){
            that.loading = false;
          },300);
          this.refreshData();
        },
        handleSizeChange(val) {

          this.params.pageSize = val;
          this.refreshData();
        },
        handleCurrentChange(val) {

          this.params.pageNum = val;
          this.refreshData();
        },
        reset() {

          this.params = {

            startDate:null,
            endDate:null,
            authStatus:'-1',
            subsidyStatus:'0',
            keywordType:'0',
            keyword:null,
            pageNum:1,
            pageSize:10

          };
          this.time = "";
        },
        exportExcel(){

          const that = this;
          //this.dowloadFile = false;
          request.post('/charge/mgr/subsidy/exportPersonSubsidyList',that.params)
            .then(function (response) {

              window.location.href = response;
            })
            .catch(function (response) {
              console.log(response);
            });

        }
      },

      data() {

          return {

            options2: [{
              value: '-1',
              label: '全部'
            }, {
              value: '0',
              label: '审核中'
            }, {
              value: '1',
              label: '审核成功'
            },{
              value: '2',
              label: '审核失败'
            },{
              value: '5',
              label: '已激活'
            }],
            options3: [{
              value: '-1',
              label: '全部'
            }, {
              value: '1',
              label: '待发放'
            },
              {
                value: '2',
                label: '发放中'
              }, {
                value: '3',
                label: '已发放'
              }, {
                value: '4',
                label: '发放失败'
              }],
            options4: [{
              value: '0',
              label: '申请号'
            }, {
              value: '1',
              label: '车牌号'
            },
              {
                value: '2',
                label: '车主姓名'
              }],

            time:'',
            loading:false,
            params:{

              startDate:null,
              endDate:null,
              authStatus:'-1',
              subsidyStatus:'-1',
              keywordType:'0',
              keyword:null,
              pageNum:1,
              pageSize:10

            },
            data:{}
          }

      },
      mounted() {

        this.initData();
      }
    }
</script>

<style scoped>

  .statics span{

    margin-left: 13px;

  }

</style>

<style>

  .el-table thead{
    text-align: center !important;
    background: rgba(0, 0, 0, 0.11) !important;
    /*font-size: large;*/
  }
  .el-table th{
    text-align: center !important;
  }
  .el-table tr{
    text-align: center !important;
    background-color:rgba(255,255,255,.5)!important;
  }

  .downloadFile .el-dialog{

    width: 400px !important;

  }

</style>

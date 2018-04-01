<template>

  <el-card class="box-card">
    <div slot="header">
      <span>充电单查询</span>
    </div>

    <!--内容区-->
    <div class="content">


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

          <el-form-item label="预授权完成时间：">


          <!--  <el-date-picker type="date" v-model="params.startTime" placeholder="选择日期"  style="width: 120px;"></el-date-picker>
            至
            <el-date-picker type="date" v-model="params.endTime" placeholder="选择日期"  style="width: 120px;"></el-date-picker>-->
            <div class="block">
              <el-date-picker @change="datePick"
                v-model="time"
                value-format="yyyy-MM-dd"
                type="daterange"
                unlink-panels
                range-separator="至"
                start-placeholder="开始日期"
                end-placeholder="结束日期">
              </el-date-picker>

            </div>
          </el-form-item>

          <el-form-item label="充电运营商：">

            <el-select v-model="params.operationId" filterable placeholder="请选择" >
              <el-option
                v-for="item in opearations"
                :key="item.value"
                :label="item.label"
                :value="item.value">
              </el-option>
            </el-select>
          </el-form-item>



          <el-form-item label="桩类型：">

            <el-select v-model="params.pileType" placeholder="请选择" >
              <el-option
                v-for="item in pileType"
                :key="item.value"
                :label="item.label"
                :value="item.value">
              </el-option>
            </el-select>


          </el-form-item>

          <el-form-item label="补贴类型：">

            <el-select v-model="params.subsidyType" placeholder="请选择" >
              <el-option
                v-for="item in subsidyType"
                :key="item.value"
                :label="item.label"
                :value="item.value">
              </el-option>
            </el-select>


          </el-form-item>

          <el-form-item label="订单流水号：">

          <el-input  placeholder="输入流水单号" style="width: 150px;" v-model="params.orderNo"></el-input>
        </el-form-item>

          <el-form-item label="车辆使用人：">

            <el-input  placeholder="手机号" style="width: 150px;" v-model="params.phone"></el-input>
          </el-form-item>

          <el-form-item>
            <el-button type="primary" @click="paramChange">搜索</el-button>
            <el-button @click="reset()">重置</el-button>
            <el-button type="text">导出</el-button>
          </el-form-item>
        </el-form>
      </div>

      <!--统计数据汇总区-->
      <div class="statics">

        <div style="width: 700px;background-color: #dcdfe6;height: 180px;line-height: 60px;">

          <div>

            <span class="left">
            共搜索{{this.data.total}}条数据

          </span>

          </div>


          <div>

            <span class="center">

            充电车辆:{{this.data.carNum}}
          </span>

            <span class="center">

            充电总量/kw.h:{{this.data.chargeNum}}
          </span>
            <span class="center">

            碳排放量/kg:{{this.data.emissionNum}}
          </span>
            <span class="center">

            碳减排量/kg:{{this.data.reEmissionNum}}

          </span>

          </div>

          <div>

             <span class="right">

            充电金额/元:{{this.data.chargeAmt}}
          </span>
            <span class="right">

            补贴金额/元:{{this.data.subsidyAmt}}<sub>(抵扣积分: {{this.data.integral}})</sub>
          </span>

          </div>

        </div>

      </div>

      <!--列表展示区-->
      <div style="margin-top: 10px;">
        <el-table
          v-loading.fullscreen.lock="loading"
          :data="data.dataList"
          style="width: 100%">
          <el-table-column
            prop="orderNo"
            label="订单流水号"
            width="120">
          </el-table-column>
          <el-table-column
            prop="status"
            label="核证状态"
            width="120">
          </el-table-column>
          <el-table-column
            prop="carNo"
            label="车牌号"
            width="120">
          </el-table-column>

          <el-table-column
            prop="carType"
            label="补贴车辆类型"
            width="120">
          </el-table-column>
          <el-table-column
            prop="useType"
            label="使用性质"
            width="80">
          </el-table-column>
          <el-table-column
            prop="phone"
            label="手机号"
            width="120">
          </el-table-column>

          <el-table-column
            prop="userType"
            label="车主类型"
            width="80">
          </el-table-column>
          <el-table-column
            prop="power"
            label="充电电量/kw.h"
            width="120">
          </el-table-column>
          <el-table-column
            prop="emissionNum"
            label="碳排放量/kg"
            width="120">
          </el-table-column>

          <el-table-column
            prop="reEmissionNum"
            label="减排量/kg"
            width="120">
          </el-table-column>
          <el-table-column
            prop="duation"
            label="充电时长"
            width="80">
          </el-table-column>
          <el-table-column
            prop="integral"
            label="碳积分">
          </el-table-column>

          <el-table-column
            prop="totalAmt"
            label="充电总金额/元"
            width="120">
          </el-table-column>
          <el-table-column
            prop="realAmt"
            label="实付金额/元"
            width="120">
          </el-table-column>
          <el-table-column
            prop="subsidyAmt"
            label="补贴抵扣">
          </el-table-column>

          <el-table-column
            prop="payFinishTime"
            label="预授权完成时间"
            width="120">
          </el-table-column>
          <el-table-column
            prop="subsidyType"
            label="补贴类型"
            width="80">
          </el-table-column>
          <el-table-column
            prop="pileType"
            label="桩类型">
          </el-table-column>

          <el-table-column
            prop="stationName"
            label="充电站"
            width="80">
          </el-table-column>
          <el-table-column
            prop="operatorName"
            label="充电运营商"
            width="100">
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
      initData() {

        const that = this;
        this.loading = true;
        request.get('/charge/mgr/order/searchOperation/null')
          .then(function (response) {
            const dataList = response.dataList;
            for (let i = 0; i < dataList.length; ++i) {
              const opearation = {value: dataList[i].id, label: dataList[i].name};
              that.opearations.push(opearation);
            }
            console.log(that.opearations);
            //console.log(response);
          })
          .catch(function (response) {
            console.log(response);
          });

        setTimeout(function () {
          that.loading = false;
        },200)
        this.refreshData();
      },
      refreshData() {
        const that = this;
        request.post('/charge/mgr/order/searchOrderList', this.params)
          .then(function (response) {
            that.data = response;
            // console.log(response);
          })
          .catch(function (response) {
            console.log(response);
          });

      },
      datePick() {

        if (this.time != null && this.time != ""){
          const time = eval(this.time);
          if (time.length > 0) {
            this.params.startTime = time[0];
            this.params.endTime = time[1];
            //this.refreshData();

          }
        }

      },
      paramChange() {
        const that = this;
        this.loading = true;
        setTimeout(function () {
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
          startTime: null,
          endTime: null,
          operationId: "0",
          pileType: "0",
          subsidyType: "0",
          orderNo: null,
          phone: null,
          pageNum: 1,
          pageSize: 10
        };
        this.time = "";
      }
    },


    data() {

      return {

        pileType: [{
          value: '0',
          label: '全部'
        }, {
          value: '1',
          label: '直流桩'
        },
          {
            value: '2',
            label: '交流桩'
          }],
        subsidyType: [{
          value: '0',
          label: '全部'
        }, {
          value: '1',
          label: '16补贴'
        },
          {
            value: '-1',
            label: '未认证'
          }],

        opearations: [{value: "0", label: "全部"}],


        /*tableData: [{
          date: '2016-05-02',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-04',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1517 弄'
        }],*/
        time:"",
        loading:false,
        data: {

          pageNum: 1,
          pageSize: 20,
          total: 0,
          carNum: null,
          chargeNum: null,
          emissionNum: null,
          reEmissionNum: null,
          chargeAmt: null,
          subsidyAmt: null,
          integral: null,
          dataList: [],


        },

        params: {
          startTime: null,
          endTime: null,
          operationId: "0",
          pileType: "0",
          subsidyType: "0",
          orderNo: null,
          phone: null,
          pageNum: 1,
          pageSize: 10
        }
      }

    },
    mounted() {

      this.initData();
    }

  };
</script>

<style scoped>

  .statics span{

    margin-left: 13px;

  }

</style>

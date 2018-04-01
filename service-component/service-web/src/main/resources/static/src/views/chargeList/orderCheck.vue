<template>

<div id="div1">

  <el-card class="box-card">
    <div slot="header">
      <span>日订单核算</span>
    </div>

<!--内容区-->
    <div class="content">

      <!--统计数据汇总区-->
      <div class="statics">

        <div class="squared">

          <h3>已处理文件数</h3>
          <span style="font-size: 48px">{{staticsData.handleNum}}</span>
          <br/>
       </div>

        <div class="squared">

          <h3>当前异常文件数</h3>
          <span style="font-size: 48px;color: red;">{{staticsData.errNum}}</span>
          <br/>
          <el-button type="primary">{{buttonVal}}</el-button>
        </div>

        <div class="squared">
          <h3>当前核算正确文件数</h3>
          <span style="font-size: 48px">{{staticsData.correctNum}}</span>
          <br/>
          <el-button type="primary" @click="dialogFormVisible = true" >下载核算表</el-button>

        </div>

        <div class="clearfix"></div>
      </div>


      <!--文档搜索、按钮操作区-->
      <div style="margin-top: 25px;">


        <el-form :inline="true" style="width:100%;" size="mini">

          <el-form-item label="文件日期：">

              <!--<el-date-picker type="date" placeholder="选择日期"  style="width: 120px;"></el-date-picker>
                至
              <el-date-picker type="date" placeholder="选择日期"  style="width: 120px;"></el-date-picker>-->
            <el-date-picker
                            v-model="time"
                            value-format="yyyy-MM-dd"
                            type="daterange"
                            unlink-panels
                            range-separator="至"
                            start-placeholder="开始日期"
                            end-placeholder="结束日期">
            </el-date-picker>
          </el-form-item>

          <el-form-item label="状态：">
            <el-select v-model="params.status">
              <el-option
                v-for="item in options"
                :key="item.value"
                :label="item.label"
                :value="item.value">
              </el-option>
            </el-select>
          </el-form-item>

          <el-form-item>
            <el-button type="primary" @click="refreshData">搜索</el-button>
            <el-button @click="reset()">重置</el-button>
          </el-form-item>

          <el-form-item>
            <el-button type="primary"  @click="getExceptionFileData">批量手动核算</el-button>
          </el-form-item>
        </el-form>
      </div>


      <!--列表展示区-->
      <div style="margin-top: 10px;" class="list">

        <el-table
          v-loading.fullscreen.lock="loading"
          :data="data.dataList"
          style="width: 100%">
          <el-table-column
          prop="fileDate"
          label="文件日期"
          width="100"
          >
          </el-table-column>
          <el-table-column
            prop="fileName"
            label="文件名"
            width="160">
          </el-table-column>
          <el-table-column
            prop="size"
            label="大小(M)"
            width="80">
          </el-table-column>


          <el-table-column
            prop="md5"
            label="MD5"
            width="80">
          </el-table-column>
          <el-table-column
            prop="totalNum"
            label="订单总数"
            width="80">
          </el-table-column>
          <el-table-column
            prop="subsidyNum"
            label="补贴订单数"
            width="100">
          </el-table-column>



          <el-table-column
            prop="subsidyAmt"
            label="补贴总额/元"
            width="100">
          </el-table-column>
          <el-table-column
            prop="status"
            label="校验状态"
            width="80">
          </el-table-column>
          <el-table-column
            label="操作"
            width="120">
            <template slot-scope="scope" >

              <div v-if="scope.row.status == '核算正确'">
                <el-button type="text" size="small" @click="readCurrChangeData(scope.row.fileDate)">查看变更数据</el-button>
                <el-button type="text" size="small" >查看变更订单</el-button>
              </div>

              <el-button type="text" size="small" v-else-if="scope.row.status == 'MD5异常'" @click="dowloadFile = true">下载核算源文件</el-button>
              <el-button type="text" size="small" v-else-if="scope.row.status == '下载失败'" @click="showWindow(scope.row.fileDate)">手动核算</el-button>
              <el-button type="text" size="small" v-else-if="scope.row.status == '数据异常'">下载数据异常文件</el-button>
              <el-button type="text" size="small" v-else-if="scope.row.status == '内部错误'" @click="displayErrorData(scope.row.fileDate)">查看内部错误</el-button>
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


    <div class="messageBox">

      <!--下载核算表-->
      <div class="downloadFile">
      <el-dialog title="选择日期" :visible.sync="dialogFormVisible">

        <el-form>

          <el-form-item label="文件日期" :label-width="formLabelWidth">
            <el-date-picker type="date" placeholder="选择日期"  style="width: 160px;"></el-date-picker>
          </el-form-item>

        </el-form>
        <div slot="footer" class="dialog-footer">
          <el-button type="primary" >下载该文件</el-button>
          <el-button @click="dialogFormVisible = false">关闭</el-button>
        </div>
      </el-dialog>
      </div>

     <!-- 批量手动核算-->
      <div class="batchChecks">

        <el-dialog title="选择手动核算日期" :visible.sync="batchCheck">


          <el-table
            :data="exceptionFileData.dataList"
            tooltip-effect="dark"
            style="width: 100%;"
            @selection-change="handleSelectionChange">
            <el-table-column
              type="selection"
              width="60">
            </el-table-column>
            <el-table-column
              prop="fileDate"
              label="文件日期"
              width="100">
              <!--<template slot-scope="scope">{{ scope.row.date }}</template>-->
            </el-table-column>
            <el-table-column
              prop="status"
              label="核算状态"
              width="100">
            </el-table-column>

          </el-table>


          <div slot="footer" class="dialog-footer">
            <el-button type="primary" @click="batchChecks">批量核算</el-button>
            <el-button @click="batchCheck = false">关闭</el-button>
          </div>
        </el-dialog>

      </div>

      <!--查看变更数据-->
      <div class="readChangeData">

        <el-dialog :title="now" :visible.sync="readChangeData">


        <!--  <el-table
            :data="changedData"
            tooltip-effect="dark"
            style="width: 100%"
           >-->
            <el-table
              :data="changedData"
              style="width: 100%">
            <el-table-column
              prop="orderNo"
              label="订单号"
              width="100">
              <!--<template slot-scope="scope">{{ scope.row.date }}</template>-->
            </el-table-column>
            <el-table-column
              prop="power"
              label="充电量"
              width="80">
            </el-table-column>
            <el-table-column
              prop="totalAmt"
              label="充电金额(元)"
              width="100">
            </el-table-column>
            <el-table-column
              prop="serviceAmt"
              label="服务费(元)"
              width="100">
            </el-table-column>
            <el-table-column
              prop="subsidyAmt"
              label="补贴额度(元)"
              width="100">
            </el-table-column>
            <el-table-column
              prop="integral"
              label="碳积分"
              width="80">
            </el-table-column>
            <el-table-column
              prop="carNo"
              label="充电车牌"
              width="100">
            </el-table-column>
            <el-table-column
              prop="operatorNo"
              label="运行商ID"
              width="100">
            </el-table-column>
            <el-table-column
              prop="operatorName"
              label="运行商名称"
              width="100">
            </el-table-column>
            <el-table-column
              prop="operat"
              label="变更操作"
              width="100">
            </el-table-column>
          </el-table>

        </el-dialog>

      </div>

      <!--下载核算文件-->
      <div class="downloadFile">

        <el-dialog title="选择日期" :visible.sync="dowloadFile">

          文件日期：
          <el-date-picker
            v-model="months"
            type="month"
            value-format="yyyy-MM"
            placeholder="默认当前月，只选择年月">
          </el-date-picker>

          <div slot="footer" class="dialog-footer">
            <el-button type="primary" @click="downloadFile">下载核算文件</el-button>
            <el-button @click="dowloadFile = false">关闭</el-button>
          </div>
        </el-dialog>

      </div>

      <!--手动核证-->
      <div class="downloadFile">

        <el-dialog title="手动核证" :visible.sync="manualAccount">

          文件日期：{{manualAccountData}}
          <div slot="footer" class="dialog-footer">
            <el-button type="primary" @click="manualAccountFile">确定核证</el-button>
            <el-button @click="manualAccount = false">关闭</el-button>
          </div>
        </el-dialog>

      </div>

      <!--查看内部错误-->
      <div class="browserErr">

        <el-dialog :title="errorDate" :visible.sync="showErrorData">

          <el-table
            :data="errorData.dataList"
            style="width: 100%">
            <el-table-column
              prop="name"
              label="代理商"
              width="80">
              <!--<template slot-scope="scope">{{ scope.row.date }}</template>-->
            </el-table-column>
            <el-table-column
              prop="operaNum"
              label="充电运营商数"
              width="100">
            </el-table-column>
            <el-table-column
              prop="totalNum"
              label="总订单"
              width="80">
            </el-table-column>
            <el-table-column
              prop="subsidyNum"
              label="补贴订单"
              width="80">
            </el-table-column>
            <el-table-column
              prop="subsidyAmt"
              label="补贴金额"
              width="100">
            </el-table-column>

          </el-table>
        </el-dialog>

      </div>

    </div>


  </el-card>


</div>


</template>

<script>
  import request from '@/utils/request'
    export default {
        name: "order-check",

      data() {
        return {

          options: [{
            value: '0',
            label: '全部'
          }, {
            value: '1',
            label: '下载中'
          }, {
            value: '2',
            label: '核算中'
          }, {
            value: '3',
            label: '核算正确'
          }, {
            value: '4',
            label: 'MD5异常'
          },
            {
              value: '5',
              label: '下载失败'
            }, {
              value: '6',
              label: '数据异常'
            }, {
              value: '7',
              label: '内部错误'
            }],
          dialogFormVisible: false,
          batchCheck:false,
          readChangeData: false,
          dowloadFile: false,
          manualAccount: false,
          showErrorData:false,
          formLabelWidth: '100px',
          tableData3:[{
            date:'2018-02-06',
            status:'MD5异常'

          }],
          loading:false,
          time:"",
          now:"",
          errorDate:"",
          months:new Date().getFullYear()+"-"+(new Date().getMonth()+1),
          manualAccountData:"",
          changedData:[],
          exceptionFileData:{},
          errorData:{},
          multipleSelection: [],
          buttonVal:"查看",
          params:{//查询参数

            startTime:null,
            endTime:null,
            status:"0",
            pageNum:1,
            pageSize:10

          },

          data:{


            pageNum:1,
            pageSize:10,
            total:0,
            startTime:null,
            endTime:null,
            status:null,
            dataList:[]

      },
          staticsData:{
            handleNum: 0,
            errNum: 0,
            correctNum: 0
          },

        }
      },
      methods:{

          refreshData(){

            const that = this;
            if (this.time != null && this.time != ""){
              const time = eval(this.time);
              if (time.length > 0) {
                this.params.startTime = time[0];
                this.params.endTime = time[1];
              }
            }
            this.loading = true;

           /* const loading = this.$loading({
              lock: true,
              text: 'Loading',
              spinner: 'el-icon-loading',
              background: 'rgba(0, 0, 0, 0.1)',
              target: document.querySelector('.list')
            });*/
            setTimeout(function () {
              that.loading = false;
            },200);
            request.post('/charge/mgr/order/searchOrderFileList', this.params)
              .then(function (response) {
                that.data = response;
                // console.log(response);
              })
              .catch(function (response) {
                console.log(response);
              });

           /* this.$nextTick(() => {
              loading.close();
            });*/

          },
        loadStatics(){
          const that = this;
          request.post('/charge/mgr/order/getOrderFileStat')
            .then(function (response) {
              that.staticsData = response;
              // console.log(response);
            })
            .catch(function (response) {
              console.log(response);
            });
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

          this.params = {//查询参数

            startTime:null,
            endTime:null,
            status:"0",
            pageNum:1,
            pageSize:10

          };
          this.time = "";
        },
        readCurrChangeData(date){
            this.now = "当日变更数据    文件日期："+date;
           const that = this;
           // alert(date);
          request.get('/charge/mgr/order/getFileUpdateList/'+date)
            .then(function (response) {
              that.changedData = response.dataList;
              // console.log(response);
            })
            .catch(function (response) {
              console.log(response);
            });
          this.readChangeData = true;
        },
          downloadFile(){
            const that = this;
            //this.dowloadFile = false;
            request.get('/charge/mgr/order/downloadAccFile/'+that.months)
              .then(function (response) {

                  window.location.href = response;

              })
              .catch(function (response) {
              console.log(response);
            });
            this.dowloadFile = false;
          },
        showWindow(date){

          this.manualAccount = true;
          this.manualAccountData = date;
          //alert(manualAccountData);

        },
        manualAccountFile(){

          const that = this;
          request.get('/charge/mgr/order/manualAccFile/'+that.manualAccountData)
            .then(function (response) {

              if(response == 0){
                //that.manualAccount = false;
                that.refreshData();
              }else{
                //that.manualAccount = false;
                that.$alert('无可下载文件，请联系U享充电', '', {
                  confirmButtonText: '关闭',
                  /*callback: action => {

                  }*/
                });
              }


            })
            .catch(function (response) {
              console.log(response);
            });
          that.manualAccount = false;
        },
        getExceptionFileData(){
          this.batchCheck = true;
          const that = this;
          //this.dowloadFile = false;
          request.get('/charge/mgr/order/getErrorDateList')
            .then(function (response) {

              that.exceptionFileData = response;
            })
            .catch(function (response) {
              console.log(response);
            });
          //this.batchCheck = false;

        },
        handleSelectionChange(val) {
          this.multipleSelection = val;
        },
        batchChecks(){

          const that = this;
          //this.multipleSelection = [];
          let checkedItems = this.multipleSelection;
          let fileDates = [];
          for(let i=0;i<checkedItems.length;++i){
            fileDates.push(checkedItems[i].fileDate);
          }
          let fileDateStr = fileDates.join(",");
          //alert(fileDateStr);
          request.get('/charge/mgr/order/manualAccMulFile/'+fileDateStr)
            .then(function (response) {

              if(response == 0){
                //that.manualAccount = false;
                that.refreshData();
              }else{
                //that.manualAccount = false;
                that.$alert('核算失败', '', {
                  confirmButtonText: '关闭',
                  /*callback: action => {

                  }*/
                });
              }
            })
            .catch(function (response) {
              console.log(response);
            });
          this.batchCheck = false;

        },
        displayErrorData(date){
          this.errorDate = "内部错误情况        文件日期: "+date;
          this.showErrorData = true;
          const that = this;
          //this.dowloadFile = false;
          request.get('/charge/mgr/order/getBugInfo/'+date)
            .then(function (response) {

              that.errorData = response;
            })
            .catch(function (response) {
              console.log(response);
            });

        }
      },
      showExceptionFiles(){

          if(this.buttonVal === '查看'){

          //TODO
          }

      },
      mounted(){

          this.refreshData();
          this.loadStatics();

      }
    }
</script>

<style scoped>

  .squared{
    margin-left: 30px;
    /*display: inline-block;*/
   /* float: left;*/
    width: 260px;
    height: 160px;
    border: solid 1px gray;
    border-radius: 3%;
    text-align: center;
    float: left;
  }
  .clearfix{

    clear: both;

  }
  h3 {
    padding: 0;
    margin: 10px 0 2px 0;

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



  .batchChecks .el-dialog{

    width: 300px;

  }
  .readChangeData .el-dialog{
    width: 75%;

  }
  .downloadFile .el-dialog{
    width: 300px;

  }
  .browserErr .el-dialog{
    width: 500px;

  }
  .el-button+.el-button {
    margin-left: 0;
  }
</style>





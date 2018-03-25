<template>
	<div class="gdf-panel">
		<!--查询区域 -->
		<div class="gdf-search">
			<el-form :inline="true" :model="param" class="demo-form-inline">
				<el-form-item label="">
					<el-input v-model="param.clientId" placeholder="请输入用户姓名"></el-input>
				</el-form-item>
				<el-form-item>
					<el-button type="primary" @click="onSubmit">查询</el-button>
				</el-form-item>
			</el-form>
		</div>
		<!-- 表格区域-->
		<el-table :data="tableData" border style="width: 100%">
			<el-table-column prop="id" label="用户id" width="180">
			</el-table-column>
			<el-table-column prop="createDateStr" label="创建时间" width="180">
			</el-table-column>
			<el-table-column prop="username" label="用户名称 ">
			</el-table-column>
			<el-table-column prop="enabled" label="禁用状态">
				  <template slot-scope="scope">
					<span v-if="scope.row.enabled">true</span>    
					<span v-else> false</span>
				</template>
			</el-table-column>
		 <el-table-column label="操作">
	      <template slot-scope="scope">
	        <el-button
	          size="mini"
	          @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
	        <el-button
	          size="mini"
	          type="danger"
	          @click="handleDelete(scope.$index, scope.row)">禁用</el-button>
	      </template>
    </el-table-column>
		</el-table>
		<!-- 表格区域-->
		<!--分页开始-->
		<div class="gdf-pagination">
			<el-pagination :current-page="1" :page-size="pageSize" :page-sizes="[10, 20,30,50, 100]" layout="total, sizes, prev, pager, next, jumper" :total="total" style="float:right" @size-change="handleSizeChange" @current-change="handleCurrentChange">
			</el-pagination>
		</div>
		<!--分页，结束 -->
	</div>
</template>

<script>
	import { getUserFindAll } from '@/api/user'
	export default {
		data() {
			return {
				url:'',
				//当前页码
				curr: 1,
				//每页数量
				pageSize: 10,
				param: {
					clientId:'',
					
				},
				tableData: [],

				total: 0,
			}
		},
		mounted() {
			this.initData()
		},
		methods: {
			initData() {
				getUserFindAll(this.curr, this.pageSize,this.param).then(response => {
					this.tableData = response.list;
					this.total = response.total;
				})
			},
			handleSizeChange(val) {
				console.log(`每页 ${val} 条`);
			},
			handleCurrentChange(val) {
				this.curr = val;
				this.initData();
				console.log(`当前页: ${val}`);
			},
			onSubmit(){
				
			},
			handleEdit(){
				
			},
			handleDelete(){
				
			},
			
		}
	}
</script>
<template>
	<div class="gdf-panel">
		<!--查询区域 -->
		  <el-button type="primary" @click="openDialogMain()">增加</el-button>
		
		<el-tree :data="menuData" :props="defaultProps" node-key="id" default-expand-all :expand-on-click-node="false" :render-content="renderContent">
		</el-tree>

		<el-dialog title="顶级菜单信息" :visible.sync="dialogVisibleMain">
			<el-form :model="item">
				<el-form-item label="名称" label-width="60px">
					<el-input v-model="item.label" auto-complete="off"></el-input>
				</el-form-item>
				<el-form-item label="key" label-width="60px">
						<el-input v-model="item.key" auto-complete="off"></el-input>
				</el-form-item>
			</el-form>
			<div slot="footer" class="dialog-footer">
				<el-button @click="dialogVisibleMain = false">取 消</el-button>
				<el-button type="primary" @click="handleSubmit">确 定</el-button>
			</div>
		</el-dialog>


		<el-dialog title="菜单信息" :visible.sync="dialogVisible">
			<el-form :model="item">
				<el-form-item label="名称" label-width="100px">
					<el-input v-model="item.label" auto-complete="off"></el-input>
				</el-form-item>
				<el-form-item label="路径" label-width="100px">
						<el-input v-model="item.path" auto-complete="off"></el-input>
				</el-form-item>
				<el-form-item label="图标" label-width="100px">
						<el-input v-model="item.icon" auto-complete="off"></el-input>
				</el-form-item>
			</el-form>
			<div slot="footer" class="dialog-footer">
				<el-button @click="dialogVisible = false">取 消</el-button>
				<el-button type="primary" @click="handleSubmit">确 定</el-button>
			</div>
		</el-dialog>
		
		<el-dialog title="编辑菜单信息" :visible.sync="dialogVisibleEdit">
			<el-form :model="item">
				<el-form-item label="名称" label-width="100px">
					<el-input v-model="item.label" auto-complete="off"></el-input>
				</el-form-item>
				<el-form-item label="路径" label-width="100px">
						<el-input v-model="item.path" auto-complete="off"></el-input>
				</el-form-item>
				<el-form-item label="图标" label-width="100px">
						<el-input v-model="item.icon" auto-complete="off"></el-input>
				</el-form-item>
			</el-form>
			<div slot="footer" class="dialog-footer">
				<el-button @click="dialogVisibleEdit = false">取 消</el-button>
				<el-button type="primary" @click="handleEdit">确 定</el-button>
			</div>
		</el-dialog>
		
	</div>
</template>
<script>
	import { getMenuFindAll,menuSave,menuUpdate } from '@/api/user'
	import { Message, MessageBox } from 'element-ui'
	let id = 1000;

	export default {
		data() {
			return {
				menuData: [],
				defaultProps: {
					children: 'children',
					label: 'label'
				},
				item: {
					id:'',
					redirect:'',
					path:'',
					label:'',
					pid:'',
					key:'',
					icon:''
				},
				dialogVisibleMain:false ,
				dialogVisible:false ,
				dialogVisibleEdit :false 
			}
		},
		mounted() {
			this.initData()
		},
		methods: {
			initData() {
				getMenuFindAll().then(response => {
					console.log(response)
					this.menuData = response;
				})
			},

			append(data) {
				const newChild = {
					id: id++,
					label: 'testtest',
					children: []
				};
				if(!data.children) {
					this.$set(data, 'children', []);
				}
				data.children.push(newChild);
			},

			remove(node, data) {
				const parent = node.parent;
				const children = parent.data.children || parent.data;
				const index = children.findIndex(d => d.id === data.id);
				children.splice(index, 1);
			},
			//顶级菜单增加
			openDialogMain() {
				this.resetData();
				this.item.pid= -1;
				this.dialogVisibleMain=true;
			},
			//子集菜单增加
			openDialogAdd(data) {
				this.resetData();
				this.item.pid = data.id;
				this.dialogVisible=true;
			},
			//菜单编辑
			openDialogEdit(data) {
				this.resetData();
				this.item.id = data.id;
				this.item.label = data.label;
				this.item.path = data.path;
				this.item.key = data.key;
				this.item.icon = data.icon;
				this.item.pid = data.pid;
				this.dialogVisibleEdit=true;
			},
			resetData (){
				this.item.id = '';
				this.item.redirect = '';
				this.item.path = '';
				this.item.label = '';
				this.item.pid = '';
				this.item.key = '';
				this.item.icon = '';
				
			},
			closeDialog(){
				this.dialogVisibleMain = false;
				this.dialogVisible=false;
				this.dialogVisibleEdit=false;
			},
			handleSubmit() {
				menuSave(this.item).then(response => {
					  Message({
						        message: response,
						        type: 'success',
						        duration: 5 * 1000
     						 })
					this.initData();
					this.closeDialog();
				})
			},
			handleEdit() {
				menuUpdate(this.item).then(response => {

					  Message({
						        message: response,
						        type: 'success',
						        duration: 5 * 1000
     						 })
					this.initData();
					this.closeDialog();
				})
			},
			renderContent(h, {
				node,
				data,
				store
			}) {
				return(
					<span style="flex: 1; display: flex; align-items: center; justify-content: space-between; font-size: 14px; padding-right: 8px;">
            <span>
              <span>{node.label}</span>
            </span>
            <span>
              <el-button style="font-size: 12px;" type="text" on-click={ () => this.openDialogAdd(data) }>新增</el-button>
              <el-button style="font-size: 12px;" type="text" on-click={ () => this.openDialogEdit(data) }>编辑</el-button>
              <el-button style="font-size: 12px;" type="text" on-click={ () => this.remove(node, data) }>删除</el-button>
            </span>
          </span>);
			}
		},

	};
</script>
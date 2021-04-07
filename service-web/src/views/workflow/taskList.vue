<template>
    <el-card class="box-card">
        <el-row>
            <el-col :span="24">
                <el-table
                        :data="tableData"
                        border
                        style="width: 100%">
                    <el-table-column
                            prop="date"
                            label="日期"
                            width="180">
                    </el-table-column>
                    <el-table-column
                            prop="name"
                            label="姓名"
                            width="180">
                    </el-table-column>
                    <el-table-column
                            prop="address"
                            label="地址">
                    </el-table-column>
                </el-table>
            </el-col>
            <el-col :span="6" :offset="18">
                <el-pagination
                        background
                        layout="prev, pager, next"
                        :total="1000">
                </el-pagination>
            </el-col>
        </el-row>

    </el-card>
</template>

<script>
    import {page} from '@/api/workflow'

    export default {
        name: "taskList",
        data() {
            return {
                tableData: []
            }
        },
        mounted() {
            this.init();
        },
        methods: {
            init(){
                page().then(response => {
                console.log(response)
                }).catch(error => {
                    console.log(error);
                })
            },

        }
    }
</script>

<style scoped>

</style>
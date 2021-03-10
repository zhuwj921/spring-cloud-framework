<template>
    <div>
        <el-card class="box-card">
            <el-row>
                <el-col :span="8" :offset="8">
                    <el-steps :active="active" finish-status="success">
                        <el-step title="请假"></el-step>
                        <el-step title="审批"></el-step>
                        <el-step title="完成"></el-step>
                    </el-steps>
                </el-col>
            </el-row>
            <el-tabs v-model="activeName">
                <el-tab-pane label="" name="first">
                    <el-row>
                        <el-col :span="8" :offset="8">
                            <el-form label-width="100px" :model="holidayApply">
                                <el-form-item label="请假时间">
                                    <el-date-picker
                                            v-on:change="handleSelectTime"
                                            v-model="holidaySelectTime"
                                            type="datetimerange"
                                            range-separator="至"
                                            start-placeholder="开始时间"
                                            end-placeholder="结束时间">
                                    </el-date-picker>
                                </el-form-item>
                                <el-form-item >
                                    <el-input placeholder="共（小时）"   v-model="holidayApply.hours"></el-input>
                                </el-form-item>
                                <el-form-item label="请假理由">
                                    <el-input placeholder="请假理由" v-model="holidayApply.reason"></el-input>
                                </el-form-item>
                                <el-form-item label="审批人">
                                    <el-input placeholder="审批人" v-model="holidayApply.assignee"></el-input>
                                </el-form-item>
                                <el-form-item>
                                    <el-button type="primary" @click="handleLeave">提交申请</el-button>
                                </el-form-item>
                            </el-form>
                        </el-col>
                    </el-row>

                </el-tab-pane>
                <el-tab-pane label="" name="second">审批</el-tab-pane>
                <el-tab-pane label="" name="third">完成</el-tab-pane>
            </el-tabs>
        </el-card>

    </div>
</template>

<script>
    export default {
        name: "index",
        data() {
            return {
                active: 0,
                activeName: 'first',
                holidayApply: {
                    startTime: null,
                    endTime: null,
                    reason: '',
                    hours: null,
                    assignee: null
                },
                holidaySelectTime:'',
            };
        },

        methods: {
            handleSelectTime(holidaySelectTime){
                console.log(holidaySelectTime)
                let startTime = holidaySelectTime[0];
                let endTime = holidaySelectTime[1];
            },
            handleLeave(){
                console.log(this.holidaySelectTime[0])
                console.log(this.holidayApply)
            }


        }
    }
</script>

<style lang="less" scoped>

</style>
<template>
    <div class="login-container">
        <div class="login-header">
            网站学习 欢迎登录
        </div>
        <div class="login-warp">
            <div class="login-form">
                <div class="login-tab">
                    账号登录
                </div>
                <div class="login-box">
                    <el-form :model="loginForm" :rules="loginRules" ref="loginRuleForm">
                        <el-form-item prop="username">
                            <el-input v-model="loginForm.username" placeholder="邮箱/用户名/登录手机">
                                <template #prepend><i class="el-icon-s-custom"></i></template>
                            </el-input>
                        </el-form-item>
                        <el-form-item prop="password">
                            <el-input v-model="loginForm.password" placeholder="密码">
                                <template #prepend><i class="el-icon-lock"></i></template>
                            </el-input>
                        </el-form-item>

                    </el-form>
                    <div class="login-forget">
                        <a>忘记密码</a>
                    </div>
                </div>
                <div @click="handleLogin" class="login-button">
                    <el-button type="danger">登 录</el-button>
                </div>
            </div>

        </div>
        <div class="login-links">
            <a>关于我们</a>|
            <a>联系我们</a>|
            <a>人才招聘</a>|
            <a>商家入驻</a>|
            <a>广告服务</a>|
            <a>友情链接</a>|
            <a>销售联盟</a>|
            <a>学习社区</a>
        </div>
    </div>
</template>
<script>
    import {login} from '@/api/login'
    import {getToken, setToken, removeToken} from '@/utils/token'

    export default {
        name: 'Login',
        components: {},
        data() {
            return {
                loginForm: {
                    username: 'sysadmin',
                    password: '123456789',
                },
                loginRules: {
                    username: [
                        {required: true, message: '请输入账号', trigger: 'blur'},
                    ],
                    password: [
                        {required: true, message: '请输入密码', trigger: 'blur'},
                    ],
                }
            }
        },
        computed: {},
        watch: {},
        mounted() {

        },
        methods: {
            handleLogin() {
                console.log(this.loginForm);
                this.$refs["loginRuleForm"].validate((valid) => {
                    if (valid) {
                        const data = login(this.loginForm)
                        setToken(data);
                        this.$router.push('/mall')
                    } else {
                        console.log('error submit!!');
                        return false;
                    }
                });
            }
        },
    }
</script>
<style lang="less">
    .login-container {
        display: flex;
        height: 100vh;
        width: 100vw;
        justify-content: center;
        align-content: flex-start;
        flex-wrap: wrap;

        .login-header {
            height: 110px;
            width: 100vw;
            padding: 30px 30px 30px 100px;
            font-size: 24px;
            color: #2f3430;
        }

        .login-warp {
            margin-top: 10px;
            height: 400px;
            width: 100vw;
            background: #e93854 url("../../assets/login/bg.jpg") no-repeat;
            background-size: 100% 100%;

            .login-form {
                float: right;
                margin-right: 20px;
                margin-top: 10px;
                margin-bottom: 10px;
                height: 360px;
                width: 350px;
                background: #fff;
                display: flex;
                justify-content: center;
                flex-wrap: wrap;
                border-radius: 5px;

                .login-tab {
                    width: 350px;
                    height: 55px;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    border-bottom: 1px solid #f4f4f4;
                    text-decoration: none;
                    outline: rgb(109, 109, 109) none 0;
                    font-size: 18px;
                    font-family: "microsoft yahei", serif;
                }

                .login-box {
                    width: 350px;
                    height: 180px;
                    padding: 15px;

                    .login-forget {
                        display: flex;
                        width: 100%;
                        flex-direction: row-reverse;

                        a {
                            color: #606266;
                            font-size: 16px;
                        }

                        a:hover {
                            color: #E4393C !important;
                            text-decoration: underline !important;
                        }
                    }
                }

                .login-button {
                    height: 35px;
                    margin: 15px;

                    button {
                        border: 1px solid #e85356;
                        display: block;
                        width: 302px;
                        background: #e4393c;
                        color: #fff;
                        font-size: 20px;
                        font-family: 'Microsoft YaHei', serif;
                    }
                }
            }
        }

        .login-links {
            height: 60px;
            padding: 10px;
            display: flex;
            font-size: 14px;
            justify-content: space-between;
            margin-top: 18px;
            width: 600px;

        }

    }
</style>

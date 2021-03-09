<template>
    <div class="mall-container">
        <div class="header-panel">
            <div class="img-container"></div>
        </div>
        <div class="header-shortcut">
            <div class="navigation">
                <div class="left">
                    广东
                </div>
                <div class="right">
                    商城
                </div>
            </div>
        </div>
        <div class="header-search">
            <div class="area">
                <div class="search">
                    <el-input placeholder="请输入搜索内容" v-model="searchText" class="input-with-select">
                        <template #append>
                            <el-button @click="handleSearch" icon="el-icon-search"></el-button>
                        </template>
                    </el-input>
                </div>
            </div>
        </div>
        <div class="center-panel">
            <div class="center-navigation">
                <div class="box-1">
                    <el-breadcrumb separator="/">
                        <el-breadcrumb-item>手机</el-breadcrumb-item>
                        <el-breadcrumb-item>电脑</el-breadcrumb-item>
                        <el-breadcrumb-item>办公</el-breadcrumb-item>
                    </el-breadcrumb>
                    <el-breadcrumb separator="/">
                        <el-breadcrumb-item>手机</el-breadcrumb-item>
                        <el-breadcrumb-item>电脑</el-breadcrumb-item>
                        <el-breadcrumb-item>办公</el-breadcrumb-item>
                    </el-breadcrumb>
                    <el-breadcrumb separator="/">
                        <el-breadcrumb-item>手机</el-breadcrumb-item>
                        <el-breadcrumb-item>电脑</el-breadcrumb-item>
                        <el-breadcrumb-item>办公</el-breadcrumb-item>
                    </el-breadcrumb>
                </div>
                <div class="box-2">
                    <img src="../../assets/mall/flow.jpg">
                </div>
                <div class="box-3">
                    <img src="../../assets/mall/drink.jpg">
                    <img src="../../assets/mall/drink.jpg">
                    <img src="../../assets/mall/drink.jpg">
                </div>
                <div class="box-4"></div>
            </div>
        </div>
        <div class="seckill-panel">
            <div class="seckill-navigation">
                <div class="seckill-box-desc">
                    <div class="seckill-title">商场秒杀</div>
                    <div class="countdown-desc"><strong>20:00</strong>点场 倒计时</div>
                    <span class="countdown-main">
                        <span class="timer">00</span>
                        <span class="timer">46</span>
                        <span class="timer second">10</span>
                    </span>
                </div>
                <div class="seckill-box">
                    <div class="seckill-item__image">
                        <img src="../../assets/mall/phone.jpg">
                    </div>
                    <h6 class="seckill-item__name">小米10青春版 5G手机 蓝莓薄荷 全网通 8GB+256GB</h6>
                    <div class="seckill-item__price">
                        <span class="price-miaosha">
                            <i>¥</i>
                            <span>2248.00</span>
                        </span>
                        <span class="price-origin">
                            <i>¥</i>
                            <span>2999.00</span>
                        </span>
                    </div>
                </div>
                <div class="seckill-box">
                    <div class="seckill-item__image">
                        <img src="../../assets/mall/phone.jpg">
                    </div>
                    <h6 class="seckill-item__name">小米10青春版 5G手机 蓝莓薄荷 全网通 8GB+256GB</h6>
                    <div class="seckill-item__price">
                        <span class="price-miaosha">
                            <i>¥</i>
                            <span>2248.00</span>
                        </span>
                        <span class="price-origin">
                            <i>¥</i>
                            <span>2999.00</span>
                        </span>
                    </div>
                </div>
                <div class="seckill-box">
                    <div class="seckill-item__image">
                        <img src="../../assets/mall/phone.jpg">
                    </div>
                    <h6 class="seckill-item__name">小米10青春版 5G手机 蓝莓薄荷 全网通 8GB+256GB</h6>
                    <div class="seckill-item__price">
                        <span class="price-miaosha">
                            <i>¥</i>
                            <span>2248.00</span>
                        </span>
                        <span class="price-origin">
                            <i>¥</i>
                            <span>2999.00</span>
                        </span>
                    </div>
                </div>
                <div class="seckill-box">
                    <div class="seckill-item__image">
                        <img src="../../assets/mall/phone.jpg">
                    </div>
                    <h6 class="seckill-item__name">小米10青春版 5G手机 蓝莓薄荷 全网通 8GB+256GB</h6>
                    <div class="seckill-item__price">
                        <span class="price-miaosha">
                            <i>¥</i>
                            <span>2248.00</span>
                        </span>
                        <span class="price-origin">
                            <i>¥</i>
                            <span>2999.00</span>
                        </span>
                    </div>
                </div>
                <div class="seckill-box">
                    <div class="seckill-item__image">
                        <img src="../../assets/mall/phone.jpg">
                    </div>
                    <h6 class="seckill-item__name">小米10青春版 5G手机 蓝莓薄荷 全网通 8GB+256GB</h6>
                    <div class="seckill-item__price">
                        <span class="price-miaosha">
                            <i>¥</i>
                            <span>2248.00</span>
                        </span>
                        <span class="price-origin">
                            <i>¥</i>
                            <span>2999.00</span>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="recommend">
            <h3 class="recommend-title">为你推荐</h3>
        </div>
        <div class="recommend-panel">
            <div class="recommend-list">
                <div class="recommend-item" v-for="i in 10">
                    <div class="recommend-item-img">
                        <img src="../../assets/mall/product.jpg">
                    </div>
                    <div class="recommend-item-info">
                        <p class="recommend-item-info-name">适用宝马1系3系5系7系雨刮器X1/X3/X5/X6/520/525/730/760/雨刷片
                            X1【09-15款】</p>
                        <div class="recommend-item-info-price">
                            <div class="recommend-item-info-mod-price">
                                <i>¥</i>
                                <span class="price_txt">88.<span class="price_txt-decimal">00</span></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    import {ref, defineComponent} from 'vue'

    export default defineComponent({
        name: 'Mall',
        components: {},
        setup() {
            return {
                searchText: ref(''),
            }
        },
        mounted() {
            this.init()
        },
        methods: {
            init() {
                console.log("init")
            },
            handleSearch() {
                console.log(this.searchText)
            }
        },
    })
</script>
<style lang="less" scoped>
    .mall-container {
        display: flex;
        display: -webkit-flex; /* Safari */
        flex-wrap: wrap;
        flex-direction: column;
        justify-content: flex-start;
        height: 100%;

        .header-panel {
            display: flex;
            justify-content: center;
            height: 80px;
            background-color: rgb(92, 97, 179);
            width: 100vw;

            .img-container {
                background-image: url("../../assets/mall/header-panel.jpg");
                background-size: cover;
                height: 80px;
                width: 1190px;
                position: relative;
            }

        }

        .header-shortcut {
            border-bottom: 1px solid #ddd;
            background-color: #e3e4e5;
            display: flex;
            justify-content: center;

            .navigation {
                height: 30px;
                width: 1190px;
                line-height: 30px;
                color: #999;
                display: flex;
                font-size: 14px;
                justify-content: space-between;

                .left {

                }

                .right {

                }
            }
        }

        .header-search {
            display: flex;
            justify-content: center;
            width: 100vw;
            background: #fff;
            border-bottom: 1px solid #ddd;

            .area {
                width: 1190px;
                height: 120px;
                display: flex;
                justify-content: center;
                align-items: center;

                .search {
                    width: 425px;
                    height: 26px;
                }
            }
        }

        .center-panel {
            display: flex;
            justify-content: center;
            height: 470px;
            width: 100vw;
            margin-top: 10px;
            background-color: #f4f4f4;
            border-bottom: 1px solid #ddd;

            .center-navigation {
                display: flex;
                flex-direction: row;
                justify-content: space-between;
                width: 1190px;
                background-color: #f4f4f4;

                .box-1 {
                    width: 200px;
                    overflow: hidden;
                    padding: 10px 10px;
                    background-color: #fefefe;
                    color: #636363;

                    .el-breadcrumb {
                        margin-top: 5px;
                    }
                }

                .box-2 {
                    width: 590px;

                    image {
                        display: block;
                        width: 100%;
                        height: 100%;
                        -webkit-transition: opacity .2s;
                        transition: opacity .2s;
                    }
                }

                .box-3 {
                    width: 150px;
                    display: flex;
                    flex-direction: column;

                    img {
                        position: relative;
                        height: 150px;
                        display: block;
                        margin-bottom: 10px;
                    }
                }

                .box-4 {
                    width: 190px;
                    background-color: #fff;

                }
            }

        }

        .seckill-panel {
            display: flex;
            justify-content: center;
            width: 100vw;
            margin-top: 30px;
            background: #fff;
            border-bottom: 1px solid #ddd;

            .seckill-navigation {
                display: flex;
                justify-content: space-between;
                height: 260px;
                width: 1190px;

                .seckill-box-desc {
                    width: 190px;
                    height: 260px;
                    color: #fff;
                    background-color: #e83632;
                    background-image: url(../../assets/mall/sekill.png);
                    background-size: contain;
                    background-position: 50%;
                    background-repeat: no-repeat;

                    .seckill-title {
                        width: 100%;
                        text-align: center;
                        font-size: 30px;
                        font-weight: 700;
                        margin-top: 31px;
                    }

                    .countdown-desc {
                        margin-top: 90px;
                        font-size: 16px;
                        text-align: center;
                    }

                    .countdown-main {
                        margin-left: auto;
                        margin-right: auto;
                        width: 130px;
                        height: 30px;
                        margin-top: 10px;
                        display: block;
                        color: #333;
                        font-weight: 700;

                        .timer {
                            position: relative;
                            float: left;
                            width: 30px;
                            height: 30px;
                            text-align: center;
                            background-color: #2f3430;
                            margin-right: 20px;
                            color: white;
                            font-size: 20px;
                            font-weight: 700;
                        }

                        .second {
                            margin-right: 0;
                        }
                    }
                }

                .seckill-box {
                    width: 200px;
                    height: 260px;
                    border-left: 1px solid #ddd;

                    .seckill-item__image {
                        width: 140px;
                        height: 140px;
                        margin-left: auto;
                        margin-right: auto;
                        margin-top: 30px;
                    }

                    .seckill-item__name {
                        font-size: 12px;
                        font-weight: 400;
                        color: #333;
                        -webkit-transition: color .2s ease;
                        transition: color .2s ease;
                        overflow: hidden;
                        text-overflow: ellipsis;
                        white-space: nowrap;
                        width: 160px;
                        margin-left: auto;
                        margin-right: auto;
                        margin-top: 13px;
                    }

                    .seckill-item__price {
                        border: 1px solid #e1251b;
                        position: relative;
                        -webkit-box-sizing: border-box;
                        box-sizing: border-box;
                        line-height: 24px;
                        overflow: hidden;
                        background-color: #e1251b;
                        width: 160px;
                        height: 24px;
                        margin-left: auto;
                        margin-right: auto;
                        margin-top: 7px;

                        .price-miaosha {
                            width: 92px;
                            height: 100%;
                            text-align: center;
                            color: #fff;
                            font-size: 16px;
                            font-weight: 700;
                            line-height: 22px;
                            float: left;
                        }

                        .price-origin {
                            height: 100%;
                            width: 66px;
                            float: right;
                            background: #fff;
                            text-align: center;
                            color: #999;
                            font-size: 12px;
                            line-height: 22px;
                            -webkit-box-sizing: border-box;
                            box-sizing: border-box;
                            text-decoration: line-through;
                            vertical-align: top;
                        }
                    }
                }
            }
        }

        .recommend {
            display: flex;
            width: 100vw;
            justify-content: center;

            .recommend-title {
                position: relative;
                width: 1190px;
                height: 45px;
                font-size: 28px;
                font-weight: 700;
                text-align: center;
                line-height: 45px;
                padding: 0 30px;
                overflow: hidden;
                color: #333;
                margin-top: 15px;
                margin-bottom: 15px;
            }
        }

        .recommend-panel {
            display: flex;
            width: 100vw;
            justify-content: center;

            .recommend-list {
                display: flex;
                width: 1200px;
                flex-wrap: wrap;
                justify-content: flex-start;

                .recommend-item {
                    width: 230px;
                    height: 322px;
                    margin: 0 5px 10px;
                    background: #fff;

                    .recommend-item-img {
                        width: 150px;
                        height: 150px;
                        margin: 30px auto 40px;

                        img {
                            display: block;
                            width: auto;
                            height: auto;
                            max-width: 100%;
                            max-height: 100%;
                            margin: 0 auto;
                        }

                    }

                    .recommend-item-info {
                        clear: both;
                        line-height: 24px;
                        padding: 0 20px;
                        height: 65px;

                        .recommend-item-info-name {
                            height: 48px;
                            font-size: 14px;
                            line-height: 24px;
                            text-align: left;
                            color: #666;
                            -webkit-transition: color .2s ease;
                            transition: color .2s ease;
                            word-break: break-all;
                            overflow: hidden;
                            text-overflow: ellipsis;
                            display: -webkit-box;
                            -webkit-line-clamp: 2;
                            -webkit-box-orient: vertical;
                        }

                        .recommend-item-info-mod-price {
                            display: inline-block;
                            font-size: 16px;
                            line-height: 18px;
                            height: 18px;
                            color: #e1251b;
                            float: left;
                            width: 75px;
                            text-align: left;

                            .price_txt {
                                font-size: 20px;
                                font-weight: 700;
                                font-family: arial, sans-serif;
                            }

                            .price_txt-decimal {
                                line-height: 18px;
                                color: #e1251b;
                                font-weight: 700;
                                font-family: arial, sans-serif;
                                text-align: left;
                            }
                        }
                    }
                }


            }
        }

    }
</style>

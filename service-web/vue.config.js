const BundleAnalyzerPlugin = require('webpack-bundle-analyzer').BundleAnalyzerPlugin;
const path = require('path');

function resolve(dir) {
    return path.join(__dirname, dir)
}

module.exports = {

    publicPath: '/',

    outputDir: 'dist',

    lintOnSave: true,
    chainWebpack: config => {
        config
            .plugin('html')
            .tap(args => {
                args[0].title = '网站学习'
                return args
            })
    },
    // 配置 webpack-dev-server 行为。
    devServer: {
        open: process.platform === 'darwin',
        host: 'localhost',
        port: 8080,
        https: false,
        hotOnly: false,
        open: false,
        // 查阅 https://github.com/vuejs/vue-docs-zh-cn/blob/master/vue-cli/cli-service.md#配置代理
        before: app => {
        },
        disableHostCheck: true
    },

    devServer: {
        proxy: {
            '/api': {
                target: 'http://127.0.0.1:8900/',  // 后台接口域名
                ws: false,        //如果要代理 websockets，配置这个参数
                secure: false,  // 如果是https接口，需要配置这个参数
                changeOrigin: true,  //是否跨域
                pathRewrite: {
                    '^/api': ''
                }
            }
        }
    }
}

const BundleAnalyzerPlugin = require('webpack-bundle-analyzer').BundleAnalyzerPlugin;
const path = require('path');

function resolve(dir) {
	return path.join(__dirname, dir)
}
module.exports = {

	publicPath: '/',

	outputDir: 'dist',

	lintOnSave: true,

	// 配置 webpack-dev-server 行为。
	devServer: {
		open: process.platform === 'darwin',
		host: 'localhost',
		port: 8080,
		https: false,
		hotOnly: false,
		open: true,
		// 查阅 https://github.com/vuejs/vue-docs-zh-cn/blob/master/vue-cli/cli-service.md#配置代理
		before: app => {},
		disableHostCheck: true
	},
}

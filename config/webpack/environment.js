const { environment } = require('@rails/webpacker')
// jQueryを管理下として認定する
const webpack = require('webpack')
environment.plugins.prepend('Provide',
    new webpack.ProvidePlugin({
        $: 'jquery/src/jquery',
        jQuery: 'jquery/src/jquery'
    })
)
// ここまで
module.exports = environment

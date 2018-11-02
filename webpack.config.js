'use strict';

const path = require('path');

module.exports = {
    entry: {
        app: './src/main.js'
    },
    output: {
        path: path.resolve(__dirname, 'dist'),
        filename: '[name].js'
    },
    module: {
        rules: [
            {
                test: /\.elm$/,
                loader: 'elm-webpack-loader'
            },
            {
                test: /\.html$/,
                loader: 'file-loader?name=[name].[ext]'
            }
        ]
    }
};

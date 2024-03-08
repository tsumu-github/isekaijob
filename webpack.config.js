const path = require('path');
const webpack = require('webpack');

// ここから
const customConfig = {
  resolve: {
    fallback: {
      dgram: false,
      fs: false,
      net: false,
      tls: false,
      child_process: false
    }
  }
};

// environment を定義する
const environment = {
  config: new webpack.EnvironmentPlugin({
    NODE_ENV: 'development', // デフォルトの環境設定
    // 他の必要な環境変数をここに追加
  })
};

environment.config.delete('node.dgram')
environment.config.delete('node.fs')
environment.config.delete('node.net')
environment.config.delete('node.tls')
environment.config.delete('node.child_process')

environment.config.merge(customConfig);
// ここまで

module.exports = {
  mode: 'development',
  entry: './app/javascript/application.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle.js',
  },
  // environment を追加
  plugins: [environment.config]
};
# お天気ダッシュボード

> 0(ゼロ)から始めるJavaScriptによるWebアプリ開発入門
> Ch2 非同期お天気webアプリを作る!

## 準備

このリポジトリにあるソースコードを取得します。

```bash
$ cd ~/Desktop/
$ git clone https://github.com/meganedotin/js-from-zero-ch2.git
$ cd js-from-zero-ch2/
$ npm install
```

*メモ*: 上記はデスクトップで作業する場合です。他のフォルダの場合は、最初の行を読み替えましょう。

## APIキーを取得する

この例では、お天気情報を取得するのに、[OpenWeatherMap](http://openweathermap.org/)のAPIを使います。

1. [サインアップ](https://home.openweathermap.org/users/sign_up)
2. [APIキーを確認](https://home.openweathermap.org/api_keys)

## APIキーを設定

`src/app.tag`を開き、下記の`xxxxxx...`の箇所を、先ほど調べたAPIキーで置き換えます。

```javascript
this.apikey = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
```

## 実行してみる

```bash
$ npm start
```

サーバを止めるには、キーボードで`Ctl` + `C`を押します。

## ライセンス

MIT &copy; Tsutomu Kawamura

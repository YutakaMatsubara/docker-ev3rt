# リリース手順

1. コンテナ生成
```
$ docker build -t ev3rt .
```
2. EV3RTのソースコードを取得（TOPPERS会員のみアクセス可能）
```
$ svn co http://dev.toppers.jp/svn/ev3/trunk/ev3rt-hrp3
$ cd ev3rt-hrp3
```
3. パッケージの作成
```
$ docker run -v $PWD:/home/ -i ev3rt:latest bash ./mkpkg.sh 1.1
```

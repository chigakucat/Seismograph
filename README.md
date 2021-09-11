# Seismograph
Raspberry Piで作る自作地震計のコード置場

data_dump.shに出てくるshindというものは、今回作った自作コマンドを指しています。必要があれば適宜変更してください (Pathなど。中身は以下の通りです。
```sh
#!/bin/bash
python ~/Seismograph/kasokudo.py >> ~/Seismograph/kasokudo.csv
```

## kasokudo.py
加速度をただひたすら吐き出すプログラム。
```sh
python ~/Seismograph/kasokudo.py >> ~/Seismograph/kasokudo.csv 
```
とすると、kasokudo.csvに出力がただひたすら書き込まれます。

## data_dump.sh
データを１日の終わりに日付付きのファイルに切り分けるプログラム。

１日あたりのファイルサイズは大体400MBなので、1日1回、23:59にCrontabで実行すると良い。

```sh
$crontab -e
```
crontab -rと間違える事案が結構あるので要注意。

## kasokudo_graph.py
加速度のデータからリアルタイムでグラフを描画するプログラム。
動かし始めてから100秒くらいは正しい値を示してくれないので、グラフもきちんと描画されない。←プログラム自体に問題があるかもしれませんが、詳細は不明
## graphdraw.py
kasokudo.pyのところでも記載したkasokudo.csvをPythonでいい感じにグラフを作成してくれるものを作りました。こちらはリアルタイムではなく、あとから手動で作業して描画をする必要があります。

## 参考にしているドキュメント
https://www.p2pquake.net/dev/rpi_seismometer/calculate/
## コードのベース
https://github.com/p2pquake/rpi-seismometer

これにkasokudo.pyという3軸それぞれの加速度を表示、記録するためのプログラムを追加しました。

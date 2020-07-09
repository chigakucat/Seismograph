# Seismograph
Raspberry Piで作る自作地震計のコード置場

data_dump.shに出てくるshindというものは、今回作った自作コマンドを指しています。必要があれば適宜変更してください。中身は以下の通りです。
```sh
#!/bin/bash
python ~/rpi-seismometer/kasokudo.py >> ~/rpi-seismometer/kasokudo.csv
```

## kasokudo.py
加速度をただひたすら吐き出すプログラム。
```sh
python ~/Seismograph/kasokudo.py >> ~/rpi-seismometer/kasokudo.csv 
```
とすると、kasokudo.csvに出力がただひたすら書き込まれます。

## kasokudo_graph.py
加速度のデータからリアルタイムでグラフを描画するプログラム。
動かし始めてから100秒くらいは正しい値を示してくれないので、グラフもきちんと描画されない。
## graphdraw.py
kasokudo.pyのところでも記載したkasokudo.csvをPythonでいい感じにグラフを作成してくれるものを作りました。こちらはリアルタイムではなく、あとから手動で作業して描画をする必要があります。

## 参考にしているドキュメント
https://www.p2pquake.net/dev/rpi_seismometer/calculate/
## コードのベース
https://github.com/p2pquake/rpi-seismometer

これにkasokudo.pyという3軸それぞれの加速度を表示、記録するためのプログラムを追加しました。

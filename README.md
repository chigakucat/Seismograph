# Seismograph
Raspberry Piで作る自作地震計のコード置場

data_dump.shに出てくるshindというものは、今回作った自作コマンドを指しています。必要があれば適宜変更してください。

## 参考にしているドキュメント
https://www.p2pquake.net/dev/rpi_seismometer/calculate/
## コードのベース
https://github.com/p2pquake/rpi-seismometer

これにkasokudo.pyという3軸それぞれの加速度を表示、記録するためのプログラムを追加しました。

## グラフ生成用のプログラム
Pythonでいい感じにグラフを作成してくれるものを作った

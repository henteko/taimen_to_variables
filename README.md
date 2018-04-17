# 対面伝書でダウンロードしたシリアルコードのCSVを10個区切りのイラレ変数ライブラリに変換するくん

## 使い方

```
$ git clone https://github.com/henteko/taimen_to_variables
$ cd taimen_to_variables
$ mv /your/path/taimen_serial.csv ./ # taimen_serial.csvをカレントディレクトリに移動する
$ ruby run.rb
$ ls variables.xml # イラレ用の変数ライブラリファイルが生成されている(10個区切り)
```

# docker_3dpcp

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

[詳解 3次元点群処理 Pythonによる基礎アルゴリズムの実装](https://www.amazon.co.jp/%E8%A9%B3%E8%A7%A3-3%E6%AC%A1%E5%85%83%E7%82%B9%E7%BE%A4%E5%87%A6%E7%90%86-Python%E3%81%AB%E3%82%88%E3%82%8B%E5%9F%BA%E7%A4%8E%E3%82%A2%E3%83%AB%E3%82%B4%E3%83%AA%E3%82%BA%E3%83%A0%E3%81%AE%E5%AE%9F%E8%A3%85-KS%E7%90%86%E5%B7%A5%E5%AD%A6%E5%B0%82%E9%96%80%E6%9B%B8-%E9%87%91%E5%B4%8E/dp/406529343X?&linkCode=sl1&tag=atfujita-22&linkId=66966039ebc10be3582ec298434185df&language=ja_JP&ref_=as_li_ss_tl)実行用Dockerコンテナ

※ PyTorch非対応

## クローン
```
git clone https://github.com/ToshikiNakamura0412/docker_3dpcp.git
```

## 使い方
### コンテナの作成および起動
```
cd docker_3dpcp
docker compose up [-d]
```
### VSCodeによるコンテナへのアタッチ
```
code .
```
- 『コンテナで再度開く』をクリック
### コンテナの停止および削除
```
docker compose down
```

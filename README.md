# processing_templates

TODO: 1秒ごとに色が変わる時計

## Installation

## Usage

TODO: 実行のみ

## Code review

TODO: 秒針、分針、時針と文字盤をそれぞれ分けて書いている。引用（https://yoppa.org/proga10/1419.html）

そして普通の時計では物足りないので１秒ごとに背景の色が変わるように変化をつけ、１秒の時間を秒針だけではなく色の変化でより分かりやすした。

色の変化はframeCountを使っている。

if( frameCount%1 == 0){
R+=5;
G+=15;
B+=25;
BG = color(R, G, B);
}

## License

ここではサンプルとしてMITライセンスの表示をしています．Creative commonsとかLGPLでもOKです．
[Githubのライセンシングを解説した記事](https://www.catch.jp/oss-license/2013/09/10/github/)は
とても参考になります(だいぶその時...2013か...からは改訂されてるけど)．

The processing application is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Test project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/processing_templates/blob/master/CODE_OF_CONDUCT.md).

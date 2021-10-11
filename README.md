# game_commentator_checker

## タイトル
「ゲーム実況者診断」

## サービス概要
ゲーム実況を見てみたいけれど、どの実況者が面白いのかわからない人に
おすすめ実況者とその動画を紹介する
実況者検索サービスです。

## ターゲットユーザー
初めてゲーム実況を見てみたい人

今まで特定のゲーム実況を見てきて、新たに別の実況者の動画を見てみたい人

## ユーザーが抱える課題
初めてゲーム実況を見てみたいけれど、どの実況者が面白いのかわからない。

今まで見てきた実況者に飽きてしまった。

## 解決方法
　まず、ユーザーには検索モードと声診断モードのいずれかを選んでもらいます。
検索モードでは、見たいゲームのジャンルや実況者のスタイルをユーザーに選んでもらい、検索結果として、おすすめ実況者とその人気動画を５つほど掲載します。
　声診断モードでは、まず男性か女性か、高い声か低い声か、などを２択で選んでもらい、その条件に合致する実況者の声を５秒ほど録音したものを順番に表示し、Tinderのスワイプ形式で気に入った声を選んでもらいます。診断結果では、検索モードと同じような画面が現れます。

**ゲームの種類**
アクション、RPG、シミュレーション、レース、カード、ボードゲーム、恋愛、バカゲーなど

**実況者のスタイル**
● 割と喋る（うるさい系）か、静かに淡々とやるか
● 勢いでプレイするか、論理的に（解説者のように）プレイするか
● 一人か、大人数でやるか
● 生放送が多いか、編集動画が多いか
● アバターを使うかどうか（vtuberなど）
● 性別
● 年齢
● 動画の長さ

**実況者の声**
● 男性か女性か
● 高い声か低い声か

## 実装予定の機能
録音 ⇨ UniConverter(録音ツール)
Tinder風UI ⇨ jTinder (ライブラリ)

## なぜこのサービスを作りたいのか？
　私はゲーム実況動画をよく見るのですが、何か面白い実況者や動画がないかと思ってYouTubeを開いても、ただ動画が並んでいるだけで、どれが面白いのかが一目でわかりません。さらに、人気実況者ランキングなどを見ても、必ずしもそれが自分にとって面白いとは限りません。そこで、自分の好みのゲームジャンルや実況者のスタイル、声を選んで検索してくれるサービスがあれば、動画を探す手間や時間が省けるのではないかと感じたからです。あるゲームをやってみたいけど買うお金がない、または買うほどの熱意はない、という方にゲーム実況は最適だと思っています。このサービスを多くの方に気軽に使っていただき、ゲーム実況の面白さや楽しさを広めていきたいと感じています。

**画面遷移図**
https://www.figma.com/file/ldNrVq05cxh1iMKeVnKX6c/PF-ゲーム実況者診断?node-id=11%3A2
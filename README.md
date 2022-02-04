# game_commentator_checker
https://game-commentator-checker.herokuapp.com

## タイトル
「ゲーム実況者診断」

## サービス概要
ゲーム実況を見てみたいけれど、どの実況者が面白いのかわからない人や、
新たなジャンルにチャレンジしてみたい人に、
おすすめ実況者とその動画を紹介する診断サービスです。

## ターゲットユーザー
初めてゲーム実況を見てみたい人

今まで特定のゲーム実況を見てきて、新たに別の実況者の動画を見てみたい人

## ユーザーが抱える課題
初めてゲーム実況を見てみたいけれど、どの実況者が面白いのかわからない。

今まで見てきた実況者に飽きてしまった。

## 解決方法
ユーザーには基本的に自分の好きな実況者の特徴を２択で選んでもらい、診断結果として、条件に合う実況者の名前やYouTubeリンク、人気動画を表示します。
自分に合った実況者を手軽に見つけられるサービスになっています。
また、ユーザー登録をすると診断履歴や実況者名での検索、レビューができるようになります。

## プロダクト
まずは「サクッと探す」簡易版でオススメ実況者の診断をします。
もっと探してみたい方には、ユーザー登録を経て「じっくり探す」通常版での診断もできます。
それぞれのモードでは、２択やセレクトボックスから自分の見てみたい実況者の特徴やゲームジャンルを選んでもらい、診断結果として条件に合う実況者の名前やYouTubeリンク、人気動画を表示し、Twitterでのシェアもできます。
また、完全に検索条件に一致する実況者がいない場合には、条件に近似している実況者を代わりに紹介する機能もあります。
ユーザー登録をすると、今までの診断履歴が確認できたり、実況者名での検索ができたり、気に入った実況者にレビューをしてタイムラインに投稿したり、他のユーザーのレビューを閲覧したりできます。

**ゲームジャンル**

アクション、RPG、シミュレーション、レース、カード、ボードゲーム、恋愛、バカゲーなど

**質問項目**

● プレイスタイルはどれか（トークが上手い系、イケボ・渋い声系、癒し系、vtuber系など）

● 顔出ししているか

● 実況者グループを組んでいるか

● 生放送が多いか、編集動画が多いか

● アバターを使うかどうか（vtuberなど）

● 性別

● 動画の長さ など

## 使用技術
● Ruby (2.6.6)

● Ruby on Rails(6.0.4.1)

● Mysql(8.0.26)(ローカル)

● postgresql(10.18)(本番)

## 主な機能
● ユーザー登録、ログイン機能（sorcery）

● 実況者診断機能(ajax)
→　　円グラフ（chartkick, chart.js）

● レビュー投稿機能(ajax)
→　　星評価機能(raty.js)

● 実況者検索機能(ajax)

● プロフィール編集機能(carrierwave)

● ページネーション機能(kaminari)

## なぜこのサービスを作りたいのか？
　私はゲーム実況動画をよく見るのですが、何か面白い実況者や動画がないかと思ってYouTubeを開いても、ただ動画が並んでいるだけで、どれが面白いのかが一目でわかりません。さらに、人気実況者ランキングなどを見ても、必ずしもそれが自分にとって面白いとは限りません。そこで、自分の好みのゲームジャンルや実況者のスタイルを選んで診断してくれるサービスがあれば、動画を探す手間や時間が省けるのではないかと感じたからです。あるゲームをやってみたいけど買うお金がない、または買うほどの熱意はない、という方にゲーム実況は最適だと思っています。このサービスを多くの方に気軽に使っていただき、ゲーム実況の面白さや楽しさを広めていきたいと感じています。

## ER図

![ゲーム実況者診断 drawio](https://user-images.githubusercontent.com/85753444/152399116-afb2b5a0-8cbe-4a9c-a0bc-39258a7d9082.png)

https://drive.google.com/file/d/1p_zU993TDrp6Cqg9eObDciwa-xxAkJNH/view?usp=sharing

## インフラ構成図

![infra_diagram drawio](https://user-images.githubusercontent.com/85753444/152522434-94065b74-9a19-474f-907b-4fe6c6114fb4.png)

## 画面遷移図
https://www.figma.com/file/ldNrVq05cxh1iMKeVnKX6c/PF-ゲーム実況者診断?node-id=11%3A2


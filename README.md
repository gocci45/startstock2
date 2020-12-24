アプリケーション名
startstock2


アプリケーション概要
このアプリケーションは在庫管理するためのアプリケーションです。


URL
https://startstock2.herokuapp.com/


テスト用アカウント
ID :hogehoge
mail：hoge@hoge.com
pass：hoge1111


利用方法
このアプリはログインしていない場合自動でログインページに遷移します。
ログイン方法：メールアドレスとパスワードを入力

新規登録：ログインページ右上からアカウント名、パスワード（２回入力）、メールアドレスを入力すると登録されます。

入庫方法：入庫ページボタンから商品名、メーカー、倉庫名、日付、数量、石油類（カテゴリー）を空欄にならないよう入力もしくは選択してください。最後に入庫ボタンを押しますと入庫登録完了です。

出庫方法：入庫された商品の右にあります出庫ボタンを押しますと出庫ページに遷移します。商品名と数量を入力しますと出庫可能です。出庫ボタンを押しますとトップページに遷移し、数量が変化します。



目指した課題解決
このアプリケーションは、工場の塗料を想定して、現場の人、生産管理の人、それぞれがすぐに在庫数を把握できることを目指したアプリケーションです。


洗い出した要件
１、ユーザー管理

目的：ユーザー登録とログインを実装
詳細：deviseを利用しユーザー管理を行う
ストーリー：ある企業向けを想定するため、企業ドメインのメールアドレスのみを登録可能とする。

２、商品入庫

目的：在庫表に登録する商品を入庫する
詳細：newメソッドとupdateメソッドを利用し、商品の登録を行う。この時、商品名はアクティブハッシュ を利用するため、商品名の差異を防ぐ。
ストーリー：在庫表にどのような商品をどのくらい登録させるのかを機能として実装させる

３、商品出庫

目的：在庫表にどのような商品をどのくらい登録させるのかを機能として実装させる
詳細：itemルートの入れ子形式でpurchaseルートを作成し、indexメソッドでnewメソッドの働きをする。createメソッドで出庫機能の役割を果たす。この時、商品登録の際に使用した商品名と同じ出なければ処理しない。また、入庫数が1以上ではない商品は出庫できない。
ストーリー：在庫表に登録した商品を出庫することができる。

４、在庫表表示

目的：在庫表に登録した商品を出庫することができる。
詳細：入庫されている商品名が出庫された場合、入庫数ー出庫数という計算が行われるようにする
ストーリー：トップページに在庫表を作ることですぐに在庫数を把握することができる



実装予定の機能

現在、cssとJavaScriptに関しましては、当初bootstrap4を使用していましたが、herokuへのデプロイ時にエラーが出ましたので、ビューの見た目がない状態になっています。
今後は、見やすいページをbootstrap等使用しまして、ビューファイルの修正を実装計画としています。
また、商品のカテゴリをカラムに設定しましたので、今後はlカテゴリ別で在庫表を見れるような機能を計画しています。


開発環境
Ruby/Ruby on Rails/MySQL


Githubリポジトリ
https://github.com/gocci45/startstock2


DB設計
ER図はファイル名「er.dio」に記述しました。
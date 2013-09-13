LightStalking

遷移の履歴(コントローラ名とアクション名)を、getパラメータとして持ち回ります。

##インストール
Gemfileに書きます。railsでの使用のみを想定してます。

```ruby
gem 'light_stalking', :git => 'https://github.com/YoshitsuguFujii/light_stalking.git'
```

##説明
コントローラーにてクラスマクロstart_stalkingでページ遷移時に、前のコントローラ名とアクション名を保持するようになります。
いつまで保持するかはhistory_numberで管理します。

```ruby
class ApplicationController < ActionController::Base
  start_stalking history_number: 3
end
```

##指定可能オプション
`start_stalking`のオプションはHashで指定します。
指定可能なのは以下のとおりです。

key	| type | 説明
:----------		|:----------    |:----------
controller_name     | string | get値の履歴のコントローラ名を変えたいときに指定(デフォルト bc)
action_name     | string | get値の履歴のアクション名を変えたい時に指定 (デフォルト ba)
history_number | integer | 保持する履歴の数を指定

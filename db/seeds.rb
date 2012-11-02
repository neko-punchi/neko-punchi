# coding: utf-8

# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create(:id => '1' ,:category => 'LPICレベル1 101試験')
Category.create(:id => '2' ,:category => 'LPICレベル1 102試験')

SubCategory.create(:id => '1' ,:sub_category => 'システムアーキテクチャ')
SubCategory.create(:id => '2' ,:sub_category => 'Linuxのインストールとパッケージ管理')
SubCategory.create(:id => '3' ,:sub_category => 'GNUとUnixのコマンド')
SubCategory.create(:id => '4' ,:sub_category => 'デバイス、Linuxファイルシステム、ファイルシステム階層標準')

SubCategory.create(:id => '5' ,:sub_category => 'シェル、スクリプト、およびデータ管理')
SubCategory.create(:id => '6' ,:sub_category => 'ユーザインターフェイスとデスクトップ')
SubCategory.create(:id => '7' ,:sub_category => '管理業務')
SubCategory.create(:id => '8' ,:sub_category => '重要なシステムサービス')
SubCategory.create(:id => '9' ,:sub_category => 'ネットワークの基礎')
SubCategory.create(:id => '10' ,:sub_category => 'セキュリティ')

Relation.create(:id => '1' ,
  :category_id => '1' ,
  :sub_category_id => '1' ,
  :quiz_id => '1')
Quiz.create(:id => '1' ,
  :text => 'viの操作で行をコピーする操作として正しいものを選びなさい。',
  :choose => "c,dd,yy,p",
  :answer => 'yy')

Relation.create(:id => '2',
  :category_id => '1',
  :sub_category_id => '2',
  :quiz_id => '2')
Quiz.create(:id => '2',
  :text => 'topコマンドの対話式コマンドo（小文字）の役割として正しいものを選びなさい。',
  :sub_text => ' 1. 表示項目の表示順を変更する
                  2. 表示項目のソート順を変更する
                  3. プロセス権限がrootのプロセスのみ表示する
                  4. NICE値がマイナスのプロセスのみ表示する',
  :choose => "1,2,3,4",
  :answer => '1')

Relation.create(:id => '3',
  :category_id => '1',
  :sub_category_id => '3',
  :quiz_id => '3')
Quiz.create(:id => '3',
  :text => 'nohupコマンドの役割として正しいものを選びなさい。',
  :sub_text => '1. ログアウト後もコマンドの実行を続ける
            2. 優先順位を下げて実行する
            3. 優先順位を上げて実行する
            4. 異常終了しないように実行する',
  :choose => "1,2,3,4",
  :answer => '1')


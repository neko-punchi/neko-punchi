# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Quizzes.create(:id => '1' 
  ,:text => 'viの操作で行をコピーする操作として正しいものを選びなさい。'
  ,:choose => "c,dd,yy,p"
  ,:answer => 'yy')

Quizzes.create(:id => '2'
  ,:text => 'topコマンドの対話式コマンドo（小文字）の役割として正しいものを選びなさい。'
  ,:sub_text => ' 1. 表示項目の表示順を変更する
                  2. 表示項目のソート順を変更する
                  3. プロセス権限がrootのプロセスのみ表示する
                  4. NICE値がマイナスのプロセスのみ表示する'
  ,:choose => "1,2,3,4"
  ,:answer => '1')

Quizzes.create(:id => '3'
  ,:text => 'nohupコマンドの役割として正しいものを選びなさい。'
  ,:sub_text => '1. ログアウト後もコマンドの実行を続ける
            2. 優先順位を下げて実行する
            3. 優先順位を上げて実行する
            4. 異常終了しないように実行する'
  ,:choose => "1,2,3,4"
  ,:answer => '1')

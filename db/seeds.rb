# coding: utf-8

# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create(:id => '1' ,:category => 'LPICレベル1 101試験')
Category.create(:id => '2' ,:category => 'LPICレベル1 102試験')

SubCategory.create(:id => '1' ,:category_id => '1', :sub_category => 'システムアーキテクチャ')
SubCategory.create(:id => '2' ,:category_id => '1', :sub_category => 'Linuxのインストールとパッケージ管理')
SubCategory.create(:id => '3' ,:category_id => '1', :sub_category => 'GNUとUnixのコマンド')
SubCategory.create(:id => '4' ,:category_id => '1', :sub_category => 'デバイス、Linuxファイルシステム-階層標準')

SubCategory.create(:id => '5' ,:category_id => '2', :sub_category => 'シェル、スクリプト、およびデータ管理')
SubCategory.create(:id => '6' ,:category_id => '2', :sub_category => 'ユーザインターフェイスとデスクトップ')
SubCategory.create(:id => '7' ,:category_id => '2', :sub_category => '管理業務')
SubCategory.create(:id => '8' ,:category_id => '2', :sub_category => '重要なシステムサービス')
SubCategory.create(:id => '9' ,:category_id => '2', :sub_category => 'ネットワークの基礎')
SubCategory.create(:id => '10',:category_id => '2', :sub_category => 'セキュリティ')

#----------------------------------------------------------------------
Relation.create(
  :id => '1' ,
  :quiz_id => '1',
  :sub_category_id => '3',
  :category_id => '1'
  )
Quiz.create(:id => '1' ,
  :text => 'viの操作で行をコピーする操作として正しいものを選びなさい。',
  :choose => "c,dd,yy,p",
  :answer => 'yy')

#----------------------------------------------------------------------
Relation.create(
  :id => '2',
  :quiz_id => '2',
  :sub_category_id => '3',
  :category_id => '1')
Quiz.create(:id => '2',
  :text => 'topコマンドの対話式コマンドo（小文字）の役割として正しいものを選びなさい。',
  :sub_text => 
'1. 表示項目の表示順を変更する
2. 表示項目のソート順を変更する
3. プロセス権限がrootのプロセスのみ表示する
4. NICE値がマイナスのプロセスのみ表示する',
  :choose => "1,2,3,4",
  :answer => '1')

#----------------------------------------------------------------------
Relation.create(
  :id => '3',
  :quiz_id => '3',
  :sub_category_id => '3',
  :category_id => '1')
Quiz.create(
  :id => '3',
  :text => 'nohupコマンドの役割として正しいものを選びなさい。',
  :sub_text => 
'1. ログアウト後もコマンドの実行を続ける
2. 優先順位を下げて実行する
3. 優先順位を上げて実行する
4. 異常終了しないように実行する',
  :choose => "1,2,3,4",
  :answer => '1')

#----------------------------------------------------------------------
Relation.create(
  :id => '4',
  :quiz_id => '4',
  :sub_category_id => '4',
  :category_id => '1')
Quiz.create(
  :id => '4',
  :text => '管理者が追加でインストールしたソフトウェアのバイナリが格納されるディレクトリを選びなさい。',
  :choose => "/bin,/sbin,/etc,/usr/bin",
  :answer => '/usr/bin')

#----------------------------------------------------------------------
Relation.create(
  :id => '5',
  :quiz_id => '5',
  :sub_category_id => '4',
  :category_id => '1')
Quiz.create(
  :id => '5',
  :text => 'リンクの説明として間違えているものを選びなさい。',
  :sub_text => 
'1. ハードリンクはiノードの仕組みを利用している
2. シンボリックリンクは異なるパーティションのファイルに対しても作成できる
3. リンクを使用することでファイルの使用容量が節約できる
4. リンクを使用することでファイルの数が少なくなる',
  :choose => "1,2,3,4",
  :answer => '4')

#----------------------------------------------------------------------
Relation.create(
  :id => '6',
  :quiz_id => '6',  
  :sub_category_id => '3',
  :category_id => '1')
Quiz.create(
  :id => '6',
  :text => 'grepコマンドと比較したとき、fgrepコマンドの特徴として正しいものを選びなさい。',
  :sub_text => 
'1. 高速に検索する
2. 複数ファイルを検索する
3. 検索パターンを単なる文字列として検索する
4. より高度な正規表現に対応して検索する',
  :choose => "1,2,3,4",
  :answer => '3')


#----------------------------------------------------------------------
Relation.create(
  :id => '7',
  :quiz_id => '7',
  :sub_category_id => '3',
  :category_id => '1')
Quiz.create(
  :id => '7',
  :text => 'シェルのコマンド履歴で、直前のコマンド実行の最初の引数を指示するものとして正しいものを選びなさい。',
  :choose => '!!,!*,!^,!$',
  :answer => '!^')
#----------------------------------------------------------------------

Relation.create(
  :id => '8',
  :quiz_id => '8',
  :sub_category_id => '3',
  :category_id => '1')
Quiz.create(
  :id => '8',
  :text => 'teeコマンドの役割として正しいものを選びなさい。',
  :sub_text => 
'1. 2つの標準入力を同時に入力として受け付ける
2. 標準出力をファイルと標準出力に出力する
3. 標準出力を2つのファイルに出力する
4. 標準出力を2つの標準出力として出力する',
  :choose => "1,2,3,4",
  :answer => '2')

#----------------------------------------------------------------------
Relation.create(
  :id => '9',
  :quiz_id => '9',
  :sub_category_id => '3',
  :category_id => '1')
Quiz.create(
  :id => '9',
  :text => 'タブをスペースに変換するコマンドとして正しいものを選びなさい。',
  :choose => 'expand,fmt,tr,unexpand',
  :answer => 'expand')


#----------------------------------------------------------------------
Relation.create(
  :id => '10',
  :quiz_id => '10',
  :sub_category_id => '1',
  :category_id => '1')
Quiz.create(
  :id => '10',
  :text => '/etc/yum.repos.d/ディレクトリの説明として正しいものを選びなさい。',
  :sub_text => 
'1. yumコマンドの参照するリポジトリ設定を追加する
2. yumコマンドのデフォルト設定を行う
3. yumコマンドのドキュメントが格納されている
4. yumコマンドがダウンロードしたRPMパッケージが格納されている',
  :choose => "1,2,3,4",
  :answer => '1')

#----------------------------------------------------------------------
Relation.create(
  :id => '11',
  :quiz_id => '11',
  :sub_category_id => '2',
  :category_id => '1')
Quiz.create(
  :id => '11',
  :text => 'dpkg-reconfigureコマンドの機能として正しいものを選びなさい。',
  :sub_text => 
'1. インストールしたパッケージの再設定を行う
2. インストールしたパッケージの再構築を行う
3. インストールしたパッケージの依存関係を再設定する
4. 指定したパッケージを自動的にインストールする',
  :choose => "1,2,3,4",
  :answer => '1')


#----------------------------------------------------------------------
Relation.create(
  :id => '12',
  :quiz_id => '12',
  :sub_category_id => '3',
  :category_id => '1')
Quiz.create(
  :id => '12',
  :text => 'lddコマンドの役割として正しいものを選びなさい。',
  :sub_text => 
'1. 共有ライブラリがインストールされている場所を指定する
2. プログラムが必要とする共有ライブラリを表示する
3. 共有ライブラリの依存関係を更新する
4. 共有ライブラリが32ビット用か64ビット用かを確認する',
  :choose => "1,2,3,4",
  :answer => '2')


#----------------------------------------------------------------------
Relation.create(
  :id => '13',
  :quiz_id => '13',
  :sub_category_id => '4',
  :category_id => '1')
Quiz.create(
  :id => '13',
  :text => '以下のディレクトリのうち、パーティションを分割しなくてもよいと考えられるディレクトリを1つ選びなさい。',
  :choose => '/dev,/home,/var,/boot',
  :answer => '/dev')


#----------------------------------------------------------------------
Relation.create(
  :id => '14',
  :quiz_id => '14',
  :sub_category_id => '1',
  :category_id => '1')
Quiz.create(
  :id => '14',
  :text => 'dmesgコマンドで確認できない情報を選びなさい。',
  :sub_text => 
'1. CPU
2. ディスク
3. ネットワーク
4. ユーザアカウント',
  :choose => "1,2,3,4",
  :answer => '4')


#----------------------------------------------------------------------
Relation.create(
  :id => '15',
  :quiz_id => '15',
  :sub_category_id => '3',
  :category_id => '1')
Quiz.create(
  :id => '15',
  :text => 'locateコマンドでファイルの検索を行ったが、見つけることができなかった。理由として適切でないものを選びなさい。',
  :sub_text => 
'1. インストール直後でupdatedbが行われていなかった
2. そのファイルに対するアクセス権が無い
3. 対象となるファイルが存在しない
4. locateは管理者ユーザーにしか実行できない',
  :choose => "1,2,3,4",
  :answer => '4')


#----------------------------------------------------------------------
Relation.create(
  :id => '16',
  :quiz_id => '16',
  :sub_category_id => '4',
  :category_id => '1')
Quiz.create(
  :id => '16',
  :text => 'ハードリンクの説明として間違っているものを選びなさい。',
  :sub_text => 
'1. ハードリンクは異なるパーティションには作成できない
2. ハードリンクは同じiノード番号を持つ
3. ハードリンクのリンク先は相対パスで示される
4. ハードリンクを削除しても他のハードリンクが残っていればファイルは削除されない',
  :choose => "1,2,3,4",
  :answer => '3')


#----------------------------------------------------------------------
Relation.create(
  :id => '17',
  :quiz_id => '17',
  :sub_category_id => '4',
  :category_id => '1')
Quiz.create(
  :id => '17',
  :text => 'ディレクトリに付与された実行可能のパーミッションの意味として正しいものを選びなさい。',
  :sub_text => 
'1. ディレクトリ内の情報を取得できる
2. カレントディレクトリにすることができる
3. ディレクトリ内のファイルを削除できる
4. ディレクトリ内に書き込みできる',
  :choose => "1,2,3,4",
  :answer => '2')


#----------------------------------------------------------------------
Relation.create(
  :id => '18',
  :quiz_id => '18',
  :sub_category_id => '4',
  :category_id => '1')
Quiz.create(
  :id => '18',
  :text => 'ディスククォータが有効にならない理由として正しくないものを選びなさい。',
  :sub_text => 
'1. カーネルはクォータをサポートしていない
2. マウントオプションでクォータを有効にしていない
3. クォータ情報を記録するファイルを作成していない
4. 起動時にedquotaを起動していない',
  :choose => "1,2,3,4",
  :answer => '4')

#----------------------------------------------------------------------
Relation.create(
  :id => '19',
  :quiz_id => '19',
  :sub_category_id => '4',
  :category_id => '1')
Quiz.create(
  :id => '19',
  :text => 'CD-ROMをマウントしたが、メディアに含まれるシェルスクリプトを実行することができない。マウント時に必要となるオプションとして適切なものを選びなさい。',
  :choose => "suid,sync,user,exec,remount",
  :answer => 'exec')

#----------------------------------------------------------------------
Relation.create(
  :id => '20',
  :quiz_id => '20',
  :sub_category_id => '4',
  :category_id => '1')
Quiz.create(
  :id => '20',
  :text => 'inodeの説明として適切ではないものを選びなさい',
  :sub_text => 
'1. inodeはファイルと、ファイルの実体を結びつける情報である
2. inodeはMBR（マスターブートレコード）に保管される
3. inode情報が壊れると、ファイルが参照できなくなる
4. ハードリンクではinode番号は同じ番号になる',
  :choose => "1,2,3,4",
  :answer => '2')

#----------------------------------------------------------------------
Relation.create(
  :id => '21',
  :quiz_id => '21',
  :sub_category_id => '4',
  :category_id => '1')
Quiz.create(
  :id => '21',
  :text => 'fdiskの役割として正しくないものを選びなさい。',
  :sub_text => 
'1. 現在のパーティションの情報を参照する
2. 新しいパーティションを作成する
3. 作成済みのパーティションを削除する
4. 作成済みのパーティションのサイズを変更する',
  :choose => "1,2,3,4",
  :answer => '4')

#----------------------------------------------------------------------
Relation.create(
  :id => '22',
  :quiz_id => '22',
  :sub_category_id => '3',
  :category_id => '1')
Quiz.create(
  :id => '22',
  :text => 'viのコマンド「o」についての説明として正しいものを選びなさい。',
  :sub_text => 
'1. 現在のカーソル行の次行に空行を入れて入力モード
2. 現在のカーソル行に空行を入れて入力モード
3. 現在のカーソル行の最後から入力モード
4. 現在のカーソルの次の文字から入力モード',
  :choose => "1,2,3,4",
  :answer => '1')

#----------------------------------------------------------------------
Relation.create(
  :id => '23',
  :quiz_id => '23',
  :sub_category_id => '3',
  :category_id => '1')
Quiz.create(
  :id => '23',
  :text => 'sedコマンドへの指示として「s/linux/Linux/g」と指定したときの動作について正しい説明を選びなさい。',
  :sub_text => 
'1. 一番最初に見つかった文字列linuxだけをLinuxに置き換える
2. 見つかったすべての文字列linuxをLinuxに置き換える
3. 行の中で最初に見つかった文字列linuxだけをLinuxに置き換える
4. 行の先頭にある文字列linuxをLinuxに置き換える',
  :choose => "1,2,3,4",
  :answer => '2')


#----------------------------------------------------------------------
Relation.create(
  :id => '24',
  :quiz_id => '24',
  :sub_category_id => '1',
  :category_id => '1')
Quiz.create(
  :id => '24',
  :text => 'プロセスの実行優先度の変更について、正しいものを選びなさい',
  :sub_text => 
'1. nice値を変更できるのはrootユーザーだけである
2. 一般ユーザーはreniceコマンドで優先順位を上げられる
3. nice値は-19から20までの範囲で指定する
4. nice値は数字が大きいほど優先順位が低い',
  :choose => "1,2,3,4",
  :answer => '4')

#----------------------------------------------------------------------
Relation.create(
  :id => '25',
  :quiz_id => '25',
  :sub_category_id => '1',
  :category_id => '1')
Quiz.create(
  :id => '25',
  :text => 'システムのデフォルトのランレベルを定義しているファイルとして正しいものを選びなさい。',
  :sub_text => 
'1. /etc/fstab
2. /etc/grub.conf
3. /etc/inittab
4. /etc/mtab
5. /etc/rc.d/rc.local',
  :choose => "1,2,3,4,5",
  :answer => '3')

#----------------------------------------------------------------------
Relation.create(
  :id => '26',
  :quiz_id => '26',
  :sub_category_id => '3',
  :category_id => '1')
Quiz.create(
  :id => '26',
  :text => 'ファイルシステム全体をまとめてバックアップできるコマンドを選びなさい。',
  :choose => "cpio,dd,restore,tar",
  :answer => 'dd')

#----------------------------------------------------------------------
Relation.create(
  :id => '27',
  :quiz_id => '27',
  :sub_category_id => '1',
  :category_id => '1')
Quiz.create(
  :id => '27',
  :text => 'bashシェルを使用するすべてのユーザーに対して環境変数を設定するのに最も適した場所はどこですか？',
  :choose => '/etc/profile,rc.local,rc.sysinit,/etc/skel,/etc/bashrc',
  :answer => '/etc/profile')

#----------------------------------------------------------------------
Relation.create(
  :id => '28',
  :quiz_id => '28',
  :sub_category_id => '7',
  :category_id => '2')
Quiz.create(
  :id => '28',
  :text => 'ファイル /etc/syslog.conf 内の1行に「*.info   /var/log/foolog」の記述がある。この説明として適切なものを選びなさい。',
  :sub_text => 
'1.　「*」は「すべてのプロセス」を意味し、通常はプロセスIDを記述する
2.　「*」は「すべてのデーモン」を意味し、通常はデーモン名を記述する
3.　すべてのファシリティに対し、プライオリティがinfoのログを/var/log/foolog に記載する
4.　すべてのファシリティに対し、プライオリティがinfo以上のログを/var/log/foolog に記載する
5.　「*.info」は「*;info」と書かなければならない',
  :choose => "1,2,3,4,5",
  :answer => '4')

#----------------------------------------------------------------------
Relation.create(
  :id => '29',
  :quiz_id => '29',
  :sub_category_id => '1',
  :category_id => '1')
Quiz.create(
  :id => '29',
  :text => 'コマンドldconfigを利用するシチュエーションとして適切なものを選びなさい。',
  :sub_text => 
'1.　新しく共有ライブラリをインストールしたとき
2.　ネットワーク構成を変更したとき
3.　ディスクドライブを追加したとき
4.　ネットワーク構成を確認するとき
5.　プリンタを設定するとき',
  :choose => "1,2,3,4,5",
  :answer => '1')



source "https://rubygems.org"

gem 'rails', '8.0.1'
gem 'pg', '>= 1.1'        # PostgreSQL用のgem
gem 'puma', '~> 5.0'      # デフォルトのWebサーバ
gem 'propshaft'           # モダンなAsset Pipeline

gem "tzinfo-data", platforms: %i[ windows jruby ] # タイムゾーン情報

gem 'bootsnap', require: false # 起動時間短縮
gem "kamal", require: false # Dockerコンテナデプロイ
gem "thruster", require: false # HTTPアセットキャッシュ


gem "solid_cache"       # キャッシュ
gem "solid_queue"       # キャッシュ、ジョブ
gem "solid_cable"        # キャッシュ、ジョブ、WebSocket

# フロントエンドの設定（Importmapを利用する場合）
gem 'importmap-rails'

# JavaScriptやCSSをビルドする場合は、代わりに以下のような設定も検討してください
gem 'esbuild', '~> 0.17' # JavaScriptのビルド
gem 'tailwindcss-rails' # CSSフレームワーク

gem 'turbo-rails'       # Hotwire Turbo（ページ遷移高速化）
gem 'stimulus-rails'    # Hotwire Stimulus（JavaScriptのフレームワーク）
gem 'jbuilder', '~> 2.7'  # JSON生成用


gem "bcrypt", "~> 3.1.7"  # パスワードのハッシュ化

group :development, :test do
  gem 'byebug'          # デバッグ用
  gem 'pry-byebug'      # デバッグ用
  gem 'pry-rails'       # デバッグ用
  gem 'rspec-rails'     # テスト用
  gem 'factory_bot_rails'  # テスト用
  gem 'database_cleaner-active_record'  # テスト用
  gem 'faker'           # テスト用
  gem 'rubocop'         # コード解析
end

group :development do
  gem 'web-console'     # ブラウザ上でのコンソール
  gem 'listen', '~> 3.3'  # ファイル変更監視
  gem 'spring'          # アプリ起動の高速化
end

group :test do
  gem 'capybara'        # 統合テスト用
  gem 'selenium-webdriver'  # ブラウザ自動操作
  gem 'webdrivers'      # ドライバー自動管理
end
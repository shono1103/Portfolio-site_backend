# filepath: /Users/saikishono/Desktop/project/portfolio_site/backend/Portfolio-site_backend/db/migrate/20250223000000_drop_all_tables.rb
class DropAllTables < ActiveRecord::Migration[8.0]
  def change
    drop_table :profiles
    drop_table :users
  end
end
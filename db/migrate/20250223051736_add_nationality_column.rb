class AddNationalityColumn < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :national, :string
  end
end

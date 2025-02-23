class CreateUsersTable < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.timestamps
      t.boolean :name_order
      t.string :family_name
      t.string :given_name
      t.string :email
      t.string :password_digest
    end
  end
end

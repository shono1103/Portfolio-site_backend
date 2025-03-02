class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :family_name
      t.string :given_name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end

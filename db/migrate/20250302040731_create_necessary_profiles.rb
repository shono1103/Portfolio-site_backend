class CreateNecessaryProfiles < ActiveRecord::Migration[8.0]
  def change
    drop_table :necessary_profiles
    drop_table :option_profiles

    create_table :necessary_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date_of_birth
      t.string :residence
      t.string :job
      t.timestamps
    end
  end
end

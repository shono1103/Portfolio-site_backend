class CreateUnnecessaryProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :option_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :place_of_birth
      t.string :certificate, array: true, default: []
      t.string :bio
      t.timestamps
    end
  end
end

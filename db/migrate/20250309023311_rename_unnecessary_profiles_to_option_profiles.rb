class RenameUnnecessaryProfilesToOptionProfiles < ActiveRecord::Migration[8.0]
  def change
    rename_table :option_profiles, :option_profiles
  end
end
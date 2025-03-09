class AddDefaultValuesToProfiles < ActiveRecord::Migration[8.0]
  def change
    change_column_default :necessary_profiles, :residence, from: nil, to: ""
    change_column_default :necessary_profiles, :job, from: nil, to: ""
    change_column_default :option_profiles, :place_of_birth, from: nil, to: ""
    change_column_default :option_profiles, :bio, from: nil, to: ""
  end
end
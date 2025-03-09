class RemoveCertificateFromUnnecessaryProfiles < ActiveRecord::Migration[8.0]
  def change
    remove_column :option_profiles, :certificate, :string, array: true, default: []
  end
end

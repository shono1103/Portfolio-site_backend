class CreateCertificates < ActiveRecord::Migration[8.0]
  def change
    create_table :certificates do |t|
      t.references :user, null: false, foreign_key: true
      # IPA資格
      t.boolean :IPA_FE, default: false
      t.boolean :IPA_AP, default: false
      t.boolean :IPA_NW, default: false
      t.boolean :IPA_DB, default: false
      t.boolean :IPA_PM, default: false
      t.boolean :IPA_SA, default: false
      
      # cisco資格
      t.boolean :CCNA, default: false
      t.boolean :CCNP, default: false

      # AWS資格
      # アソシエイトレベル
      t.boolean :AWS_SAA, default: false 
      t.boolean :AWS_DVA, default: false
      t.boolean :AWS_SOA, default: false
      # プロフェッショナルレベル
      t.boolean :AWS_SAP, default: false
      t.boolean :AWS_DOP, default: false

      t.timestamps
    end
  end
end

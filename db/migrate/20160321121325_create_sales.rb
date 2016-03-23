class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.belongs_to :article, index: true
      t.belongs_to :user, index: true
      t.date :date_debut
      t.date :date_fin
      t.decimal :prix
      t.string :adresse
      
      t.timestamps null: false
    end
  end
end

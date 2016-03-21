class CreateVentes < ActiveRecord::Migration
  def change
    create_table :ventes do |t|
      t.integer :article_id, null: false
      t.integer :user_id, null: false
      t.date :date_debut
      t.date :date_fin
      t.decimal :prix
      t.string :adresse
      
      t.timestamps null: false
    end
      add_foreign_key :ventes, :articles
      add_foreign_key :ventes, :users
  end
end

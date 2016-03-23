class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.belongs_to :article, index: true
      t.belongs_to :user, index: true
      t.date :date_start
      t.date :date_end
      t.decimal :price
      t.string :address
      
      t.timestamps null: false
    end
  end
end

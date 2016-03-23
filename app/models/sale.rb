class Sale < ActiveRecord::Base
  validates :price, numericality: { greater_than: 0 }
  
  belongs_to :article
  belongs_to :user
end

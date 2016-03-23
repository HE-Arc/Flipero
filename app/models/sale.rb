class Sale < ActiveRecord::Base
  validates :prix, numericality: { greater_than: 0 }
  
  belongs_to :article
  belongs_to :user
end

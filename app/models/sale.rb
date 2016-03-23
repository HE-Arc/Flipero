class Sale < ActiveRecord::Base
  validates :prix, numericality: { greater_than: 0 }
end

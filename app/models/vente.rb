class Vente < ActiveRecord::Base
  validates :prix, numericality: { greater_than: 0 }
end

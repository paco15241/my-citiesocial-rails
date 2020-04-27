class Product < ApplicationRecord
  acts_as_paranoid
  include CodeGenerator

  has_rich_text :description
  
  validates :name, presence: true
  validates :list_price, :sell_price, numericality: { greater_then: 0, allow_nil: true }
  validates :code, uniqueness: true

  belongs_to :vendor
end

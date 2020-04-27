class Product < ApplicationRecord
  acts_as_paranoid
  include CodeGenerator

  validates :name, presence: true
  validates :list_price, :sell_price, numericality: { greater_then: 0, allow_nil: true }
  validates :code, uniqueness: true

  belongs_to :vendor
end

class Product < ApplicationRecord
  belongs_to :user
  has_many :rates

  def rate_avrate
    rates.average(:score).to_i
  end
end

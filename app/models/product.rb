class Product < ApplicationRecord
  belongs_to :user
  has_many :rates


  scope :p_name, -> (name) { where(name: name)}

  def rate_avrate
    rates.average(:score).to_i
  end
end

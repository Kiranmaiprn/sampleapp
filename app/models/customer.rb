class Customer < ApplicationRecord
    has_many :orders
  has_many :reviews
  validates :first_name,presence: true
  def name
    "i am #{first_name}"
  end
end

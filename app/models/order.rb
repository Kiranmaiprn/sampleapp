class Order < ApplicationRecord
  belongs_to :customer
  has_and_belongs_to_many :books, join_table: 'book_orders'
  enum :status, [:shipped, :being_shipped, :completed,:cancelled]

  scope :created_before,-> (t){where(created_at:...t) if t.present?}

end

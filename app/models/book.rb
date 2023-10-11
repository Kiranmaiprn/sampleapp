class Book < ApplicationRecord
  belongs_to :supplier
  belongs_to :author

  has_many :reviews
  has_and_belongs_to_many :orders, join_table: 'book_orders'

  scope :in_print, -> { where(out_of_print: false) }
  scope :old, -> { where(year_published: ...50.years.ago.year) }
 
 
  scope :out_of_print, -> {where(out_of_print:true)}
  scope :out_of_print_and_expensive,->{out_of_print.where("price>750")}
  scope :costs_more_than,->(a){where("price>?",a)}
  # def self.costs_more_than(a)
  #   where("price>?",a)
  # end
  #default_scope {where(year_published: 50.years.ago.year..)}
  



end

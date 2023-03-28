class Book < ApplicationRecord
  belongs_to :admin
  has_many :collections
  has_many :users, through: :collections
end

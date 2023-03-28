class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :description
  belongs_to :admin
  has_many :users
end

class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :description
end

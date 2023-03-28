class AdminSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password
  has_many :books
end

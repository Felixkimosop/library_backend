class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password

  has_many :books, :dependent => :destroy
end

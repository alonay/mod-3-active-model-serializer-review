class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :publisher, :isbn, :genre

  belongs_to :user
end

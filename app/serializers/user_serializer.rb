class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :email, :user_books, :user_reviews

  def user_books
    object.books.map {|book| {title: book.title, author: book.author}}
  end

  def user_reviews
    object.reviews.map {|review| {content: review.content, book: review.book}}
  end
end

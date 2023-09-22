# Railsではコントローラからビューにデータを渡すためにもインスタンス変数が使われる(オブジェクト指向とは役割が異なる)
class BooksController < ApplicationController
  def index
    # @bookはコントローラからビューにデータを渡すために使われるインスタンス変数
    # (Railsの規約としてそうなっているだけ)
    @books = Book.all
  end
end
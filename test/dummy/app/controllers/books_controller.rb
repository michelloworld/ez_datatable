class BooksController < ApplicationController
	include EzDatatable::Controller

  def index
  	@books = Book.joins(:category).search(params[:filter], params[:operator])
  	@table = _table(@books, Book.datatable_config)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

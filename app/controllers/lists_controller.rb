class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to lists_path
  end

  def new
    @list = List.new
  end
end

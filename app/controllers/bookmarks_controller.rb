class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    bookmark = Bookmark.new(bookmarks_params)
    bookmark.save
    redirect_to bookmarks_path
  end

  def destroy
    @bookmark.destroy
    redirect_to bookmarks_path
  end
end

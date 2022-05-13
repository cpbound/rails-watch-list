class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new()
    @list = List.find(params[:list_id])
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@bookmark.list)
    else
      @list = List.find(params[:list_id])
      render :new
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
end

def bookmark_params
  params.require(:bookmark).permit(:comment, :movie_id)
end

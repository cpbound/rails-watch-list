class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new()
    @list = List.find(params[:list_id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = List.find(params[:list_id])
    raise
    if @bookmark.save
      redirect_to list_path(@bookmark[:list_id])
    else
      "Hahahah"
    end
  end

end

def bookmark_params
  params.require(:bookmark).permit(:comment, :movie_id, :list_id)
end

class BoardsController < ApplicationController
  # index
  def index
    @boards = Board.all
  end

  # new
  def new
    @board = Board.new
  end

  # create
  def create
    @board = current_user.boards.new(board_params)
    if @board.save
      flash[:notice] = "#{@board.title} was successfully created."
      redirect_to @board
    else
      render :new
    end
  end

  #show
  def show
    @board = Board.find(params[:id])
  end

  # # edit
  # def edit
  #   @artist = Artist.find(params[:id])
  # end
  #
  #
  # # update
  # def update
  #   @artist = Artist.find(params[:id])
  #   if @artist.update(artist_params)
  #     flash[:notice] = "#{@artist.name} was successfully updated."
  #     redirect_to @artist
  #   else
  #     render :edit
  #   end
  # end
  #
  # # destroy
  # def destroy
  #   @artist = Artist.find(params[:id])
  #   @artist.destroy
  #   redirect_to artists_path
  # end
  #
  private
  def board_params
    params.require(:board).permit(:title)
  end
end

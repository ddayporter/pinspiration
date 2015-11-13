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

  # edit
  def edit
    @board = Board.find(params[:id])
  end


  # update
  def update
    @board = Board.find(params[:id])
    if @board.update(board_params)
      flash[:notice] = "#{@board.title} was successfully updated."
      redirect_to @board
    else
      render :edit
    end
  end

  # destroy
  def destroy
    @board = Board.find(params[:id])
    @board.destroy
    redirect_to root_path
  end

  private
  def board_params
    params.require(:board).permit(:title)
  end
end

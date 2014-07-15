class BoardsController < ApplicationController
  before_action :signed_in_user

  def create
  	@board = current_user.boards.build(board_params)
    if @board.save
      flash[:success] = "Board created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def board_params
      params.require(:board).permit(:title)
    end
end
class MarksController < ApplicationController
  def create
    @board = Board.find(params[:board_id])
    @mark = @board.marks.create(mark_params)
    if @mark.save
      flash[:success] = "Mark created!"
    else
      flash[:failure] = "Mark not created!"
    end
    redirect_to board_path(@board)
  end
 
  private
    def mark_params
      params.require(:mark).permit(:lat, :lon)
    end
end

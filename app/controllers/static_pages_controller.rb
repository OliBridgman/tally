class StaticPagesController < ApplicationController
  def home
  	@board = current_user.boards.build if signed_in?
  end
end

class GamesController < ApplicationController
  def new; end

  def create
    game = Game.create

    redirect_to game
  end

  def show; end
end

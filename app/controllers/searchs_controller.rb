class SearchsController < ApplicationController
  def top
    @games = Game.all
  end

  def search
    
  end
end

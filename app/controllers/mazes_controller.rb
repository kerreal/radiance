class MazesController < ApplicationController
    def index
      render json: Maze.all
    end
end

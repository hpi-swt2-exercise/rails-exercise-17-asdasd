class PapersController < ApplicationController

  def index

  end

  def new
    @paper = Paper.new
  end

end

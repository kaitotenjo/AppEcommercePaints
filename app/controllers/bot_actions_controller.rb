class BotActionsController < ApplicationController
  def index
    @paints = if params[:term]
      Book.where('name LIKE ?', "%#{params[:term]}%")
    else
      Book.all
    end
  end

  def new
  end

  def show
  end

  def create
  end

  def edit; end

  def update
  end

  def destroy
  end
  private
  
  def process_user_input
  end

  def search_interior
  end
end

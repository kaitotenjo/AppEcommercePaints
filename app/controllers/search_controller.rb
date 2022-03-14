class SearchController < ApplicationController
  def search
    @paints = Paint.search(params[:term]).order_by_name

    respond_to do |f|
      f.json {render json: @paints.pluck(:name).to_json}
    end
  end
end

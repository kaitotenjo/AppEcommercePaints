class PaintsController < ApplicationController
  before_action :set_paint, only: [:show,:edit, :update, :destroy]
  before_action :admin_product
  before_action :set_user

  def index
    @pagy, @paints = pagy(Paint.lastest,items: 8)
    @order_item = current_order.order_items.new
  end

  def show
    @order_item = current_order.order_items.new
    if Comment.where(:paint_id => @paint.id).nil?
      @comment=Comment.new
    else
    @comments= Comment.where(:paint_id => @paint.id)
      if current_user.nil?
      else
      @comment=Comment.new(user_id: current_user.id, paint_id:@paint.id)
      end
    end
  end
  
  def search
    @paints= Paint.where("name LIKE?","%"+params[:q]+"%")
    @order_item = current_order.order_items.new
  end

  def new
    if paint_params.empty?
      @paint = Paint.new(paint_params)
    else
    @paint = Paint.new(paint_params)
    @paint.save
    end
  end


  def edit
  end

  def create
    @paint = Paint.new(paint_params)

    respond_to do |format|
      if @paint.save
        format.html { redirect_to @paint, notice: 'Paint was successfully created.' }
        format.json { render :show, status: :created, location: @paint }
      else
        format.html { render :new }
        format.json { render json: @paint.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @paint.update(paint_params)
        format.html { redirect_to @paint, notice: 'Paint was successfully updated.' }
        format.json { render :show, status: :ok, location: @paint }
      else
        format.html { render :edit }
        format.json { render json: @paint.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @paint.destroy
    respond_to do |format|
      format.html { redirect_to paints_url, notice: 'Paint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paint
      @paint = Paint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paint_params
      params.permit(:name, :price, :description, :type_paint)
    end 

    def admin_product
      @pagy, @paints = pagy(Paint.lastest,items: 5)
    end
    def admin_cart
      @pagy, @paints = pagy(Paint.lastest,items: 5)
    end
    def set_user
      @user = current_user
    end
end

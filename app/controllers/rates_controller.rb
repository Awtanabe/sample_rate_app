class RatesController < ApplicationController
  
  def new
    @product = Product.find(params[:product_id])
  end
  def create
    @rate = Rate.new(rate_params)
    if @rate.save
      redirect_to root_path
    else

    end

  end

  def destroy
  end

  private
  def rate_params
   params.require(:rate).permit(:score, :comment).merge(user_id: current_user.id, product_id: params[:product_id])
  end
end

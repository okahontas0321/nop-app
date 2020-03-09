class ProductsController < ApplicationController
  # before_action :set_machine
  def products_submit
    @product = Product.new
  end

  def card
  end

  def details
  end

  def foreachproducts
  end

  def create
    @product = Product.new(create_params)
    @product.save
    redirect_to root_path
  end

  def new
    # @product = Product.new
    # @product.build_machine
  end

  def json
  end

  def machine
  end

  private

  def create_params
    params.require(:product).permit(
      :producer, 
      :producer02,
      :machine_number,
      :product_no,
      :production_year, 
      :production_month, 
      :production_day, 
      :number_of_production, 
      :defective,
      :waste, 
      :total_production,
      :description,
      :operating_time).merge(user_id: current_user.id)
  end
  
  # def set_machine
  #   @machine = Machine.new
  # end
end

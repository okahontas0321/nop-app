class ProductsController < ApplicationController
  # before_action :set_machine
  # def products_submit
  #   # @products = Product.new
  #   @dateds = Dated.new
  # end

  # def card
  # end

  # def details
  # end

  # def foreachproducts
  # end

  # def create
  #   @dated = Dated.new(create_params)
  #   @dated.save
  #   binding.pry
  #   # @product = Product.new(create_params)
  #   #   params.each do |product|
  #   #     @product.product_no = params[:product_no]
  #   #     @product.number_of_production = params[:number_of_production]
  #   #     @product.defective = params[:defective]
  #   #     @product.waste = params[:waste]
  #   #     @product.producer = params[:producer]
  #   #     @product.producer02 = params[:producer02]
  #   #     @product.save
  #   #     binding.pry
  #   #   end
  #   # respond_to do |format|
  #   #   format.json
  #   #   format.html
  #   # end
  #   redirect_to root_path
  # end

  # def new
  #   # @product = Product.new
  #   @dated = Dated.new
  #   @dated.date_products.build
  # end

  # private

  # def create_params
  #   params.require(:dated).permit(
  #     :producer, 
  #     :producer02,
  #     :product_no,
  #     :number_of_production, 
  #     :defective,
  #     :waste,
  #     [date_products_attributes: [:dated_id, :product_id, :product_no, :producer, :producer02, :number_of_production, :defective, :waste]]
  #     ).merge(user_id: current_user.id)
  #   end



end

class DatedController < ApplicationController
  def products_submit
    @dated = Dated.new
    # @dated.date_products.build
  end

  def card
    @day = Dated.find_by(id: params[:id])
  end

  def details
  end

  def foreachproducts
  end

  def create
    @dated = Dated.new(create_params)
    @dated.save
    binding.pry
    redirect_to root_path
  end

  def new
    @dated = Dated.new
    @dated.date_products.build
  end

  private

  def create_params
    params.require(:dated).permit(
      :machine_number, 
      :operating_time,
      :production_year,
      :production_month, 
      :production_day,
      :total_production,
      :description,
      date_products_attributes: [:product_no, :producer, :producer02, :number_of_production, :defective, :waste,:id, :_destroy,:dated_id]
      ).merge(user_id: current_user.id)
    end
end

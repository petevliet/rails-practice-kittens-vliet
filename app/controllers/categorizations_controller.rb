class Categorization < ApplicationController

  def new
    @categorization = Categorization.new
  end

  def create
    @kitten = Kitten.find(params[:kitten_id])
    @categorization = Categorization.new(categorization_params)

    @categorization.kitten_id = @kitten.id

    if @categorization.save
      redirect_to root_path
    end
  end


  private
  def categorization_params
    params.require(:categorization).permit(:kitten_id, :category_id)
  end

end

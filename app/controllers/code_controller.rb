class CodeController < ApplicationController
  def code_params
    params.require(:code).permit(:name, :author, :code, :create_date)
  end

  def index
    @codes = Code.all
  end

  def new

  end

  def create
    params.require(:code)
    permitted = params[:code].permit(:name, :author, :code, :create_date)
    @code = Code.create!(permitted)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to code_index_path
  end

  def edit
    @code = Code.find params[:id]
  end

  def update
     @code = Code.find params[:id]
     permitted = params[:code].permit(:name, :author, :code, :create_date)
     @code.update_attributes!(permitted)

     flash[:notice] = "#{@code.name} was successfully updated."
     redirect_to code_path(@code)
   end

  def show
    id = params[:id]
    @code = Code.find(id)
  end

  def destroy
    @code = Code.find(params[:id])
    @code.destroy
    flash[:notice] = "Code '#{@code.name}' deleted."
    redirect_to code_index_path
  end
end

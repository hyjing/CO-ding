class FoldController < ApplicationController
  def fold_params
    params.require(:fold).permit(:fold_name, :fold_author, :fold_create_date)
  end

  def index
    @folds = Fold.all
  end

  def show
    id = params[:id]
    @codes = Code.where(parent: id)
    @fold = Fold.find params[:id]
    session[:current_fold_id] = @fold.id
  end

  def new
  end

  def create
    params.require(:fold)
    permitted = params[:fold].permit(:fold_name, :fold_author, :fold_create_date)
    @fold = Fold.create!(permitted)
    flash[:notice] = "#{@fold.fold_name} was successfully created."
    redirect_to fold_index_path
  end


  def destroy
    id = params[:id]
    @fold = Fold.find(params[:id])
    Code.where(parent: id).each do |code|
      code.destroy
    end
    @fold.destroy
    flash[:notice] = "Fold '#{@fold.fold_name}' deleted."
    redirect_to fold_index_path
  end
end

class EndpointsController < ApplicationController
  
  helper_method :sort_column, :sort_direction
  
  def index
    @endpoints = Endpoint.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 100, :page => params[:page])
  end
  
  def show
    @endpoint = Endpoint.find(params[:id])
  end
  
  def new
    @endpoint = Endpoint.new
  end
  
  def create
    @endpoint = Endpoint.new(params[:endpoint])
    if @endpoint.save
      flash[:notice] = "Successfully created endpoint."
      redirect_to @endpoint
    else
      render :action => 'new'
    end
  end
  
  def edit
    @endpoint = Endpoint.find(params[:id])
  end
  
  def update
    @endpoint = Endpoint.find(params[:id])
    if @endpoint.update_attributes(params[:endpoint])
      flash[:notice] = "Successfully updated endpoint."
      redirect_to @endpoint
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @endpoint = Endpoint.find(params[:id])
    @endpoint.destroy
    flash[:notice] = "Successfully destroyed endpoint."
    redirect_to endpoints_url
  end
  
  private
  
  def sort_column
    Endpoint.column_names.include?(params[:sort]) ? params[:sort] : "extension"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end

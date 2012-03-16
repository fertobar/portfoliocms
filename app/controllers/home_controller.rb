class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => [:index,:show]

  def index
    @sections = Section.order(:priority)
    @section = @sections.first || Section.new
    render action: "show"
  end
  
  def show
    @sections = Section.order(:priority)
    @section = Section.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @section }
    end
  end

  
end

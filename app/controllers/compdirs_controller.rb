class CompdirsController < ApplicationController
  def new
    @compdir = Compdir.new
  end
  def edit
    @compdir = Compdir.find(params[:id])
  end
  def create
    @compdir = Compdir.new(params[:compdir])
      if @compdir.save
        redirect_to requirements_path
        flash[:notice] = "Thank you, the Company Director was successfully created."
      else
        render action "new"
      end
  end
end

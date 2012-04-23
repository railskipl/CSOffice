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
        redirect_to @compdir
      else
        render action "new"
      end
  end
end

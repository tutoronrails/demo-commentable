class PagesController < ApplicationController
  def index
    @pages = Page.page(params[:page])
  end

  def show
    @page = Page.find(params[:id])
  end
end

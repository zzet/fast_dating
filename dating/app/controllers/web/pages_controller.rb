class Web::PagesController < Web::ApplicationController

  before_filter :find_by_slug_or_id

  def show
    if params[:id].to_i == @page.id
      redirect_to page_path(@page.slug)
    end
  end

  private

  def find_by_slug_or_id
    @page = Page.published.find_by_slug(params[:id])
    if @page.nil?
      @page = Page.find(params[:id])
    end
  end
end

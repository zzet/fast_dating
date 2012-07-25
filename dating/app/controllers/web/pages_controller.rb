class Web::PagesController < Web::ApplicationController

  before_filter :find_by_slug_or_id

  def show

  end

  private

  def find_by_slug_or_id
    if params[:id].is_a?(Numeric)
      @page = Page.find(params[:id])
      redirect_to page_path(@page.slug)
    else
      @page = Page.published.find_by_slug(params[:id])
    end
  end
end

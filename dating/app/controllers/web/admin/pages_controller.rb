class Web::Admin::PagesController < Web::Admin::ApplicationController
  def index
    params[:search] ||= {:meta_sort => "id.desc"}
    @search = Page.metasearch(params[:search])
    @pages = @search.page params[:page]
    headline headline_translate(:title)
  end

  def new
    @page = Page.new
    headline headline_translate(:title)
  end

  def create
    @page = Page.new(params[:page])
    if @page.save
      flash[:success] = flash_translate(:success)
      redirect_to edit_admin_page_path(@page.id)
    else
      flash[:error] = flash_translate(:error)
      render :action => :new
    end
  end

  def edit
    @page = Page.find(params[:id])
    headline headline_translate(:title)
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      flash[:success] = flash_translate(:success)
      redirect_to admin_pages_path
    else
      flash[:error] = flash_translate(:error)
      redirect_to edit_admin_page_path(@page.id)
    end
  end

  def destroy
    @page = Page.find(params[:id])
    if @page.destroy
      flash[:success] = flash_translate(:success)
    else
      flash[:error] = flash_translate(:error)
    end
    redirect_to admin_pages_path
  end

  def show
    redirect_to edit_admin_page_path(params[:id])
  end
end

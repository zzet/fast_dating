class Web::Admin::RequestsController < Web::Admin::ApplicationController
    def index
    params[:search] ||= {:meta_sort => "id.desc"}
    @search = Request.metasearch(params[:search])
    @requests = @search.page params[:request]
    headline headline_translate(:title)
  end

  def new
    @request = Request.new
    headline headline_translate(:title)
  end

  def create
    @request = Request.new(params[:request])
    if @request.save
      flash[:success] = flash_translate(:success)
      redirect_to edit_admin_request_path(@request.id)
    else
      flash[:error] = flash_translate(:error)
      render :action => :new
    end
  end

  def edit
    @request = Request.find(params[:id])
    headline headline_translate(:title)
  end

  def update
    @request = Request.find(params[:id])
    if @request.update_attributes(params[:request])
      flash[:success] = flash_translate(:success)
      redirect_to admin_requests_path
    else
      flash[:error] = flash_translate(:error)
      redirect_to edit_admin_request_path(@request.id)
    end
  end

  def destroy
    @request = Request.find(params[:id])
    if @request.destroy
      flash[:success] = flash_translate(:success)
    else
      flash[:error] = flash_translate(:error)
    end
    redirect_to admin_requests_path
  end

  def show
    @request = Request.find(params[:id])
  end
end

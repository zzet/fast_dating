class Web::Admin::ActionRequestsController < Web::Admin::ApplicationController
    def index
    params[:search] ||= {:meta_sort => "id.desc"}
    @search = ActionRequest.metasearch(params[:search])
    @action_requests = @search.page params[:action_request]
    headline headline_translate(:title)
  end

  def new
    @action_request = ActionRequest.new
    headline headline_translate(:title)
  end

  def create
    @action_request = ActionRequest.new(params[:action_request])
    if @action_request.save
      flash[:success] = flash_translate(:success)
      redirect_to edit_admin_action_request_path(@action_request.id)
    else
      flash[:error] = flash_translate(:error)
      render :action => :new
    end
  end

  def edit
    @action_request = ActionRequest.find(params[:id])
    headline headline_translate(:title)
  end

  def update
    @action_request = ActionRequest.find(params[:id])
    if @action_request.update_attributes(params[:action_request])
      flash[:success] = flash_translate(:success)
      redirect_to admin_action_requests_path
    else
      flash[:error] = flash_translate(:error)
      redirect_to edit_admin_action_request_path(@action_request.id)
    end
  end

  def destroy
    @action_request = ActionRequest.find(params[:id])
    if @action_request.destroy
      flash[:success] = flash_translate(:success)
    else
      flash[:error] = flash_translate(:error)
    end
    redirect_to admin_action_requests_path
  end

  def show
    @action_request = ActionRequest.find(params[:id])
  end
end

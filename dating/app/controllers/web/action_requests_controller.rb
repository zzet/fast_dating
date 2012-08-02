class Web::ActionRequestsController < Web::ApplicationController
  def create
    @action_request = ActionRequest.new(params[:action_request])
    if @action_request.save
      flash[:success] = flash_translate(:success)
    else
      flash[:error] = flash_translate(:error)
    end
  end
end

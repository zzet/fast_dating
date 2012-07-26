class Web::RequestsController < Web::ApplicationController
  def create
    @request = Request.new(params[:request])
    if @request.save
      flash[:success] = flash_translate(:success)
    else
      flash[:error] = flash_translate(:error)
    end
  end
end

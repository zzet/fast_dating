class Web::Admin::DatingEventsController < Web::Admin::ApplicationController
  def index
    params[:search] ||= {:meta_sort => "id.desc"}
    @search = DatingEvent.metasearch(params[:search])
    @dating_events = @search.page params[:page]
    headline headline_translate(:title)
  end

  def new
    @dating_event = DatingEvent.new
    headline headline_translate(:title)
  end

  def create
    @dating_event = DatingEvent.new(params[:dating_event])
    if @dating_event.save
      flash[:success] = flash_translate(:success)
      redirect_to edit_admin_dating_event_path(@dating_event.id)
    else
      flash[:error] = flash_translate(:error)
      render :action => :new
    end
  end

  def edit
    @dating_event = DatingEvent.find(params[:id])
    headline headline_translate(:title)
  end

  def update
    @dating_event = DatingEvent.find(params[:id])
    if @dating_event.update_attributes(params[:dating_event])
      flash[:success] = flash_translate(:success)
      redirect_to admin_dating_events_path
    else
      flash[:error] = flash_translate(:error)
      redirect_to edit_admin_dating_event_path(@dating_event.id)
    end
  end

  def destroy
    @dating_event = DatingEvent.find(params[:id])
    if @dating_event.destroy
      flash[:success] = flash_translate(:success)
    else
      flash[:error] = flash_translate(:error)
    end
    redirect_to admin_dating_events_path
  end

  def show
    redirect_to edit_admin_dating_event_path(params[:id])
  end
end

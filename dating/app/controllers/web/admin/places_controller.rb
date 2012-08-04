class Web::Admin::PlacesController < Web::Admin::ApplicationController
  def index
    params[:search] ||= {:meta_sort => "id.desc"}
    @search = Place.metasearch(params[:search])
    @places = @search.page params[:page]
    headline headline_translate(:title)
  end

  def new
    @place = Place.new
    headline headline_translate(:title)
  end

  def create
    @place = Place.new(params[:place])
    if @place.save
      flash[:success] = flash_translate(:success)
      redirect_to edit_admin_place_path(@place.id)
    else
      flash[:error] = flash_translate(:error)
      render :action => :new
    end
  end

  def edit
    @place = Place.find(params[:id])
    headline headline_translate(:title)
  end

  def update
    @place = Place.find(params[:id])
    if @place.update_attributes(params[:place])
      flash[:success] = flash_translate(:success)
      redirect_to admin_places_path
    else
      flash[:error] = flash_translate(:error)
      redirect_to edit_admin_place_path(@place.id)
    end
  end

  def destroy
    @place = Place.find(params[:id])
    if @place.destroy
      flash[:success] = flash_translate(:success)
    else
      flash[:error] = flash_translate(:error)
    end
    redirect_to admin_places_path
  end

  def show
    redirect_to edit_admin_place_path(params[:id])
  end
end

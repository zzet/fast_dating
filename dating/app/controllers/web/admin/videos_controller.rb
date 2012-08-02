class Web::Admin::VideosController < ApplicationController
  def index
    params[:search] ||= {:meta_sort => "id.desc"}
    @search = Video.metasearch(params[:search])
    @videos = @search.page params[:page]
    headline headline_translate(:title)
  end

  def new
    @video = Video.new
    headline headline_translate(:title)
  end

  def create
    @video = Video.new(params[:video])
    if @video.save
      flash[:success] = flash_translate(:success)
      redirect_to edit_admin_video_path(@video.id)
    else
      flash[:error] = flash_translate(:error)
      render :action => :new
    end
  end

  def edit
    @video = Video.find(params[:id])
    headline headline_translate(:title)
  end

  def update
    @video = Video.find(params[:id])
    if @video.update_attributes(params[:video])
      flash[:success] = flash_translate(:success)
      redirect_to admin_videos_path
    else
      flash[:error] = flash_translate(:error)
      redirect_to edit_admin_video_path(@video.id)
    end
  end

  def destroy
    @video = Video.find(params[:id])
    if @video.destroy
      flash[:success] = flash_translate(:success)
    else
      flash[:error] = flash_translate(:error)
    end
    redirect_to admin_videos_path
  end

  def show
    redirect_to edit_admin_video_path(params[:id])
  end
end

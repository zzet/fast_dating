class Web::Admin::UsersController < Web::Admin::ApplicationController
  def index
    params[:search] ||= {:meta_sort => "id.desc"}
    @search = User.metasearch(params[:search])
    @users = @search.page params[:page]
    headline headline_translate(:title)
  end

  def new
    @user = User.new
    headline headline_translate(:title)
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = flash_translate(:success)
      redirect_to edit_admin_user_path(@user)
    else
      flash[:error] = flash_translate(:error)
      render :action => :new
    end
  end

  def edit
    @user = User.find(params[:id])
    headline headline_translate(:title)
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = flash_translate(:success)
      redirect_to admin_users_path
    else
      flash[:error] = flash_translate(:error)
      redirect_to edit_admin_user_path(@user)
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:success] = flash_translate(:success)
    else
      flash[:error] = flash_translate(:error)
    end
    redirect_to admin_users_path
  end

  def show
    redirect_to edit_admin_user_path(params[:id])
  end
end

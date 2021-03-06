class ManagersController < ApplicationController
  before_action :set_manager, only: [:show, :edit, :update, :destroy]

  def index
    @managers = current_user.managers
  end

  def show
  end

  def new
    @manager = Manager.new
  end

  def create 
    @manager = current_user.managers.new(manager_params)
    if@manager.save
      redirect_to managers_path
    else render :new
    end
  end


  def edit
    render partial: "form"
 
  end

  def update
    if @manager.update(manager_params)
      redirect_to managers_path
    else :edit
    end
  end

  def destroy
    @manager.destroy
    redirect_to managers_path
  end

  private 
  def manager_params
    params.require(:manager).permit(:name, :balance)
  end


  def set_manager
    @manager = current_user.managers.find(params[:id])
  end

end




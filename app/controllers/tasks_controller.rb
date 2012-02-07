class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find params[:id]
  end

  def new
    @group = Group.find(params[:group_id]) if params[:group_id]
    @task = Task.new
  end

  def create
    task = Task.new params[:task]
    task.groups << Group.find(params[:group_id]) if params[:group_id]

    if task.save
      redirect_to task
    else
      render :action => "new"
    end
  end

  def edit
    @task = Task.find params[:id]
  end

  def update
    task = Task.find params[:id]

    if task.update_attributes params[:task]
      redirect_to task
    else
      render :action => "edit"
    end
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to tasks_path
  end
end

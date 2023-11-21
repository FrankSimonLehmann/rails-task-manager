class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    # find the right task to display
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_params)
    @task.save
    redirect_to tasks_all_path
  end

  def edit
    # find the task we want to edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(tasks_params)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_all_path
  end

  private
  def tasks_params
    params.require(:task).permit(:title, :details)
  end
end

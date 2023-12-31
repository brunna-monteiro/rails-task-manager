class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(tasks_params)
    task.save

    redirect_to tasks_path(task)
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :details)
  end
end

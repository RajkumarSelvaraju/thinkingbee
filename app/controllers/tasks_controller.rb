class TasksController < ApplicationController

  def index
    @tasks = current_company.tasks
  end

  def new
    @task = Task.new
  end

  def create
    @task = current_company.tasks.build(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def view_task
    @task = Task.find(params[:id])
    render layout: false
  end

   # Dashboard
  def dashboard
    
  end

    # Report
  def report
    @tasks = current_company.tasks
    respond_to do |formart|
      formart.xlsx
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :due_date, :owner, :task_category_id, :task_status_id, :priority_id, :notes)
  end
end

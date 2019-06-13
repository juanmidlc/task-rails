class TasksController < ApplicationController

    def index
        tasks = Task.all
        render status: 200, json: tasks
    end

    def show
        task = Task.find(params[:id])
        render json: task
    end

    def create
        task = Task.new(task_params)
        if task.save
            render status: 201, json: task
        else
            render status: 422, json: { errors: task.errors }
        end
    end

    def update
        task = Task.find(params[:id])

        if task.update(task_params)
            render status: 200, json: task
        else
            render status: 422, json: { errors: task.errors }
        end
    end

    def destroy
        task = Task.find(params[:id])
        task.destroy
        head 204
    end

    protected
    def task_params
        params[:task].permit(:name, :description, :finished, :priority, :color, :expires_at, :category_id, :created_at, :updated_at, :session_id)
    end
end

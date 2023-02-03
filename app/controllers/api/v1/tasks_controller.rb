class Api::V1::TasksController < ApplicationController
	before_action :set_task, only: %w(show update destroy)

	def index
		@tasks = unless params[:status].present?
							Task.all
						else
							Task.send(params[:status])
						end 
		render json: @tasks
	end

	def show
	end

	def create
	end

	def update
	end


	private

	def set_task
		@task = Task.find(params[:id])
	end

	def task_params
		params.require(:task).permit(:title, :priority, :status)
	end


end

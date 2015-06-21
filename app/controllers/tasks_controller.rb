class TasksController < ApplicationController
    
    def new
        @task = Task.new
    end
    
    
    def index
    end
    
    
    def create
        @task = Task.new(task_params)
        
        if @task.save
            redirect_to @task
        else
            render 'new'
        end
    end

    
    def show
    end
    
    def update
    end
    
    def destroy
    end
    
    private 
    
    
    def task_params
        params.require(:task).permit(:Title, :description)
    end
    
    
    
end

class TasksController < ApplicationController
    
    
    def new
        @task = current_user.tasks.build
    end
    
    
    def index
        @tasks = Task.all.order('created_at DESC')
    end
    
    
    def create
        @task = current_user.tasks.build(task_params)
        
        if @task.save
            redirect_to @task
        else
            render 'new'
        end
    end

    
    def show
        @task = Task.find(params[:id])
    end
    
    def edit
    end
    

    
    def update
        if @task.update(task_params)
            redirect_to @task
        else
            render 'edit'
        end
    end
    
    def destroy
        @task = Task.find(params[:id])
        @task.destroy
 
        redirect_to tasks_path   
    end
        
    
    
    private 
    
    
    def task_params
        params.require(:task).permit(:Title, :description)
    end
    
    
    
end

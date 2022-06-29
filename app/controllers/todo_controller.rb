class TodoController < ApplicationController

    def index
       @todos_list = Todo.all.map do |use|
        use
    end
    @todos_list
  end
        def create
            todo=Todo.new(user_params)
            todo.save
            redirect_to "/"
          end  
          def delete
            id = params[:del_id]
            del_todo= Todo.find(id)
            del_todo.destroy
            del_todo.save
            redirect_to "/"
           end
          #  def update
          #     id=params[:id]
          #     todo_upt=Todo.find(id)
          #     todo_upt.status :True
          #     todo_upt.save
          #     redirect_to "/"
          #  end
    private
          def user_params
          params.require(:todo).permit(:todo_text,:due_date,:status)
     end


    end

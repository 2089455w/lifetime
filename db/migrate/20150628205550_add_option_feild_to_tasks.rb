class AddOptionFeildToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :options, :string
  end
end

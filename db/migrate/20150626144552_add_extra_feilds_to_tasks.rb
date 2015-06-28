class AddExtraFeildsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :teacher, :string
    add_column :tasks, :complete, :boolean
    add_column :tasks, :list, :text
  end
end

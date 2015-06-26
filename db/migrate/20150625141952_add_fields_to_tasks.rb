class AddFieldsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :location, :string
    add_column :tasks, :time, :datetime
    add_column :tasks, :repeating, :boolean, :default => false
    add_column :tasks, :completeBy, :datetime
  end
end

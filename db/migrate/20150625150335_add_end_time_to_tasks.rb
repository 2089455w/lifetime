class AddEndTimeToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :endtime, :datetime
  end
end

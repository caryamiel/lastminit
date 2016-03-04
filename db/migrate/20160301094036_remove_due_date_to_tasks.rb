class RemoveDueDateToTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :dueDate, :date
  end
end

class RemoveTaskPriorityToTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :task_priority, :string
  end
end

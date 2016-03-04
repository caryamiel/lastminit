class RemoveTaskPrerequisiteToTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :task_prerequisite, :string
  end
end

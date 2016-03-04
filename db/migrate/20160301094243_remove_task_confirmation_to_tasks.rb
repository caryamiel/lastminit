class RemoveTaskConfirmationToTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :task_confirmation, :string
  end
end

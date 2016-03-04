class AddEarlyFinishToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :earlyFinish, :date
  end
end

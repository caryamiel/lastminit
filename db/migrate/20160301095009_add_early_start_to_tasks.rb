class AddEarlyStartToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :earlyStart, :date
  end
end

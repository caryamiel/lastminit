class AddSlackToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :slack, :string
  end
end

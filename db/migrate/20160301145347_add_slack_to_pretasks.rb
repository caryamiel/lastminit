class AddSlackToPretasks < ActiveRecord::Migration
  def change
    add_column :pretasks, :slack, :string
  end
end

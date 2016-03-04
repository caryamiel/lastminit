class AddPhaseToPretasks < ActiveRecord::Migration
  def change
    add_column :pretasks, :phase, :string
  end
end

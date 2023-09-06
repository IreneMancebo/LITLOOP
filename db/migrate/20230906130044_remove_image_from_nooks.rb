class RemoveImageFromNooks < ActiveRecord::Migration[7.0]
  def change
    remove_column :nooks, :image
  end
end

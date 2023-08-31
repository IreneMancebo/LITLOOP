class AddCoordinatesToNooks < ActiveRecord::Migration[7.0]
  def change
    add_column :nooks, :latitude, :float
    add_column :nooks, :longitude, :float
  end
end

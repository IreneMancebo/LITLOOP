class AddFilterstoNooks < ActiveRecord::Migration[7.0]
  def change
    add_column :nooks, :coffee, :boolean, default: false
    add_column :nooks, :wifi, :boolean, default: false
    add_column :nooks, :water, :boolean, default: false
    add_column :nooks, :quiet, :boolean, default: false
    add_column :nooks, :trees, :boolean, default: false
    add_column :nooks, :power, :boolean, default: false
    add_column :nooks, :seating, :boolean, default: false
    add_column :nooks, :shelter, :boolean, default: false
    add_column :nooks, :animals, :boolean, default: false
    add_column :nooks, :cost, :boolean, default: false
    add_column :nooks, :bathroom, :boolean, default: false
    add_column :nooks, :view, :boolean, default: false
  end
end

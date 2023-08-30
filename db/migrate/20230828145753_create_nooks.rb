class CreateNooks < ActiveRecord::Migration[7.0]
  def change
    create_table :nooks do |t|
      t.string :name
      t.string :coordinates
      t.string :description
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

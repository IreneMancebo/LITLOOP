class CreateFootnotes < ActiveRecord::Migration[7.0]
  def change
    create_table :footnotes do |t|
      t.string :text
      t.references :user, null: false, foreign_key: true
      t.references :nook, null: false, foreign_key: true

      t.timestamps
    end
  end
end

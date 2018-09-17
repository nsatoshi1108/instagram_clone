class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.text :img
      t.string :title
      t.text :comment
      t.references :user

      t.timestamps
    end
  end
end

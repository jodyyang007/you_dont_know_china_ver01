class CreateNatures < ActiveRecord::Migration[6.0]
  def change
    create_table :natures do |t|
      t.string :title
      t.string :details
      t.text :image
      t.timestamps
    end
  end
end

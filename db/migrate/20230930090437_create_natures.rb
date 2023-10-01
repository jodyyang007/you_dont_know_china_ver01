class CreateNatures < ActiveRecord::Migration[6.0]
  def change
    create_table :natures do |t|
      t.string :title
      t.text :details, limit: 65535
      t.text :image
      t.timestamps
    end
  end
end

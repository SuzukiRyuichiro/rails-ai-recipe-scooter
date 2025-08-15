class CreateReccipes < ActiveRecord::Migration[7.1]
  def change
    create_table :reccipes do |t|
      t.string :name
      t.string :ingredients
      t.string :content

      t.timestamps
    end
  end
end

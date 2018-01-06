class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
      t.string :word
      t.string :name
      t.text :examination
      t.date :date

      t.timestamps
    end
  end
end

class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :description
      t.integer :limit_of_guest
      t.references :user, foreign_key: true
      t.string :title
      t.string :address
      t.string :type_of_meal
      t.datetime :calendar
      t.string :type_of_event

      t.timestamps
    end
  end
end

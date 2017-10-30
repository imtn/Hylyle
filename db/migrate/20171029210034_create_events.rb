class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.text :title
      t.text :description
      t.date :date
      t.time :time
      t.boolean :isDeadline

      t.timestamps
    end
  end
end

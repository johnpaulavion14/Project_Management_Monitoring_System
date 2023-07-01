class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.text :message
      t.string :first_name
      t.string :last_name
      t.string :time
      t.integer :milestone_id

      t.timestamps
    end
  end
end

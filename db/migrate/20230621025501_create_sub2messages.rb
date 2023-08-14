class CreateSub2messages < ActiveRecord::Migration[7.0]
  def change
    create_table :sub2messages do |t|
      t.text :message
      t.string :first_name
      t.string :last_name
      t.string :time
      t.integer :sub2milestone_id

      t.timestamps
    end
  end
end

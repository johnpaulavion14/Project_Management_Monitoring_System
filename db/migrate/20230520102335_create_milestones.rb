class CreateMilestones < ActiveRecord::Migration[7.0]
  def change
    create_table :milestones do |t|
      t.string :task_name
      t.date :start
      t.date :finish
      t.text :assigned
      t.integer :complete
      t.date :date_completed
      t.text :output
      t.text :remarks
      t.integer :rock_id
      t.integer :user_id

      t.timestamps
    end
  end
end

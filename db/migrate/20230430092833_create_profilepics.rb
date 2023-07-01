class CreateProfilepics < ActiveRecord::Migration[7.0]
  def change
    create_table :profilepics do |t|
      t.string     :avatar 
      t.integer    :user_id

      t.timestamps
    end
  end
end

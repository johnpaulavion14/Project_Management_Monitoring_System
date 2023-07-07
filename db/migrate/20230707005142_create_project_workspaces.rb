class CreateProjectWorkspaces < ActiveRecord::Migration[7.0]
  def change
    create_table :project_workspaces do |t|
      t.string :folder_name
      t.text :assigned
      t.integer :user_id

      t.timestamps
    end
  end
end

class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :github_path
      t.references :category
      t.jsonb :info, default: {}

      t.timestamps
    end
  end
end

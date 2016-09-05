class CreateUserRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :user_routes do |t|
      t.references :user, foreign_key: true
      t.references :route, foreign_key: true

      t.timestamps
    end
  end
end

class CreateAddBodyToPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :add_body_to_posts do |t|
      t.text :body

      t.timestamps
    end
  end
end

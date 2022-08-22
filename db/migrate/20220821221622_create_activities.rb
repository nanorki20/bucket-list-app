class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :category_id
      t.string :description
      t.string :image_url
      t.string :location

      t.timestamps
    end
  end
end

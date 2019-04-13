class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.string :url_image

      t.timestamps
    end
  end
end

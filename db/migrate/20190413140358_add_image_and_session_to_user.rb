class AddImageAndSessionToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :images, foreign_key: true
    add_reference :users, :sessions, foreign_key: true
  end
end

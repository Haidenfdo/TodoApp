class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :todos, :status, :boolean, default: false
  end
end

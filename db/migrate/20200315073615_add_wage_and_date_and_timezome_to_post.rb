class AddWageAndDateAndTimezomeToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :wage, :integer
    add_column :posts, :date, :string
    add_column :posts, :timezone, :string
  end
end

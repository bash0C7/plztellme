class AddFromAndUrl < ActiveRecord::Migration
  def change
    add_column :telephones, :from_number, :string
    add_column :telephones, :url, :string
  end
end

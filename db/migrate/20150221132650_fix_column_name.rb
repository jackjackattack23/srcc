class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :students, :name, :first_name
  end
end

class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :parent1
      t.string :parent2
      t.string :email1
      t.string :email2
      t.string :email3
      t.string :email4
      t.string :classroom

      t.timestamps null: false
    end
  end
end

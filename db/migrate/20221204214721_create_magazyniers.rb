class CreateMagazyniers < ActiveRecord::Migration[7.0]
  def change
    create_table :magazyniers do |t|
      t.string :Name
      t.string :Surname
      t.decimal :Salary
      t.string :Shift
      t.references :magazyn, null: false, foreign_key: true

      t.timestamps
    end
  end
end

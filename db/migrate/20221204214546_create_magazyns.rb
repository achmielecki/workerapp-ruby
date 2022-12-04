class CreateMagazyns < ActiveRecord::Migration[7.0]
  def change
    create_table :magazyns do |t|
      t.string :City
      t.string :Street
      t.string :PostalCode
      t.string :Country

      t.timestamps
    end
  end
end

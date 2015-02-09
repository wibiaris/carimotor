class CreateMotors < ActiveRecord::Migration
  def change
    create_table :motors do |t|
      t.string :platno
      t.integer :merk_id
      t.integer :type_id
      t.decimal :harga
      t.string :warna
      t.integer :tahun

      t.timestamps
    end
  end
end

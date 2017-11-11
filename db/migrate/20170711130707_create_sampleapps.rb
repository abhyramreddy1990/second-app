class CreateSampleapps < ActiveRecord::Migration[5.0]
  def change
    create_table :sampleapps do |t|
      t.string :Fname
      t.string :Lname
      t.string :Gender
      t.string :Address
      t.string :Country

      t.timestamps
    end
  end
end

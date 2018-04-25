class CreateAids < ActiveRecord::Migration[5.1]
  def change
    create_table :aids do |t|
      t.float :latitude
      t.float :longitude
      t.string :title
      t.string :category
      t.string :aid_type
      t.text :explanation
      t.string :needy_name

      t.timestamps
    end
  end
end

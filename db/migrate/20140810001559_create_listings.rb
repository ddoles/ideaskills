class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :jobtitle
      t.text :description
      t.string :contactem
      t.string :compensation
      t.text :skills

      t.timestamps
    end
  end
end

class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :title
      t.text :source
      t.text :description
      t.text :track
      t.text :level

      t.timestamps
    end
  end
end

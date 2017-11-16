class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :link
      t.references :course

      t.timestamps
    end
  end
end

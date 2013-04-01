class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :code
      t.string :source
      t.text :description
      t.string :title
      t.float :pep
      t.float :sarcasm
      t.float :outlook
      t.float :iq

      t.timestamps
    end
  end
end

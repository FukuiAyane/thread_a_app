class CreateMsgs < ActiveRecord::Migration[5.1]
  def change
    create_table :msgs do |t|
      t.text :content

      t.timestamps
    end
  end
end

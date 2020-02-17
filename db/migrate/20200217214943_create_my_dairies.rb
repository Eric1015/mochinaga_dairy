class CreateMyDairies < ActiveRecord::Migration[6.0]
  def change
    create_table :my_dairies do |t|
      t.text :content

      t.timestamps
    end
  end
end

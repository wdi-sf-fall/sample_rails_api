class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :api_key
      t.integer :api_rpm, default: 0;

      t.timestamps
    end
  end
end

class CreateTigers < ActiveRecord::Migration
  def change
    create_table :tigers do |t|
      t.integer :appetite, default: 100

      t.timestamps null: false
    end
  end
end

  # def change
  #   create_table :tigers do |t|
  #     t.integer :tiger, default: 100
  #     t.string :name

  #     t.timestamps null: false
  #   end
  # end

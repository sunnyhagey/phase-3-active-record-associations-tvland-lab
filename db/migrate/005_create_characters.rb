class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string    :name 
      t.belongs_to    :actor
      t.belongs_to    :show
      # t.string    :show_id
      # t.string    :actor_id  
    end
  end
end

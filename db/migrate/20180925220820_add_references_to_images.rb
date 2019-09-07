class AddReferencesToImages < ActiveRecord::Migration[5.2]
  def change
    add_reference :images, :context, foreign_key: true
  end
end

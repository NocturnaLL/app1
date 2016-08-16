class AddOwnerToComments < ActiveRecord::Migration[5.0]
  def change
  	 add_reference :comments, :owner, foreign_key: true
  end
end

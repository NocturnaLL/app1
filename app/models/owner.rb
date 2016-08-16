class Owner < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :places 
  has_many :comments, dependent: :destroy

  before_destroy :assign_to_first_owner
  private

    def assign_to_first_owner
        ideas.update_all(owner_id: Owner.first.id)
    end	
end

class Newsletter < ActiveRecord::Base
  validates :email, presence: true
  validates :email, :uniqueness => {:message => 'email already submitted in the database'}
end

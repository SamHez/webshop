class Newsletter < ActiveRecord::Base
  validates :email,:name,:telephone, presence: true
  validates :email,:telephone, :uniqueness => {:message => 'One of the fields has already submitted in the database'}
end

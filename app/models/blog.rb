class Blog < ActiveRecord::Base
  belongs_to :admin
  has_permalink
  validates_presence_of :title

  validates_presence_of :blog_content

end

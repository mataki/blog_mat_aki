class Post < ActiveRecord::Base
  named_scope :updated_at_desc, proc{
    { :order => "posts.updated_at DESC" }
  }
end

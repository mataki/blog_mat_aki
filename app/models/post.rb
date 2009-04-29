class Post < ActiveRecord::Base
  named_scope :updated_at_desc, proc{ |lang|
    { :order => "posts.updated_at DESC" }
  }
end

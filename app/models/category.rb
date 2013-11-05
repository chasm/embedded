class Category
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :idea
  
  field :content
end
class Idea
  include Mongoid::Document
  include Mongoid::Timestamps
  
  belongs_to :user
  
  embeds_many :categories
  
  field :name
end
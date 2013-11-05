class User
  include Mongoid::Document
  include Mongoid::Timestamps
  
  embeds_one :name
  
  has_many :ideas
  
  field :email
end
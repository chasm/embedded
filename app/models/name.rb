class Name
  include Mongoid::Document
  
  embedded_in :user
  
  field :first
  field :last
  
  def full
    [ self.first, self.last ].compact.join(" ")
  end
  
  def reversed
    [ self.last, self.first ].compact.join(", ")
  end
end
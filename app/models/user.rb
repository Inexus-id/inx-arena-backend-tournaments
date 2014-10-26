class User
  include Mongoid::Document
  field :name, type: String
  field :team, type: String
  field :email, type: String

  attr_accessible: :email, :password, :password_confirmation

  def to_builder
    Jbuilder.new do |person|
      person.(self, :name, :team, :email)
    end
  end
end

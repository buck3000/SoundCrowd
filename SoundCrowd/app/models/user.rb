class User < ActiveRecord::Base
  validates :email, uniqueness: true
  validates :email, :password, presence: true



  def authenticate(password)
    if self.password == password
      return true
    else
      return false
    end
  end



end

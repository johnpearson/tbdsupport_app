class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :company, :computers, :devices,
                  :password, :password_confirmation, :remember_me
  
  # Users have many events that are associated with them
  has_many :events, :dependent => :destroy

end

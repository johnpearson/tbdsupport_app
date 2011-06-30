class Event < ActiveRecord::Base
  attr_accessible :name, :content, :availability, :contact, :computer_info, 
                  :os_type, :antivirus, 
  
  # Events belong to a user
  belongs_to :user
  
  # Validations
  validates :content, :presence => true
  validates :user_id, :presence => true
                  
end

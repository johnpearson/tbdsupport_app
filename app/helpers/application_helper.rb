module ApplicationHelper
  
  # Set base title
  def title
    base_title = "TBD Online Support"
    if @title.nil?
      base_title
    else
      "#{base_title} - #{@title}"
    end
  end
  
  # Gravatar image accessible by all users to attach an image to their email
  def gravatar_for(current_user, options = { :size => 30 })
    gravatar_image_tag(current_user.email.downcase, :alt => current_user.email,
                                                    :class => 'gravatar',
                                                    :gravatar => options)
  end
  
  def new_button
    new_button = image_tag("new_button.png", :alt => "create new event")
  end
end

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
end

module ApplicationHelper
  
  def title
    base_title = "Le Grand Bijoux"
    
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("title_3.jpg", :alt => "Le Grand Bijoux", :align => "middle")
  end
end

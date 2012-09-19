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
    image_tag("store_title.png", :alt => "Le Grand Bijoux", :align => "middle")
  end
end

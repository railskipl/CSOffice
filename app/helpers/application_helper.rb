module ApplicationHelper
  def title
    base_title = "Ruby on Rails Tutorial Sample App"
      if @title.nil?
        base_title
      else
        "#{base_title} | #{@title}"
      end
  end
  
  def logo
    image_tag("blueprint.png", :alt => "Sample App", :class => "round")
  end
  
  def format_boolean(status)
        if status
          icon_tick
        else
          icon_cross
        end
      end
      
      def icon_tick(alt_text='Tick')
        build_image_tag("/images/001_06.png", alt_text)
      end

      def icon_cross(alt_text='Cross')
        build_image_tag("/images/001_05.png", alt_text)
      end
      
      def build_image_tag(image_file, alt_text)
        image_tag(image_file, :size =>"20x20", :alt => alt_text)
      end
  
end

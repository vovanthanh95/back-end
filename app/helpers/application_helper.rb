module ApplicationHelper
    def setting_title title
        t = title
        if t.blank?
            t = "beauty full"
        end
        my_title = "#{t} | My Page"
    end
    
    def change_name
        name = "vo van thanh"
        if current_page?(:controller => 'static_pages', :action => 'help')
            result = ""
            name.split(" ").reverse.each do |i|
                result = result + " #{i}"            
            end
            return result
        elsif current_page?(:controller => 'static_pages', :action => 'about')
            return name
        end
    end
end

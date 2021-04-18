class PagesAndIpsController < ActionController::Base
    
    def index
        @pages_and_ips = PagesAndIp.all
        @total_pages_visited = @pages_and_ips.count 
        @unique_pages = @pages_and_ips.distinct.count('page') 
        @unique_users = @pages_and_ips.distinct.count('ip')
        @total_visitor_page_views =  @pages_and_ips.group(:page).count(:ip).sort_by{|_key, value| -value} 
        @unique_visitor_page_views =  @pages_and_ips.group(:page).distinct.count(:ip).sort_by{|_key, value| -value} 
        @unique_pages_viewed_by_visitors = @pages_and_ips.group(:ip).distinct.count(:page).sort_by{|_key, value| -value} 
        @total_pages_viewed_by_visitors = @pages_and_ips.group(:ip).count(:page).sort_by{|_key, value| -value} 
    end
end
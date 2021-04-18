class PagesAndIpsController < ActionController::Base
    
    def index
        @pages = PagesAndIp.all

        @total_pages_visited = @pages.count 
        @unique_pages = @pages.distinct.count('page') 
        @unique_users = @pages.distinct.count('ip')
        @total_visitor_page_views =  @pages.group(:page).count(:ip).sort_by{|_key, value| -value} 
        @unique_visitor_page_views =  @pages.group(:page).distinct.count(:ip).sort_by{|_key, value| -value} 
        @unique_pages_viewed_by_visitors = @pages.group(:ip).distinct.count(:page).sort_by{|_key, value| -value} 
        @total_pages_viewed_by_visitors = @pages.group(:ip).count(:page).sort_by{|_key, value| -value} 
    end
end
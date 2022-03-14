class ApplicationController < ActionController::Base
    include Pagy::Backend 
    include ApplicationHelper
    protect_from_forgery with: :exception
    include SessionsHelper
    

    
end

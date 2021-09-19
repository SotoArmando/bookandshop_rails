class WelcomeController < ApplicationController
    def index    
        render template: "welcome/index"
    end
end

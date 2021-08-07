class HelloController < ApplicationController

    def index
        render :text => "Hello Coding Dojo!"
    end
    def say
        render :text => "Saying hello!"
    end

    def sayname
        render :text => "Saying Hello Joe"
    end

    def saynamem
        if params[:name] == 'michael'
            redirect_to '/say/hello/joe'
        end
    end

    def local
        render :text => 'What do you want me to say???'
    end

    def times
        if session[:visits] == nil
            session[:visits] = 0
        end
        session[:visits]+= 1
        render :text => "You have visited thir url #{session[:visits]} times"
    end

    def restart
        session.clear
        render :text => 'session is clear'
    end

end

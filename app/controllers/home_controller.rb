class HomeController < ApplicationController
    def main
        
    end
    
    def vote1
        vote = Vote.new
        vote.save
        @vote_id = vote.id
    end
  
    def vote2
        vote = Vote.find(params[:vote_id])
        @vote_id = vote.id
    end
    
    def vote3
        vote = Vote.find(params[:vote_id])
        @vote_id = vote.id
    end
    
    def vote4
        vote = Vote.find(params[:vote_id])
        @vote_id = vote.id
    end
  
    def vote5
        vote = Vote.find(params[:vote_id])
        @vote_id = vote.id
    end
  
    def vote6
        vote = Vote.find(params[:vote_id])
        @vote_id = vote.id
    end
    
    def result
        @vote = Vote.find(params[:vote_id])
        @man = [@vote.select1,@vote.select2,@vote.select3,@vote.select4,@vote.select5].max
        
        if @man == @vote.select1
            @man = "문재인"
        elsif @man == @vote.select2
            @man = "홍준표"
        elsif @man == @vote.select3
            @man = "안철수"
        elsif @man == @vote.select4
            @man = "유승민"
        elsif @man == @vote.select5
            @man = "심상정"
        end
    end
    
    def sender
      sellect = Vote.find(params[:vote_id])
      @numbers = params[:numbers]
      @number1 = @numbers.count("1")
      @number2 = @numbers.count("2")
      @number3 = @numbers.count("3")
      @number4 = @numbers.count("4")
      @number5 = @numbers.count("5")
      
      sellect.select1 += @number1
      sellect.select2 += @number2
      sellect.select3 += @number3
      sellect.select4 += @number4
      sellect.select5 += @number5
      sellect.save
     if params[:part] == "6"
        redirect_to "/result/#{sellect.id}"
     else
        redirect_to "/vote#{params[:part].to_i + 1}/#{sellect.id}"
        #binding.pry
    end
    end
    
    def check
    end
    
    def messagesend
        message = Message.new
        message.username = params[:username]
        message.usermail = params[:usermail]
        message.topic = params[:topic]
        message.usersuggest = params[:usersuggest]
        message.save
        
        redirect_to "/#contact"
    end
end
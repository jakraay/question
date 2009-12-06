class QuestionnairesController < ApplicationController

  layout 'main'

  def index
  
    @questions = Question.find(:all, :order => 'question_order')
  
  end
  
  def respond
  begin
   responses = params[:responses].first
   
   user = User.new
   
   tosave = []
   
   unless responses.nil?
     responses.each do |r|
       choices = r.last
       
       choices.each do |c|
         response = Response.new
         response.question_id = r.first
         response.choice_id = c
         tosave << response if response.question_id > 2
         
         if response.question_id == 1
           user.age = c
         end
       
         if response.question_id == 2
           user.location = c
         end
         
       end       
      
     end
   end

   user.save!
   
   tosave.each do |r|
     r.user = user
     r.save!
   end
   
   rescue 
     @errors = true
     @questions = Question.find(:all, :order => 'question_order')
  
     render :action => 'index'
   end
   
  end
  

  
  def addchoice
    
    choice = Choice.new
    choice.text = params[:newchoice]
    choice.question_id = params[:question_id]
    choice.save
    
    q = Question.find(choice.question_id)
    
    render :partial => 'questionnaires/question', :locals => { :q => q }
    
    
  end

end

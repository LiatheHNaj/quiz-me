class StaticPagesController < ApplicationController

  def picChooser
    respond_to do |format|
      format.html { render :picChooser}
    end
  end

  def chooser_meth
    respond_to do |format|
      format.html { render :picChooser}
    end
  end

  def leave_feedback
    required = [:Firstname, :Lastname, :reply, :feedback_type, :message]
    form_complete = true
    required.each do |f|
    if params.has_key? f and not params[f].blank?
     # that's good news. do nothing
    else
      form_complete = false
    end
  end
  if form_complete
    form_status_msg = 'Thank you for your feedback!'
  else
    form_status_msg = 'Please fill in all the remaining form fields and resubmit.'
 end
   respond_to do |format|
     format.html { render :info, locals: { status_msg: form_status_msg, feedback: params } }
   end
  end

  def info
   respond_to do |format|
     format.html { render :info, locals: {feedback: {}} }
   end
  end

  def welcome
    features = [
      'Choose from premade quizzes on a variety of topics',
      'Make your own quizzes to customize your learning',
      'Compare your scores with other users'
    ]


    respond_to do |format|
      format.html { render :welcome, locals: {features: features}}
    end
  end
  def question
    answers = [
      'a) A class should have only one reason to change.',
      'b) Each developer on a team should have one main responsibility.',
      'c) Every app will have one responsibility that is most important to users.'
    ]

    respond_to do |format|
      format.html { render :question, locals: {answers: answers} }
    end
  end
  def profile
    respond_to do |format|
      format.html { render :profile }
    end
  end

  def about
    respond_to do |format|
      format.html { render :about}
    end
  end



end

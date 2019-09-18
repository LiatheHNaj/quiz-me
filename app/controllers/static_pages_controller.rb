class StaticPagesController < ApplicationController
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

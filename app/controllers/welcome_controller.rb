class WelcomeController < ApplicationController
  def Index
    @contexts = Context.all
  end
end

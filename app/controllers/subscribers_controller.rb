class SubscribersController < ApplicationController
  http_basic_authenticate_with name: "Anand Verma",password: "abc1234",except:[:create]
  def index
     @subscribers=Subscriber.all
  end
  def create
    @subscriber=Subscriber.new(params[:subscriber])
    if Subscriber.exists?(email:@subscriber.email)
      redirect_to root_path,alert:"This email allready exists"
    elsif
      @subscriber.save
      redirect_to root_path, notice:"Thank you #{@subscriber.f_name},for subscribing to my blog"
    else
      redirect_to root_path, alert: "Sorry wrong infrmation pls try again"
    end

  end
  def destroy
    @subscriber=Subscriber.find(params[:id])
    @subscriber.destroy
    redirect_to subscribers_path
  end

end

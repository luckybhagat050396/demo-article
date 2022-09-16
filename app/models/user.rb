class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  #   byebug
  #   UserMailer.welcome_email(resource,params[:user][:password]).deliver_now
  # end
  # resource,params[:user][:password]
  after_create :welcome_email
  def welcome_email
   UserMailer.welcome_email(self).deliver_now
  end

  # private
  # def user_sign_up_succesfully
  #   if @user.save
  #     UserMailer.welcome_email(@user).deliver_now
  #     format.html { redirect_to(@user, notice: 'User was successfully created.') }
  #   else
  #     format.html { render action: 'new' }
  #     end
  #   end
   
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         :confirmable
end
        
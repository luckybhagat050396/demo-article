# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_user!, except: [:create, :new]

  before_action :configure_permitted_parameters, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  #

  


  def show
    @user = User.find_by(id: params[:id])
  end


  # def new
  #   @user = User.new
  # end

  # def create
  #   byebug
  #   @user= User.new(user_params)

  #   if @user.save
  #     UserMailer.welcome_email(@user).deliver_now
  #     format.html { redirect_to(@user, notice: 'User was successfully created.') }
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end


  # def new
  #   @user= User.find_by(id: params[:id])
  # end

  # def create
  #   super
  #   # byebug
  #   @user = User.new(user_params) 
  #   UserMailer.welcome_email(@user).deliver_now
  #   # Tell the UserMailer to send a welcome email after save
  #   # UserMailer.welcome_email(resource,params[:user][:password]).deliver_now
  # end

  # private
  # def user_params
  #   params.require(:user).permit(:email,:encrypted_password,:password,:password_confirmation)
  # end


  
  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  def configure_permitted_parameters
    # Replace the keys to fit your needs
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :current_password])
  end

  # private
  #   def user_params
  #     params.require(:user).permit(:email, :password, :password_confirmation, :current_password)
  #   end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end

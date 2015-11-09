class Users::RegistrationsController < Devise::RegistrationsController
before_action :configure_sign_up_params, only: [:create]
  respond_to :json
  respond_to :html, only: []
  respond_to :xml, only: []
# before_filter :configure_account_update_params, only: [:update]
  # clear_respond_to
  # respond_to :json

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
    #   respond_to do |format|
    #     binding.pry
    #     format.json {
    #       warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#new")
    #       render :status => 200, :json => { :error => "Success" }
    #     }
    # end
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

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.for(:sign_up).push(:firstname, :middlename, :lastname, :username, :address, :city, :state, :zip, :phonenumber, :email, :password, :password_confirmation, :is_lister)
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update).push(:firstname, :middlename, :lastname, :username, :address, :city, :state, :zip, :phonenumber, :email, :password, :password_confirmation, :is_lister)
  # end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    # super(resource)
    render json: 'moo'
  end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end

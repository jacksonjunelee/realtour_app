class Users::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]
clear_respond_to
respond_to :json
respond_to :html, only: []
respond_to :xml, only: []
  # GET /resource/sign_in
  # def new

    # respond_to do |format|
    #   format.json {
    #     warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#new")
    #     render :status => 200, :json => { :error => "Success" }
    #   }
    # end
  # end

  # POST /resource/sign_in
  def create
  resource = warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#new")
    #  set_flash_message(:notice, :signed_in) if is_navigational_format?
     sign_in(resource_name, resource)
     respond_to do |format|
      #  format.html { respond_with resource, :location => after_sign_in_path_for(resource) }
       format.json {
          return render :json => {  :success => true,
            :user => resource
          }
       }
     end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end

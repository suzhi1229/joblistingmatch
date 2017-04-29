class Users::SessionsController < Devise::SessionsController
# before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  <h2>Log in</h2>

  <%= simple_form_for(resource, as: resource_name, url: session_path(resource_name)) do |f| %>
    <div class="form-inputs">
      <%= f.input :email, required: false, autofocus: true %>
      <%= f.input :password, required: false %>
      <%= f.input :remember_me, as: :boolean if devise_mapping.rememberable? %>
    </div>

    <div class="form-actions">
      <%= f.button :submit, "Log in" %>
    </div>
  <% end %>

  <%= render "devise/shared/links" %>


end

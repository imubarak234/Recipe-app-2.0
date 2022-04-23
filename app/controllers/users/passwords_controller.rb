<<<<<<< HEAD
# frozen_string_literal: true

module Users
  class PasswordsController < Devise::PasswordsController
    # GET /resource/password/new
    # def new
    #   super
    # end
=======
class Users::PasswordsController < Devise::PasswordsController
  # GET /resource/password/new
  # def new
  #   super
  # end
>>>>>>> d79b51999ada2557b6d175489e9f3f660944ecd0

    # POST /resource/password
    # def create
    #   super
    # end

    # GET /resource/password/edit?reset_password_token=abcdef
    # def edit
    #   super
    # end

    # PUT /resource/password
    # def update
    #   super
    # end

    # protected

    # def after_resetting_password_path_for(resource)
    #   super(resource)
    # end

    # The path used after sending reset password instructions
    # def after_sending_reset_password_instructions_path_for(resource_name)
    #   super(resource_name)
    # end
  end
end

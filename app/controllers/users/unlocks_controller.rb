<<<<<<< HEAD
# frozen_string_literal: true

module Users
  class UnlocksController < Devise::UnlocksController
    # GET /resource/unlock/new
    # def new
    #   super
    # end
=======
class Users::UnlocksController < Devise::UnlocksController
  # GET /resource/unlock/new
  # def new
  #   super
  # end
>>>>>>> d79b51999ada2557b6d175489e9f3f660944ecd0

    # POST /resource/unlock
    # def create
    #   super
    # end

    # GET /resource/unlock?unlock_token=abcdef
    # def show
    #   super
    # end

    # protected

    # The path used after sending unlock password instructions
    # def after_sending_unlock_instructions_path_for(resource)
    #   super(resource)
    # end

    # The path used after unlocking the resource
    # def after_unlock_path_for(resource)
    #   super(resource)
    # end
  end
end

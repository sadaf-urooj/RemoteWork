class RegistrationsController < Devise::RegistrationsController

  protected

  def after_update_path_for(resource)
    if freelancer_signed_in?
      freelancer_path(resource)
    else
      edit_client_registration_path(resource)
    end
  end
end
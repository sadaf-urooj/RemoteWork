class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :user_signed_in?
  helper_method :current_user

    def authenticate_user!
      authenticate_client! || authenticate_freelancer!
    end

    def user_signed_in?
      client_signed_in? || freelancer_signed_in?
    end

    def current_user
      current_client || current_freelancer
    end

  protected

    def configure_permitted_parameters
      added_attrs = [:first_name, :last_name, :designation, :overview, :email, :password, :password_confirmation, :remember_me, :image, :phone, skill_ids: []]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end

  def after_sign_in_path_for(resource)
    if resource.is_a? Client
      clients_jobs_path
    elsif resource.is_a? Freelancer
      freelancers_jobs_path
    else
      super
    end
  end
end
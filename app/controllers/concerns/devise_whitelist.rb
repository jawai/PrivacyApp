module DeviseWhitelist
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_parameters, if: :devise_controller?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:hic_name,
                                                      :hic_address_one,
                                                      :hic_address_two,
                                                      :hic_city,
                                                      :hic_postal_code,
                                                      :hic_country,
                                                      :hic_telephone,
                                                      :hic_fax,
                                                      :privacy_contact_name,
                                                      :privacy_title,
                                                      :approver])
    devise_parameter_sanitizer.permit(:account_update, keys: [:hic_name,
                                                      :hic_address_one,
                                                      :hic_address_two,
                                                      :hic_city,
                                                      :hic_postal_code,
                                                      :hic_country,
                                                      :hic_telephone,
                                                      :hic_fax,
                                                      :privacy_contact_name,
                                                      :privacy_title,
                                                      :approver])
  end
end

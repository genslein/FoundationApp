class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # examples to run with, we'll see how well they work
  def development?
    Rails.env.development?
  end

  def test?
    Rails.env.test?
  end

  def production?
    Rails.env.production?
  end

  def set_variables
    @application_links = application_links
    @external_links = default_external_links #current_app.nil? ? default_external_links : app_specific_external_links
  end

  def application_links
    [
        {
            name: 'Sample Domain',
            desc: 'The main example of an application link.',
            id: 'sample-domain'
        }
    ]
  end

  def default_external_links
    [
        { name: 'Gabe\'s Github', url: 'https://github.com/genslein' }
    ]
  end
end

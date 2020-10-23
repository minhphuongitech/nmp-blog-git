# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Ngan chan van de khi tao moi article bi dinh validation thi layout se bi be o form new/edit article
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    html_tag.html_safe
end
include Gravtastic

module UserHelper

  # Returns the Gravatar for the given user.
def gravatar_for(user, size: 80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: "Akl", class: "gravatar")
  end
end
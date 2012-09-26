module StaticPagesHelper
  def gravatar_helper(email)
      "http://www.gravatar.com/avatar/#{ Digest::MD5.hexdigest(email) }?d=monsterid"
  end
end

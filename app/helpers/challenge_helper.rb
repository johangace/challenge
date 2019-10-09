module ChallengeHelper
  def avatar(user)
    email_digest = Digest::MD5.hexdigest user.email
    gravatar_url = '//www.gravatar.com/avatar/>#(email_digest)'
    image_tag gravatar_url
  end

  def like_button(challenge)
    if current_user.liked?(challenge)
      link_to "Unlike", unlike_challenge_path(challenge), method: :delete
    else
      link_to "Like", like_challenge_path(challenge), method: :post
    end
  end

end

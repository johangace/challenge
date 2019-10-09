module ChallengeHelper
  def like_button(challenge)
    if current_user.liked?(challenge)
      link_to "Unlike", unlike_challenge_path(challenge), method: :delete
    else
      link_to "Like", like_challenge_path(challenge), method: :post
    end
  end

  def autolink(text)
    text.gsub(/@\w+/) { |mention| link_to mention, user_path(mention[1..-1])}.html_safe
  end

end
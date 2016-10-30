module ReviewsHelper

  #reviewed? method to check if the current user has reviewed the park before
  def reviewed?(park)
    # if the user is included in the park's reviewers, return true
    if park.reviewers.include?(current_user)
      true
    else
      false
    end
  end 

end

module ParksHelper

  def creator?(park)
    if park.creator == current_user
      true
    else
      false
    end
  end

end

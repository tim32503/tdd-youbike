class Rental
  def initialize(user)
    @user = user
  end

  def rent(bike)
    bike.rent!
    @bike = bike
  end

  def return(bike)
    bike.return!
  end

  def charge
    mins = @bike.rental_duration_mins

    if @user.member?
    else
      # 4 小時內，費率為每 30 分鐘 10 元
      case mins
      when 0..240
        (mins / 30).ceil * 10
      else
        80 + ((mins - 240) / 30).ceil * 20
      end
    end
    
  end
end
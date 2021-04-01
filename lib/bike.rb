class Bike
  attr_reader :rent_at, :return_at

  def rent!
    @rent_at = Time.now
    @return_at = nil
  end

  def return!
    @return_at = Time.now
  end

  def rental_duration_mins
    if returned?
      (@return_at - @rent_at).to_i / 60.0
    else
      (Time.now - @rent_at).to_i / 60.0
    end
  end

  private
  def returned?
    @return_at != nil
  end
end
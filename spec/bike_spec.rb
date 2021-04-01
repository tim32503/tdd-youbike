require 'bike'
require 'timecop'
require 'rental'

RSpec.describe Bike do
  context "非會員租借" do
    it "4 小時內，費率為每 30 分鐘 10 元" do
      # Arrange
      user = User.new
      bike = Bike.new # 在此spec中可以寫 subject ，意思等同於 Bike.new
      rental = Rental.new(user)

      # Act
      rental.rent(bike)
      Timecop.travel(65 * 60) # 時間前進 65 分鐘
      rental.return(bike)

      # Assert
      expect(rental.charge).to be 30
    end

    it "超過 4 小時，但於 8 小時內還車，第 4~8 小時費率為每 30 分鐘 20 元" do
      # Arrange
      user = User.new
      bike = Bike.new
      rental = Rental.new(user)

      # Act
      rental.rent(bike)
      Timecop.travel(305 * 60) # 時間前進 5 小時又 5 分鐘 (305 分鐘)
      rental.return(bike)

      # Assert
      expect(rental.charge).to be 140
    end
  end
end

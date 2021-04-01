require 'user'

RSpec.describe User do
  # pending '試著動手寫一些測試吧！'
  # context "登入" do
  #   it "未填寫手機號碼及密碼" do
  #     user = User.new("","")
  #     user.login
  #     expect(user.status).to be false
  #   end

  #   it "手機號碼格式錯誤 且 未填寫密碼" do
  #     user = User.new("123","")
  #     user.login
  #     expect(user.status).to be false
  #   end

  #   it "手機號碼格式錯誤 但 有填寫密碼" do
  #     user = User.new("123","123")
  #     user.login
  #     expect(user.status).to be false
  #   end

  #   it "手機號碼格式正確 但 未填寫密碼" do
  #     user = User.new("0987654321","")
  #     user.login
  #     expect(user.status).to be false
  #   end

  #   it "手機號碼格式正確 且 有填寫密碼" do
  #     user = User.new("0987654321","123")
  #     user.login
  #     expect(user.status).to be true
  #   end
  # end

  context "會員" do
    it "是會員" do
      # Arrange
      user = User.new(member: true)

      # Assert
      expect(user).to be_member
    end
  end

  context "非會員" do
    it "不是會員" do
      # Arrange
      user = User.new

      # Assert
      expect(user).not_to be_member
    end
  end
end

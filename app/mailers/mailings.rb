class Mailings < ActionMailer::Base
  default from: "jchabra@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailings.welcome.subject
  #
  def welcome(user)
    @user = user
    @greeting = "Hi"

    mail to: "jchabra@gmail.com", :subject => "Welcome to Barterville"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailings.trade_proposed.subject
  #
  def trade_proposed(user)
    @to_user = user
    @greeting = "Hi"

    mail to: "jchabra@gmail.com", :subject => "New Trade Proposed"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailings.trade_accepted.subject
  #
  def trade_accepted(user)
    @from_user = user
    @greeting = "Hi"

    mail to: "jchabra@gmail.com", :subject => "Trade Accepted"
  end
end

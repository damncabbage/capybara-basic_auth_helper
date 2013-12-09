require 'spec_helper'

describe Capybara::BasicAuthHelper do
  include Capybara::BasicAuthHelper

  let(:page)   { double(:driver => driver) }
  let(:driver) { double }

  let(:username) { "admin1" }
  let(:password) { "12345pw" }

  it "handles rack-test's basic_authorize" do
    driver.stub(:basic_authorize)
    expect(driver).to receive(:basic_authorize).with(username, password)
    basic_auth(username, password)
  end

  # TODO: Which driver is this?
  it "handles ???'s basic_auth" do
    driver.stub(:basic_auth)
    expect(driver).to receive(:basic_auth).with(username, password)
    basic_auth(username, password)
  end

  it "handles Selenium's brower.basic_authorize" do
    browser = double
    driver.stub(:browser => browser)
    browser.stub(:basic_authorize)

    expect(browser).to receive(:basic_authorize).with(username, password)
    basic_auth(username, password)
  end

  it "explodes if none of the other attempts worked" do
    expect {
      basic_auth(username, password)
    }.to raise_error
  end
end

#!/bin/env ruby
# encoding: utf-8

require "spec_helper"

describe "ccc" do
  it "gets the user pages with its tree" do
    user = User.create(name: "Andre", email: "andre.luis.iasi.moura@gmail.com", password: "1234", password_confirmation: "1234")
    tree = GenTree.create(name: "Teste", user: user)
    visit "/"
    fill_in I18n.t("activerecord.attributes.user.email").capitalize, with: "andre.luis.iasi.moura@gmail.com"
    fill_in I18n.t("activerecord.attributes.user.password").capitalize, with: "1234"
    click_on I18n.t("login").capitalize

    expect(page).to have_content(tree.name)
  end
end
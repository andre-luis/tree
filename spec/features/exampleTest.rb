#!/bin/env ruby
# encoding: utf-8

require File.expand_path('../../spec_helper', __FILE__)

describe "logando" do
  it "logando" do
    visit "/"
    expect(page).to have_content(I18n.t("activerecord.attributes.user.email").capitalize)
  end
end
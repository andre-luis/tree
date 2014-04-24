#!/bin/env ruby
# encoding: utf-8

require File.expand_path('../../spec_helper', __FILE__)

describe "logando" do
  it "logando" do
    visit "/"
    expect(page).to have_content("árvore")
  end
  it "testando modelo" do
    node = Node.new
    puts node.valid?
    expect(node.valid?).to eq(false)

    node.name = "Teste"

    puts node.valid?
    expect(node.valid?).to eq(true)
  end
end
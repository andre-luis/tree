#!/bin/env ruby
# encoding: utf-8

require "spec_helper"

describe "Teste do Login" do
    context "Creating User" do
        it "fail to create user duo to lack of password_confirmation" do
            visit "/"
            expect(page).to have_link("sign-in")
            click_link("sign-in")

            expect(page).to have_content("Novo usuário")
            fill_in('Nome', :with => 'Andre')
            fill_in('E-mail', :with => 'andre.luis.iasi.moura@gmail.com')
    		fill_in('Senha', :with => 'Seekrit')
    		fill_in('Confirmação', :with => '')
    		click_button("Cria conta")




    	end
    end
        
end


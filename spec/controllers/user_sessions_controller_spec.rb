require 'spec_helper'

describe UserSessionsController do

  describe "GET 'create'" do
    it "returns http success" do
      user = User.create(name: "Teste", email: "teste@hnet.com.br", password: "12345", password_confirmation: "12345")

      get 'create', user: {email: user.email, password: user.password}
      response.should redirect_to("/gen_trees")
    end
  end

end

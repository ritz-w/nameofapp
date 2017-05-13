require 'rails_helper'

describe UsersController, :type => :controller do
    let(:user1) { User.create!(first_name: "Taro", last_name: "Yamada", email: "yamadat@gmail.com", password: "monogatari")}
    let(:user2) { User.create!(first_name: "Peter", last_name: "Parker", email: "peterp@gmail.com", password: "spiderman")}

  describe 'GET #show' do
    context 'User 1 is logged in' do
      before do
        sign_in user1
      end
      it 'loads correct user details' do
        get :show, id: user1.id
        expect(assigns(:user)).to eq user1
      end
      it 'cannot access User 2 details' do
        get :show, id: user2.id
        expect(response).to redirect_to(root_path)
      end
    end

    context 'No user is logged in' do
      it 'redirects to login' do
        get :show, id: user1.id
        expect(response).to redirect_to('/login')
      end
    end
  end

end
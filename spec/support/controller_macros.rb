module ControllerMacros
  def login_admin
    let(:user) { create(:user) }
    before(:each) do
      @request.env['devise.mapping'] = Devise.mappings[:admin]
      sign_in user
    end
  end
  def login_user
    let(:customer) { create(:customer) }
    before(:each) do
      @request.env['devise.mapping'] = Devise.mappings[:user]
      sign_in customer
    end
  end
end
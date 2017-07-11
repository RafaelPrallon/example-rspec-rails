require 'rails_helper'

RSpec.describe "eventos/index", type: :view do
  before(:each) do
    assign(:eventos, [
      Evento.create!(
        :nome => "Nome",
        :local => "Local",
        :organizador => "Organizador"
      ),
      Evento.create!(
        :nome => "Nome",
        :local => "Local",
        :organizador => "Organizador"
      )
    ])
  end

  it "renders a list of eventos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Local".to_s, :count => 2
    assert_select "tr>td", :text => "Organizador".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "eventos/show", type: :view do
  before(:each) do
    @evento = assign(:evento, Evento.create!(
      :nome => "Nome",
      :local => "Local",
      :organizador => "Organizador"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Local/)
    expect(rendered).to match(/Organizador/)
  end
end

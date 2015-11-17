require 'rails_helper'

RSpec.describe "klasses/show", type: :view do
  before(:each) do
    @klass = assign(:klass, Klass.create!(
      :workload => "",
      :distribution_process => nil,
      :teacher => nil,
      :grade => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

require 'rails_helper'

RSpec.describe "teachers/show", type: :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
      :name => "Name",
      :registry => "Registry",
      :lattes_url => "Lattes Url",
      :formation => "Formation",
      :workload => 1,
      :about => "About",
      :rg => "Rg",
      :cpf => "Cpf"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Registry/)
    expect(rendered).to match(/Lattes Url/)
    expect(rendered).to match(/Formation/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/About/)
    expect(rendered).to match(/Rg/)
    expect(rendered).to match(/Cpf/)
  end
end

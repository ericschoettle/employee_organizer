require('spec_helper')

describe(Division) do
  it "lists the employees in a division" do
    division = Division.create({:name => "hr cleanup"})
    employee1 = Employee.create({:name => " Agent Orange ", :division_id => division.id()})
    employee2 = Employee.create({:name =>"joey", :division_id => division.id()})
    expect(division.employees()).to(eq([employee1, employee2]))
  end
end

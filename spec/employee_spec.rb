require('spec_helper')

describe(Employee) do
  it "tells you which division the employee belongs to" do
    division = Division.create({:name => "ass-sitting"})
    # employee = Employee.create({:name => "Joe ass-sitter", :division_id => division.id()})
    employee = division.employees().new({:name => "joseph"})
    employee.save()
    expect(employee.division()).to(eq(division))
  end

  it "tells you which division the employee belongs to" do
    project = Project.create({:name => "sitting-ass"})
    employee = Employee.create({:name => "Joe ass-sitter", :project_id => project.id()})
    # employee = project.employees().new({:name => "joseph"})
    # employee.save()
    expect(employee.project()).to(eq(project))
  end
end

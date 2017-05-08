require('spec_helper')

describe(Project) do
  it "lists the employees in a project" do
    project = Project.create({:name => "hr cleanup"})
    employee1 = Employee.create({:name => " Agent Orange ", :project_id => project.id()})
    employee2 = Employee.create({:name =>"joey", :project_id => project.id()})
    expect(project.employees()).to(eq([employee1, employee2]))
  end
end

require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload('lib/**/*.rb')
require('./lib/employee')
require('./lib/division')
require('pg')
require('pry')

get('/') do
  @employees = Employee.all()
  @divisions = Division.all()
  @projects = Project.all()
  erb(:index)
end

post('/division') do
  division = Division.new({:name => params["name"]})
  division.save()
  @employees = Employee.all()
  @divisions = Division.all()
  @projects = Project.all()
  erb(:index)
end

post('/employee') do
  employee = Employee.new({:name => params["name"]})
  employee.save()
  @employees = Employee.all()
  @divisions = Division.all()
  @projects = Project.all()
  erb(:index)
end

post('/project') do
  project = Project.new({:name => params["name"]})
  project.save()
  @employees = Employee.all()
  @divisions = Division.all()
  @projects = Project.all()
  erb(:index)
end

delete('/employee') do
  employee = Employee.find(params["id"].to_i)
  employee.delete()
  @employees = Employee.all()
  @divisions = Division.all()
  @projects = Project.all()
  erb(:index)
end

Dado('que o usuario consulte informacoes do funcionario') do
    @getlist = Employee_Requests.new 
    @assert = Assertions.new
  end
  
  Quando('ele realizar a pesquisa') do
    @list_employee = @getlist.find_employee
  end
  
  Entao('uma lista de funcionarios deve retornar') do
    @assert.request_success(@list_employee.code, @list_employee.message)
  end




Dado('que o usuario cadastre um novo funcionario') do
    @create = Employee_Requests.new
  end
  
  Quando('ele enviar as informacoes do funcionario') do
    @create_employee = @create.create_employee('Bruno', 1000, 22)
  end
  
  Entao('esse funcionario sera cadastrado') do
    expect(@create_employee.code).to eql (200)
    expect(@create_employee.msg).to eql 'OK'
    expect(@create_employee["status"]).to eql 'success'
    expect(@create_employee["message"]).to eql 'Successfully! Record has been added.'
    expect(@create_employee["data"]["employee_name"]). to eql 'Bruno'
    expect(@create_employee["data"]["employee_salary"]). to eql (1000)
    expect(@create_employee["data"]["employee_age"]). to eql (22)
  end




Dado('que o usuario altere uma informacao do funcionario') do
    @request = Employee_Requests.new  
  end
  
  Quando('ele enviar as novas informacoes') do
    @update_employee = @request.update_employee(@request.find_employee['data'][1]['id'], 'Joao', 3000, 40)
  end
  
  Entao('as informacoes serao alteradas') do
    expect(@update_employee.code).to eql (200)
    expect(@update_employee.msg).to eql 'OK'
    expect(@update_employee["status"]).to eql 'success'
    expect(@update_employee["message"]).to eql 'Successfully! Record has been added.'
    expect(@update_employee["data"]["employee_name"]). to eql 'Joao'
    expect(@update_employee["data"]["employee_salary"]). to eql (3000)
    expect(@update_employee["data"]["employee_age"]). to eql (40)
  end




Dado('que o usuario queira deletar um funcionario') do
    @request = Employee_Requests.new
  end
  
  Quando('ele enviar a identificacao unica') do
    @delete_employee = @request.delete_employee(@request.find_employee['data'][0]['id'])
  end
  
  Entao('esse funcionario sera deletado do sistema') do
    expect(@delete_employee.code).to eql (200)
    expect(@delete_employee.msg).to eql 'OK'
    expect(@delete_employee["status"]).to eql 'success'
    expect(@delete_employee["data"]). to eql '2'
    expect(@delete_employee["message"]).to eql 'Successfully! Record has been deleted.'
  end
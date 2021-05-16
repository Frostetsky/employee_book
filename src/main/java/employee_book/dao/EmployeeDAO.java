package employee_book.dao;

import employee_book.entity.Employee;

import java.util.List;

public interface EmployeeDAO {
    public List<Employee> getAllEmployees();

    public void saveEmployee(Employee employee);

    public Employee getEmployee(Integer id);

    public void deleteEmployeeByID(Integer id);
}


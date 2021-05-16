package employee_book.service;

import employee_book.entity.Employee;

import java.util.List;

public interface EmployeeService {
    public List<Employee> getAllEmployee();

    void saveEmployee(Employee employee);

    public Employee getEmployee(Integer id);
}

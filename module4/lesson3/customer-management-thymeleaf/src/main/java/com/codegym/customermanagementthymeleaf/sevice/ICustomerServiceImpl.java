package com.codegym.customermanagementthymeleaf.sevice;

import com.codegym.customermanagementthymeleaf.model.Customer;

import java.util.*;

public class ICustomerServiceImpl implements ICustomerService {
    private static final Map<Integer, Customer> customers;

    static {
        customers = new HashMap<>();
        customers.put(1, new Customer(1, "John", "john@codegym.vn", "Ha Noi"));
        customers.put(2, new Customer(2, "Bill", "bill@codegym.vn", "Hai Phong"));
        customers.put(3, new Customer(3, "Alex", "alex@codegym.vn", "Sai Gon"));
        customers.put(4, new Customer(4, "Adam", "adam@codegym.vn", "Beijing"));
        customers.put(5, new Customer(5, "Sophia", "sophia@codegym.vn", "Miami"));
        customers.put(6, new Customer(6, "Rose", "rose@codegym.vn", "NewYork"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }

    @Override
    public void save(Customer customer) {
        customers.put(customer.getId(), customer);
    }

    @Override
    public void update(int id, Customer customer) {
        customers.put(id,customer);
    }

    @Override
    public void remove(int id) {
        customers.remove(id);
    }
}

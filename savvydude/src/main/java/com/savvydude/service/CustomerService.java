package com.savvydude.service;

import com.savvydude.model.Customer;

public interface CustomerService {
	void saveCustomer(Customer customer);
	public Customer getCustomerByUsername(String username);
}

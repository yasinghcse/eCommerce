package org.spring.dao;

import java.util.List;

import org.spring.model.Product;

public interface ProductDao {
	void addProduct(Product product);
	Product getProductById(int Id);
	List<Product> getAllProducts();
	void deleteProduct(int id);
}

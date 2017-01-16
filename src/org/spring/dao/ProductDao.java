package org.spring.dao;

import java.util.List;

import org.spring.model.Product;

public interface ProductDao {
	void addProduct(Product product);
	Product getProductById(String Id);
	List<Product> getAllProducts();
	void deleteProduct(String id);
}

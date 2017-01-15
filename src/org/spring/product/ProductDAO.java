package org.spring.product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
	private List<Product> productList;
	
	public List<Product> getProductList(){
		Product product = new Product();
		product.setProductId("1");
		product.setProductCategory("Instrument");
		product.setProductCondition("new");
		product.setProductDescription("This product is in good shape");
		product.setProductManufacturer("MFG");
		product.setProductName("Guitar");
		product.setProductPrice(100);
		product.setProductStatus("New");
		product.setUnitInStock("10");
		
		Product product1 = new Product();
		product1.setProductId("2");
		product1.setProductCategory("Instrument");
		product1.setProductCondition("new");
		product1.setProductDescription("This product is in good shape");
		product1.setProductManufacturer("MFG");
		product1.setProductName("flute");
		product1.setProductPrice(99);
		product1.setProductStatus("New");
		product1.setUnitInStock("10");
		
		Product product2 = new Product();
		product2.setProductId("3");
		product2.setProductCategory("Instrument");
		product2.setProductCondition("new");
		product2.setProductDescription("This product is in good shape");
		product2.setProductManufacturer("MFG");
		product2.setProductName("tabla");
		product2.setProductPrice(10);
		product2.setProductStatus("New");
		product2.setUnitInStock("10");
		
		productList = new ArrayList<>();
		productList.add(product);
		productList.add(product1);
		productList.add(product2);
		return productList;
	}
	
	public Product getProductById(String id) throws IOException{
		for(Product p:productList){
			if(p.getProductId().equals(id)){
				return p;
			}
		}
		throw new IOException();
	}

}

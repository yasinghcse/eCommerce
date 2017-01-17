package org.spring.dao.imp;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.spring.dao.ProductDao;
import org.spring.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void addProduct(Product product) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		session.flush();
	}
	
	@Override
	public void editProduct(Product product){
		Session session = sessionFactory.getCurrentSession();
		session.update(product);
		session.flush();
	}

	@Override
	public Product getProductById(int Id) {
		Session session = sessionFactory.getCurrentSession();
		System.out.println(Id);
		Product product = (Product)session.get(Product.class, Id);
		return product;
	}

	@Override
	public List<Product> getAllProducts() {
		Session session = sessionFactory.getCurrentSession();
		Query<Product> query = session.createQuery("from Product");
		List<Product> product= query.list();
		session.flush();
		return product;
	}

	@Override
	public void deleteProduct(int id) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(getProductById(id));
		session.flush();
	}
	
}

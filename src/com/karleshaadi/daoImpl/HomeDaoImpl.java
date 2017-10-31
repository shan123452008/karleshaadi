package com.karleshaadi.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.karleshaadi.dao.homeDao;



@Repository
public class HomeDaoImpl implements homeDao{
	@Autowired 
	SessionFactory sessionFactory;
	
}

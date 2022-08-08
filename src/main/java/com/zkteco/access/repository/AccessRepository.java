package com.zkteco.access.repository;


import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.zkteco.access.entity.Access;
@Repository
public interface AccessRepository  extends JpaRepository<Access, Integer>{

	@Query("SELECT n FROM Access n WHERE n.accessName =:access")
	public List<Access> findByName(@Param("access") String accessName);
	
	@Query("SELECT n FROM Access n WHERE n.date  between ?1 and ?2")
	//@Query("SELECT n FROM Access n WHERE n.date >  :date1")
	//@Query(value = "SELECT * FROM access_details WHERE date >  :date1", nativeQuery = true)
	public List<Access>  findByDate(@Param("date1") Date date1,@Param("date2") Date date2);
}

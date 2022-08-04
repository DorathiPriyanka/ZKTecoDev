package com.zkteco.access.repository;

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
	
}

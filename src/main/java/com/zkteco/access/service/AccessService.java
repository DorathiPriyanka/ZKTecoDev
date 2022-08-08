package com.zkteco.access.service;

import java.sql.Date;
import java.util.List;


import com.zkteco.access.entity.Access;

public interface AccessService {
	
Access saveAccess(Access access);


List <Access>getAllAccesses();


Access getAccessById(int id);


Access updateAccess(Access access);


Access deleteAccess(int id);

List<Access> findByName(String accessName);

List<Access> findByDate(Date date1,Date date2);

}

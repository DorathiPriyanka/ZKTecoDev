package com.zkteco.access.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.zkteco.access.entity.Access;
import com.zkteco.access.repository.AccessRepository;
import com.zkteco.access.service.AccessService;
@Service
public class AccessServiceImpl implements  AccessService{

	@Autowired
	private AccessRepository accessrepo;
	
	public AccessServiceImpl(AccessRepository accessrepo) {
		super();
		this.accessrepo = accessrepo;
	}

	@Override
	public Access saveAccess(Access access) {
		
		return accessrepo.save(access);
	}

	@Override
	public List<Access> getAllAccesses() {
		List<Access> flatsList =  accessrepo.findAll();
		//System.out.println(flatsList);
		
		for(Access  access:flatsList) {
			if (access.isEntry()) {
				access.setEntryAlias("Enabled");
		    } else {
		    	access.setEntryAlias("Disabled");
		    }
			
			
			
		}
		
		

		return flatsList;
	}

	@Override
	public Access getAccessById(int id) {
		Access access = accessrepo.findById(id).orElse(new Access());

		if (access.isEntry()) {
			access.setEntryAlias("Enabled");
	    } else {
	    	access.setEntryAlias("Disabled");
	    }
		
		return access;
	}

	@Override
	public Access updateAccess(Access access) {
		  access= accessrepo.findById(access.getId()).orElse(new Access());
		if (access.isEntry()) {
			access.setEntryAlias("Enabled");
	    } else {
	    	access.setEntryAlias("Disabled");
	    }
		accessrepo.deleteById(access.getId());
		return access;
	}

	@Override
	public Access deleteAccess(int id) {
		Access access = accessrepo.findById(id).orElse(new Access());
		accessrepo.deleteById(id);
		return access;
	}
	@Override
	public List<Access> findByName(String accessName) {
		List<Access>accessList=accessrepo.findByName(accessName);
		for(Access  access:accessList) {
			if (access.isEntry()) {
				access.setEntryAlias("Enabled");
		    } else {
		    	access.setEntryAlias("Disabled");
		    }
			
			
			
		}
		
		return accessrepo.findByName(accessName);
	}

}

package com.zkteco.access.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.Data;

@Entity
@Data
@Table(name = "AccessDetails")
public class Access {

	@Id
	@Column(name = "id")
	private int id;

	@Column(name = "access_name")
	@NotEmpty
	@Size(min=4,message="accessname should have atleast 4 characters")
	private String accessName;

	
	@Column(name = "floor_name")
	@Pattern(regexp = ".*floor")
	private String floorName;

	
	@Column(name = "date")
	
	private Date date;

	@Column(name = "entry")
	private boolean entry;

	@Column(name = "entry_alias")
	private String entryAlias;

}

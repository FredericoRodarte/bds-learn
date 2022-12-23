package com.devsuperior.dslearnbds.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.devsuperior.dslearnbds.entities.enums.ResourceType;

@Entity
@Table(name = "tb_resource")
public class Resource implements Serializable{
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	private Long         id           ;
	private String       title        ;
	private String       description  ;
	private Integer      position     ;
	private String       imgUri       ;
	private ResourceType type         ;
	private String       externalLink ;
	
	@ManyToOne
	@JoinColumn(name="offer_id")	
	private Offer offer;
			
}

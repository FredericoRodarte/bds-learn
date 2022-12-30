package com.devsuperior.dslearnbds.entities;

import java.time.Instant;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tb_reply")
public class Reply {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	private Long    id;
	
	//Necessário para textos longos acima de 255 caracteres
	@Column(columnDefinition = "TEXT")
	private String  body;
	
	/*define para o DB o armazenamento no UTC*/
	@Column (columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")	
	private Instant moment;
	
	@ManyToOne
	@JoinColumn(name="author_id")
	private User author;
	
	@ManyToOne
	@JoinColumn(name="topic_id")
	private User topic;
	
	@ManyToMany
	@JoinTable( name = "tb_reply_likes",
	            joinColumns        = @JoinColumn(name = "reply_id") ,
	            inverseJoinColumns = @JoinColumn(name = "user_id" ) )
	private Set<User> likes = new HashSet<>();

    public Reply() {    	
    }

	public Reply(Long id, String body, Instant moment, User author, User topic, Set<User> likes) {
		super();
		this.id = id;
		this.body = body;
		this.moment = moment;
		this.author = author;
		this.topic = topic;
		this.likes = likes;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public Instant getMoment() {
		return moment;
	}

	public void setMoment(Instant moment) {
		this.moment = moment;
	}

	public User getAuthor() {
		return author;
	}

	public void setAuthor(User author) {
		this.author = author;
	}

	public User getTopic() {
		return topic;
	}

	public void setTopic(User topic) {
		this.topic = topic;
	}

	public Set<User> getLikes() {
		return likes;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Reply other = (Reply) obj;
		return Objects.equals(id, other.id);
	}
    
    

}

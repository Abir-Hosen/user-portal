package net.abir.portalbackend.dto;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.Period;
import java.time.ZoneId;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
public class User implements Serializable{
	
	/**
	 * 
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@NotBlank(message = "Please enter first name!")
	private String first_name;
	@NotBlank(message = "Please enter last name!")
	private String last_name;
	@NotBlank(message = "Please enter address name!")
	private String address;
	@NotBlank(message = "Please enter phone number!")
	private String phone;
	@NotBlank(message = "Please enter email!")
	private String email;
	@JsonIgnore
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birthdate;
	@JsonIgnore
	@NotBlank(message = "Please enter password!")
	private String password;
	private String role;
	private boolean allowance;
	@JsonIgnore
	@Transient
	private String confirmPassword;
	@JsonIgnore
	@Transient
	private int age;
	
	public int getAge() {
		LocalDate today = LocalDate.now();
		LocalDate birthday = birthdate.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
		Period p = Period.between(birthday, today);
//		System.out.println(p.getDays());
//		System.out.println(p.getMonths());
//		System.out.println(p.getYears());
		return p.getYears();
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	public boolean isAllowance() {
		return allowance;
	}
	public void setAllowance(boolean allowance) {
		this.allowance = allowance;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", first_name=" + first_name + ", last_name=" + last_name + ", address=" + address
				+ ", phone=" + phone + ", email=" + email + ", birthdate=" + birthdate + ", password=" + password
				+ ", role=" + role + ", confirmPassword=" + confirmPassword + ", age=" + age + "]";
	}
}

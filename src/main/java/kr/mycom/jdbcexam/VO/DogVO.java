package main.java.kr.mycom.jdbcexam.VO;
 
public class DogVO {
	private String dog_num;//dog id
	private String name;
	private int weight;
	private int age;
	private String breed;
	private String remarks;	
	private String location;
	private String photo;
	public DogVO() {
		
	}
	
	public DogVO(String dog_num, String name, int weight, int age, String breed, String remarks, String location,
			String photo) {
		super();
		this.dog_num = dog_num;
		this.name = name;
		this.weight = weight;
		this.age = age;
		this.breed = breed;
		this.remarks = remarks;
		this.location = location;
		this.photo = photo;
	}
	
	public String getDog_num() {
		return dog_num;
	}
	public void setDog_num(String dog_num) {
		this.dog_num = dog_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getBreed() {
		return breed;
	}
	public void setBreed(String breed) {
		this.breed = breed;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	@Override
	public String toString() {
		return "DogVO [dog_num=" + dog_num + ", name=" + name + ", weight=" + weight + ", age=" + age + ", breed="
				+ breed + ", remarks=" + remarks + ", location=" + location + ", photo=" + photo + "]";
	}
	
	
	
}

package javazack.models;

import daoLayer.DataDao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


public class Dao_Accessors {
	private int id;
	private String fname,lname,regno,date_of_occurance,time_of_occurance,place_of_occurance,category,occurance;
	private String sql="insert into users(fname,lname,regno,date,time,place,nature,category,Date_Reported) values(?,?,?,?,?,?,?,?,?)";
	private PreparedStatement stmt;
	private ResultSet rs;
	
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
	LocalDateTime now = LocalDateTime.now();
	
	DataDao obj=new DataDao();
	DataModel db_data=new DataModel();
	

	public void getModelData(DataModel data)  {
		 
		 fname=data.getFname();
		 lname=data.getLname();
		 regno=data.getRegno();
		 date_of_occurance=data.getDate_of_occurance();
		 time_of_occurance=data.getTime_of_occurance();
		 place_of_occurance=data.getPlace_of_occurance();
		 category=data.getCategory();
		 occurance=data.getOccurance();
		 
		 String day_time=dtf.format(now);
		 
		 System.out.println(place_of_occurance);
		 System.out.println(day_time);
		
	 stmt= obj.insertToDB(sql);
	 try {
		 stmt.setString(1,fname);
		 stmt.setString(2,lname);
		 stmt.setString(3, regno);
		 stmt.setString(4,date_of_occurance);
		 stmt.setString(5, time_of_occurance);
		 stmt.setString(6, place_of_occurance);
		 stmt.setString(7, category);
		 stmt.setString(8, occurance);
		 stmt.setString(9, day_time);
		 stmt.executeUpdate();
	} catch (SQLException e) {
		
		e.printStackTrace();
		
	}
	
			
	}
	
	public DataModel selectFromDatabase() {
		
		String sql="select * from users";
		
		try {
			rs=obj.readData(sql);
			while (rs.next()){
				
				
				db_data.setId(rs.getInt("id_1"));
				db_data.setFname(rs.getString("fname"));
				db_data.setLname(rs.getString("lname"));
				db_data.setRegno(rs.getString("regno"));
				db_data.setDate_of_occurance(rs.getString("date"));
				db_data.setTime_of_occurance(rs.getString("time"));
				db_data.setCategory(rs.getString("category"));
				db_data.setOccurance(rs.getString("nature"));
				db_data.setDate_reported(rs.getString("Date_Reported"));
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return db_data;
		
	}

}

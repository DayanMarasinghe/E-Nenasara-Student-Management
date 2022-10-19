package com.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StudentDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String username,String password) {
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "select * from student where username='"+username+"' and password ='"+password+"'";
			rs=st.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess; 
	}
		

	public static List<Student> getStudent (String userName){
	
		ArrayList<Student> std = new ArrayList<>();
	
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "select * from student where username='"+userName+"'";
			rs=st.executeQuery(sql);
		
			while(rs.next() ) {
				int id = rs.getInt(1);
				String name = rs.getNString(2);
				String email = rs.getNString(3);
				String userU = rs.getNString(4);
				String passU = rs.getNString(5);
			
				Student s = new Student(id, name, email, userU, passU);
				std.add(s);
		
			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	
		return std;
	
	}

	public static boolean insertstudent(String name, String email, String username, String password) {
	
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "insert into student values(0,'"+name+"','"+email+"','"+username+"','"+password+"')";
			int rs = st.executeUpdate(sql);
		
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	
	
		return isSuccess;
	}

	public static boolean updatestudent(String id, String name, String email, String username, String password) {
		
		try {
			
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "update student set name='"+name+"', email='"+email+"', username='"+username+"', password='"+password+"'"
					+"where id='"+id+"'";
			int rs = st.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}

	public static List<Student> getStudentDetails (String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<Student> std = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "select * from Student where id= '"+convertedID+"'";
			rs = st.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String username = rs.getString(4);
				String password = rs.getString(5);
				
				Student s = new Student(id, name, email, username, password);
				std.add(s);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return std;
	}
	
	public static List<Student> regDetails(String uid){
		
		ArrayList<Student> std2 = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "select * from Student where username= '"+uid+"'";
			rs = st.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String username = rs.getString(4);
				String password = rs.getString(5);
				
				Student s = new Student(id, name, email, username, password);
				std2.add(s);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return std2;
	}
	
	public static boolean deleteStudent(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			con = DBConnect.getConnection();
			st = con.createStatement();
			String sql = "delete from Student where id='"+convId+"'";
			int r=st.executeUpdate(sql);
			
			if(r>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}

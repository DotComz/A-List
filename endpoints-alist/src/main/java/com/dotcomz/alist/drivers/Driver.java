package com.dotcomz.alist.drivers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.dotcomz.alist.Constants;

public class Driver {

	public static String getQuery() {
		StringBuilder test = new StringBuilder();
		try {
			Connection myConn = DriverManager.getConnection(Constants.URL,
					Constants.USER, Constants.PASSWORD);
			System.out.println("Connection");

			Statement myStmt = myConn.createStatement();

			String query = "select * from employees";
			ResultSet myRs = myStmt.executeQuery(query);
			while (myRs.next()) {
				test.append(myRs.getString("first_name"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return test.toString();
	}

}
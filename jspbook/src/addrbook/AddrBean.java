package addrbook;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class AddrBean {

	Connection conn =null;
	PreparedStatement pstmt=null;
	//데이터베이스 연결관련정보를문자열로선언 
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url="jdbc:mysql://localhost/FireMon";

	
	//db 연결 
	public void connect() {
		 //1.jdbc 드라이버 로드 
		try {
		 Class.forName(jdbc_driver);
		 
		 //2.데이터베이스 접속 
		 conn= DriverManager.getConnection(jdbc_url,"lee","jung1571");
		}catch(Exception e ) {
			e.printStackTrace();
		}
	}
	
	//db  연결 종료 
	public void disconnet() {
		try {
			pstmt.close();
			conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	//목록을 가져오는 메서드 
	public ArrayList<AddrBook>getDBList(){
		connect();
		String sql= "select * from addrbook";
		
		ArrayList<AddrBook> datas =new ArrayList<AddrBook>();
		try {
			conn.prepareStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				AddrBook addrbook= new AddrBook();
				addrbook.setAb_id(rs.getInt("gb_id"));
				addrbook.setAb_name(rs.getString("ab_name"));
				addrbook.setAb_email(rs.getString("ab_email"));
				addrbook.setAb_tel(rs.getString("ab_tel"));
				addrbook.setAb_comdept(rs.getString("ab_comdept"));
				addrbook.setAb_memo(rs.getString("ab_memo"));
				addrbook.setAb_birth(rs.getString("ab_birth"));
				datas.add(addrbook);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
	//수정할 주소록 가져오는 메서드 
	public AddrBook getDB(int gb_id) {
		return null;
	}
	//수정된 내용을 반영 
	public boolean updateDB(AddrBook addrbook) {
		return true;
	}
	public boolean insertDB(AddrBook addrbook) {
		return true;
	}
	
	public boolean deleteDB(int gb_id) {
		return true;
	}
}

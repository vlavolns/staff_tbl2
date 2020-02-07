package staff_tbl;

import java.sql.*;
import java.util.*;

public class DAO {
	public static String login(String sno,String pass) {
		String name=null;
		String sql = "select sname from staff_tbl where spass = "
				+ "(select spass from staff_tbl where sno = '"+sno+"' and spass='"+pass+"')";
		try {
			Connection con = DBcon.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				name = rs.getString(1);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return name;
	}
	public static int insert(DTO d) {
		int result = -1;
		String sql = "insert into ins_tbl (ino,iname,iamount,sno) VALUES(?,?,?,?)";
		try {
			Connection con=DBcon.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, d.getIno());
			ps.setString(2, d.getIname());
			ps.setInt(3, d.getIamount());
			ps.setString(4, d.getSno());
			result = ps.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public static List<DTO> selectall(){
		List<DTO> list = new ArrayList<DTO>();
		String sql="select * from ins_tbl order by ino";
		try {
			Connection con = DBcon.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				DTO d = new DTO();
				d.setIno(rs.getString(1));
				d.setIname(rs.getString(2));
				d.setIamount(rs.getInt(3));
				d.setSno(rs.getString(4));
				d.setIdate(rs.getString(5));
				list.add(d);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public static List<DTO> selectone(String iname){
		List<DTO> list = new ArrayList<DTO>();
		String sql = "select ino,iamount,sname,idate from ins_tbl NATURAL JOIN staff_tbl where iname = '"+iname+"'";
		try {
			Connection con = DBcon.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				DTO d = new DTO();
				d.setIno(rs.getString(1));
				d.setIamount(rs.getInt(2));
				d.setSname(rs.getString(3));
				d.setIdate(rs.getString(4));
				list.add(d);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public static DTO bohumking(){
		/*String sql="select bname,srank,sname,sum(ins_tbl.iamount) \r\n" + 
				"from staff_tbl natural join bu_tbl natural join ins_tbl \r\n" + 
				"GROUP by bname,srank,sname order by sum(ins_tbl.iamount) desc";*/
		String sql="SELECT bname, srank, sname, sum(iamount) \"ÃÑ°è¾à±Ý¾×\" FROM\r\n" + 
				"staff_tbl NATURAL JOIN bu_tbl NATURAL JOIN ins_tbl GROUP BY sname, srank, bname\r\n" + 
				"HAVING sum(iamount) = (SELECT max(sum(iamount)) FROM ins_tbl GROUP BY sno)";
		DTO d = new DTO();
		try {
			Connection con = DBcon.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				d.setBname(rs.getString(1));
				d.setSrank(rs.getString(2));
				d.setSname(rs.getString(3));
				d.setSum(rs.getInt(4));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return d;
	}
	public static List<DTO> kinglist(String sname){
		List<DTO> list = new ArrayList<DTO>();
		String sql = "select ino,iname,iamount,idate from ins_tbl natural join staff_tbl where sname='"+sname+"' order by idate";
		
		try {
			Connection con = DBcon.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				DTO d = new DTO();
				d.setIno(rs.getString(1));
				d.setIname(rs.getString(2));
				d.setIamount(rs.getInt(3));
				d.setIdate(rs.getString(4));
				list.add(d);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
	}
}

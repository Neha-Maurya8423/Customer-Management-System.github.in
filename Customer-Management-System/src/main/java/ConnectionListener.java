import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.sql.*;
@WebListener
public class ConnectionListener implements ServletContextListener
{

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		try
		{
			ServletContext context=sce.getServletContext();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost/webapp10","root","java");
		    PreparedStatement pssave=cn.prepareStatement("insert into customerinfo values(?,?,?,?,?,?)");
		    context.setAttribute("save", pssave);
		    Statement st=cn.createStatement();
		    context.setAttribute("st",st);
		    PreparedStatement psdelete=cn.prepareStatement("delete from customerinfo where cid=?");
		    context.setAttribute("delete",psdelete);
		    PreparedStatement psselect=cn.prepareStatement("select * from customerinfo where cid=?");
		    context.setAttribute("select",psselect);
			PreparedStatement psupdate = cn.prepareStatement("update customerinfo set firstname=?,lastname=?,city=?,phone=?,email=? where cid=?");
			context.setAttribute("update",psupdate);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		
	}
   
}

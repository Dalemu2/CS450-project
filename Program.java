import java.sql.*;  //Import the SQL library

//class starts
class Program  
{

//SQL error Exeption handling
//
 public static void SQLError (Exception sqlExeption) 
 {
        System.out.println("There Is SQL ERROR");
        sqlExeption.printStackTrace();
 }
// main function
public static void main (String args[])  
          
{        
          // try-catch block to check errors on SQL 
 try {                              
        
       String driverName = "oracle.jdbc.driver.OracleDriver";
       Class.forName(driverName);
      
       String url = "jdbc:oracle:thin:@artemis.vsnet.gmu.edu:1521/vse18c.vsnet.gmu.edu";
       Connection oracleConnect = DriverManager.getConnection(url,"dalemu2","egepersy");
	
       // Create new statements for active/inactive customers and suppliers
       Statement activeCustomer  = oracleConnect.createStatement();   
       Statement inactiveCustomer = oracleConnect.createStatement();
       Statement inactiveSupplier = oracleConnect.createStatement();
       Statement activeSupplier = oracleConnect.createStatement();

	// SQL code for active customers
	ResultSet activeCustomerResult = activeCustomer.executeQuery("SELECT C.Cid,C.Cname,C.Address,P.PurDate,I.Iid,I.Description,I.Price,I.Ship,P.Quantity,COUNT(I.Iid) as NumberOfPurchases, SUM((I.Price) * P.Quantity) as T_Price,SUM(I.Ship * P.Quantity) as T_Ship,SUM(P.Quantity*(I.ship + I.Price)) as Total,U.Ccno,SUM(P.Quantity*(I.Price + I.Ship)) as Sum,ROUND(SUM((I.Ship+I.Price) * P.Quantity)/P.Quantity) as Average FROM Customer C,Item I,Purchase P,Usage U WHERE I.Iid = P.Iid AND C.Cid = P.Cid AND P.PurDate >= 190101 AND P.PurDate <= 190331 AND P.Cid = U.Cid AND U.Ccno = P.Ccno AND U.Cid = C.Cid GROUP BY C.Cid,C.Cname,C.Address,P.PurDate,I.Iid,I.Description,I.Price,I.Ship,P.Quantity,U.Ccno ORDER BY C.Cid");
	
	//SQL code for active suppliers
	ResultSet activeSupplierrResult = activeSupplier.executeQuery("SELECT S.Sid,S.Sname,S.Location,T.Tid,T.PDate,I.Iid,I.Description,T.Quantity,SUM(T.Quantity * A.Cost) as Total,COUNT(*) as NumberOfProcurment,SUM(T.Quantity * A.Cost) as Sum,ROUND(SUM(T.Quantity * A.Cost)/SUM(T.Quantity)) as Average FROM Procure T,Item I,Supplier S,Avail A WHERE T.Iid = I.Iid AND T.PDate >= 190101 AND T.PDate <= 190331 AND T.Iid = A.Iid AND T.Sid = A.Sid AND S.Sid = T.Sid GROUP BY S.Sid,S.Sname,S.Location,T.Tid,T.PDate,I.Iid,I.Description,T.Quantity");

	//SQL code for inactive customers
	ResultSet inactiveCustomerResult = inactiveCustomer.executeQuery("SELECT C.Cid,Cname From Customer C WHERE C.Cid NOT IN (SELECT C.Cid FROM Customer C,Item I,Purchase P,Usage U WHERE I.Iid = P.Iid AND C.Cid = P.Cid AND P.PurDate >= 190101 AND P.PurDate <= 190331 AND P.Cid = U.Cid AND U.Ccno = P.Ccno AND U.Cid = C.Cid) ");

	//SQL code for inactive suppliers
	ResultSet inactiveSupplierResult = inactiveSupplier.executeQuery("SELECT S.Sid,S.Sname From Supplier S WHERE S.Sid NOT IN (SELECT S.Sid FROM Procure T,Item I,Supplier S,Avail A WHERE T.Iid = I.Iid AND T.PDate >= 190101 AND T.PDate <= 190331 AND T.Iid = A.Iid AND T.Sid = A.Sid AND S.Sid = T.Sid)");

	// output for active customers in the given period
	System.out.println("\t\t\t Customers Activity in the Quarter January 1 - March 31, 2019 ");
	System.out.println("________________________________________________________________________________________________________________________________________________________________________");
	System.out.print("Number\t Name\t\tAddress");
	System.out.println("\t\tDate\t Iid\t Description\t Price\tShip\tQuantity\tT_Price\tT_Ship\tTotal \tCcno \t\tNOPur \tSum \tAverage");
	System.out.println("________________________________________________________________________________________________________________________________________________________________________");
	   
	while(activeCustomerResult.next()){
		System.out.println(activeCustomerResult.getString("Cid")+ "\t" + activeCustomerResult.getString("Cname")+ "\t"+activeCustomerResult.getString("Address")+"\t"+activeCustomerResult.getString("PurDate")
				   +"\t"+activeCustomerResult.getString("Iid")+"\t" + activeCustomerResult.getString("Description")+"\t" +activeCustomerResult.getString("Price")+"\t"+activeCustomerResult.getString("Ship")
				   +"\t"+activeCustomerResult.getString("Quantity") +"\t\t"+activeCustomerResult.getString("T_Price")+"\t"+activeCustomerResult.getString("T_Ship")+"\t"+activeCustomerResult.getString("Total")
				   +"\t"+ activeCustomerResult.getString("Ccno")+"\t"+ activeCustomerResult.getString("NumberOfPurchases")+"\t"+ activeCustomerResult.getString("Sum")+"\t"+ activeCustomerResult.getString("Average"));
	}  
 	System.out.println("_______________________________________________________________________________________________________________________________________________________________________\n");
	
	// output for inactive customers in the given period
	System.out.println("\nThe following customers were not active in this period");
	System.out.println("__________________________________________________________________________________________");
	
	System.out.println("CID\t Customer-Name");
	System.out.println("_______________________");
         
	while(inactiveCustomerResult.next()){
                System.out.println(inactiveCustomerResult.getString("Cid")+ "\t" + inactiveCustomerResult.getString("Cname"));
        }
	

	// output for active suppliers 
	System.out.println("\t\t\t Supplier Activity in the Quarter January 1 - March 31, 2019 ");
      
	System.out.println("_________________________________________________________________________________________________________________________________");
        System.out.print("Number\t Name\t\tLocation");
        System.out.println("\tTid \t ProcDate \t Iid \t Description \t Qty \t Total\tNOProc\tSum\tAverage|");
        System.out.println("_________________________________________________________________________________________________________________________________");
        
	while(activeSupplierrResult.next()){
                System.out.println(activeSupplierrResult.getString("Sid")+ "\t" + activeSupplierrResult.getString("Sname")+ ""+activeSupplierrResult.getString("Location")+""+activeSupplierrResult.getString("Tid")
               			   +"\t"+activeSupplierrResult.getString("PDate")+"\t\t" + activeSupplierrResult.getString("Iid")+"\t"+activeSupplierrResult.getString("Description")+"" 
				   + activeSupplierrResult.getString("Quantity")+"\t"+activeSupplierrResult.getString("Total")+"\t"+ activeSupplierrResult.getString("NumberOfProcurment")+"\t"
				   + activeSupplierrResult.getString("Sum")+"\t"+ activeSupplierrResult.getString("Average")+"\t");
        }
	System.out.println("__________________________________________________________________________________________");
	
	
	// output for inactive suppliers
	System.out.println("\nThe following Suppliers were not active in this period");
        System.out.println("__________________________________________________________________________________________");
        
	System.out.println("SID\t Supplier-Name");
        System.out.println("_______________________");

	 while(inactiveSupplierResult.next()){
                System.out.println(inactiveSupplierResult.getString("Sid")+ "\t" + inactiveSupplierResult.getString("Sname"));
        }

        oracleConnect.close();  //connection closed

      }
       catch (Exception sqlExeption) {

		// call the exeption handling function if error occured in the try-catch block
		SQLError(sqlExeption);	
     } 

}
}


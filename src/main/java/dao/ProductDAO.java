package dao;
import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductDAO {
    public static Map<String,Product> mapProduct = getAllProduct();
    public static Map<String, Product> getAllProduct() {
        Map<String, Product> mapTemp = new HashMap<String, Product>();
        try {
                String query = "select * from products join categories on products.cateId = categories.cateId;";
                Connection connect = new Connect().getConnection();
                Statement stmt =  connect.createStatement();
                ResultSet resultSet = stmt.executeQuery(query);
                while (resultSet.next()) {
                    String pid = resultSet.getString(1);
                    String name = resultSet.getString(2);
                    Float price = resultSet.getFloat(3);
                    String image = resultSet.getString(4);
                    int status = resultSet.getInt(5);
                    String description = resultSet.getString(6);
                    String cateId = resultSet.getString(7);
                    Product p = new Product(pid, name, price, image, status, description, cateId);
                    mapTemp.put(p.getPid(), p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mapTemp;
    }

    public List<Product> render(int index, int size){
        try {
            String query = "with x as (select *, ROW_NUMBER() over (order by name desc ) as r from Products)\r\n"
                    + "select * from x where r between ?*?-(?-1) and ?*?";
            Connection connect = new Connect().getConnection();
            PreparedStatement ppstm = connect.prepareStatement(query);
            ppstm.setInt(1, index);
            ppstm.setInt(2, size);
            ppstm.setInt(3, size);
            ppstm.setInt(4, index);
            ppstm.setInt(5, size);
            ResultSet rs =ppstm.executeQuery();
            List<Product> list = new ArrayList<Product>();
            while(rs.next()) {
                Product p = mapProduct.get(rs.getString(1));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }

    public List<Product> getProductByCategory(String cateId) {
        List<Product> list = new ArrayList<>();
       try{
           String query = "SELECT * FROM Products WHERE cateId=?;";
           Connection connect = new Connect().getConnection();
           PreparedStatement ppstm = connect.prepareStatement(query);
           ppstm.setString(1, cateId);
           ResultSet rs =ppstm.executeQuery();
           while (rs.next()){
               list.add(new Product(rs.getString(1), rs.getString(2), rs.getFloat(3),
                       rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7)));
           }
       } catch(Exception e){
           e.printStackTrace();
       }
        return list;
    }

    public static void main(String[] args) {
        ProductDAO sp = new ProductDAO();
        getAllProduct();
        for (Product p: getAllProduct().values()
             ) {
            System.out.println(p);
        }
//        System.out.println(sp.render(1, 15));

        System.out.println(sp.getProductByCategory("TCC"));
    }
}

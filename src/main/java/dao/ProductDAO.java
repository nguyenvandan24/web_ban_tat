package dao;
import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class ProductDAO {
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from products;";
        try (
                Connection connect = new Connect().getConnection();
                PreparedStatement preparedStatement = connect.prepareStatement(query);
                ResultSet resultSet = preparedStatement.executeQuery()){
            while (resultSet.next()) {
                list.add(new Product(resultSet.getString(1), resultSet.getString(2), resultSet.getFloat(3),
                        resultSet.getString(4) , resultSet.getInt(5),resultSet.getString(6)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public static void main(String[] args) {
        ProductDAO productService = new ProductDAO();
        List<Product> listP = productService.getAllProduct();
        System.out.println(listP);
    }
}

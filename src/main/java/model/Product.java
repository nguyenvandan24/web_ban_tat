package model;

public class Product {
    private String pid;
    private String name;
    private float price;
    private String image;
    private int status;
    private String description;

    private String cateId;

    public Product() {
    }

    public Product(String pid, String name, float price, String image, int status, String description, String cateId) {
        this.pid = pid;
        this.name = name;
        this.price = price;
        this.image = image;
        this.status = status;
        this.description = description;
        this.cateId = cateId;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCateId() {
        return cateId;
    }

    public void setCateId(String category) {
        this.cateId = cateId;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pid='" + pid + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", image='" + image + '\'' +
                ", status=" + status +
                ", description='" + description + '\'' +
                ", cateId='" + cateId + '\'' +
                '}';
    }
}

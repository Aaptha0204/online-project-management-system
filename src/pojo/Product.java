package pojo;

public class Product {

	String productId;
	String productName;
	String productCategory;
	Integer productPrice;
	Integer productUsability;
	Integer productQuantity;
	String productColor;
	String productStatus;
	
	public Product() {
	}

	public Product(String productId, String productName, String productCategory, Integer productPrice, Integer  productUsability, Integer productQuantity, String productColor, String productStatus) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.productCategory = productCategory;
		this.productPrice = productPrice;
		this.productUsability = productUsability;
		this.productQuantity = productQuantity;
		this.productStatus = productStatus;
		this.productColor = productColor;
		
	}
	//getter and setter methods:
	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}

	public Integer getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(Integer productPrice) {
		this.productPrice = productPrice;
	}
	
	public void setProductQuantity(Integer productQuantity){
		this.productQuantity = productQuantity;
	}

	public int getProductQuantity(){
		return productQuantity;
	}
	
	public void setProductUsability(Integer  productUsability){
		this.productUsability = productUsability;
	}

	public int getProductUsability(){
		return productUsability;
	}
	
	public String getProductColor() {
		return productColor;
	}

	public void setProductColor(String productColor) {
		this.productColor = productColor;
	}

	public String getProductStatus() {
		return productColor;
	}

	public void setProductStatus(String productStatus) {
		this.productStatus = productStatus;
	}
	@Override
	public String toString() {
		/*return "Product [productId=" + productId + ", productName=" + productName + ", productCategory="
				+ productCategory + ", productPrice=" + productPrice + "]";*/
		//return "Product [productId=" + productId + ", productName=" + productName + ", productCategory=" + productCategory + ", productPrice=" + productPrice + ", productColor=" + productColor + ", productStatus=" + productStatus +", productUsability=" + productUsability +", productQuantity=" + productQuantity + "]";
		return "Product [productId=" + productId + ", productName=" + productName + ", productCategory=" + productCategory + ", productPrice=" + productPrice + ", productUsability =" + productUsability + ", productQuantity=" + productQuantity+", productColor=" + productColor+", productStatus=" + productStatus+ "]";
	}

}

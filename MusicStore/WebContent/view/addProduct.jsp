<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/view/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>

            <p class="lead">Fill the below information to add a product:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="POST" modelAttribute="product">
        <form:hidden path="productId"/>
        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="productName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline">&nbsp;Instrument<form:radiobutton path="productCategory" id="category"
                                                             value="Instrument" /></label>
            <label class="checkbox-inline">&nbsp;Record<form:radiobutton path="productCategory" id="category"
                                                             value="Record" /></label>
            <label class="checkbox-inline">&nbsp;Accessory<form:radiobutton path="productCategory" id="category"
                                                             value="Accessory" /></label>
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="price">Price</label>
            <form:input path="productPrice" id="price" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="new" />&nbsp;New</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="used" />&nbsp;Used</label>
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline">&nbsp;<form:radiobutton path="productStatus" id="status"
                                                             value="active" />&nbsp;Active</label>
            <label class="checkbox-inline">&nbsp;<form:radiobutton path="productStatus" id="status"
                                                             value="inactive" />&nbsp;Inactive</label>
        </div>

        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label>
            <form:input path="unitInStock" id="unitInStock" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control"/>
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="${pageContext.request.contextPath }/admin/productInventory" class="btn btn-default">Cancel</a>
        </form:form>
        
        
<%@include file="/WEB-INF/view/template/footer.jsp" %>
       
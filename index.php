<?php include 'includes/header.php' ?>

<div>
    <div class="client-supplier-container">
        <div>
            <h6>
                Client
            </h6>
            <select name="client" id="client">
                <option value="joão">
                    João
                </option>
            </select>
        </div>
        <div>
            <h6>
                Supplier
            </h6>
            <select name="supplier" id="supplier">
                <option value="hidrolux">hidrolux</option>
            </select>
        </div>
    </div>
    <form id="add_product_form" class="add-product-form">
        <div class="add-product-form__form-group">
            <input id='product_id' placeholder="Product id" type="number" class="form-control" required>
        </div>
        <div class="add-product-form__form-group">
            <input id='product_name' placeholder="Product name" type="text" class="form-control" required>
        </div>
        <div class="add-product-form__form-group">
            <input id='product_quantity' required placeholder="Quantity" type="number" class="form-control" required>
        </div>
        <select id='product_unity'>
            <option value="m.">m.</option>
            <option value="und.">und.</option>
            <option value="kg.">kg.</option>
        </select>
        <div class="add-product-form__form-group">
            <input id='product_price' placeholder="Price" type="number" min="1" step="0.01" class="form-control" required>
        </div>
        <div>
            <button id="" type="submit" class="btn btn-primary">Add item</button>
        </div>
    </form>
    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Date</th>
                <th>Product</th>
                <th>Quantity</th>
                <th>Unity</th>
                <th>Price</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody id="product-table-body">
            <tr>
                <td colspan='7'>
                    Please add products to your table.
                </td>
            </tr>
        </tbody>
    </table>
    <?php include 'includes/footer.php' ?>
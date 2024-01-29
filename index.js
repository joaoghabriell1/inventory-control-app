const product_id_input = document.getElementById("product_id");
const product_name_input = document.getElementById("product_name");
const product_unity_input = document.getElementById("product_unity");
const product_quantity_input = document.getElementById("product_quantity");
const product_price_input = document.getElementById("product_price");
const add_product_form = document.getElementById("add_product_form");

const product_table_body = document.getElementById("product-table-body");
const product_rows = document.querySelectorAll("");

const getFormatedDate = () => {
  const currentDate = new Date();
  const year = currentDate.getFullYear();
  const month = ("0" + (currentDate.getMonth() + 1)).slice(-2);
  const day = ("0" + currentDate.getDate()).slice(-2);

  const formattedDate = year + "/" + month + "/" + day;

  return formattedDate;
};

add_product_form.addEventListener("submit", (e) => {
  e.preventDefault();
  const product_id = product_id_input.value;
  const current_date = getFormatedDate();
  const product_name = product_name_input.value;
  const product_unity = product_unity_input.value;
  const product_quantity = product_quantity_input.value;
  const product_price = parseFloat(product_price_input.value).toFixed(2);

  const total_price = parseFloat(product_quantity * product_price).toFixed(2);

  const new_row = document.createElement("tr");

  const new_row_content = `
      <td>${product_id}</td>
      <td>${current_date}</td>
      <td>${product_name}</td>
      <td>${product_quantity}</td>
      <td>${product_unity}</td>
      <td>R$${product_price}</td>
      <td>R$${total_price}</td>
  `;

  new_row.innerHTML = new_row_content;

  product_table_body.appendChild(new_row);
});

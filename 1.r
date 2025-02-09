# Define products and initialize an empty shopping cart
products <- list(
  list(name = "Apple", price = 120),
  list(name = "Banana", price = 35),
  list(name = "Milk", price = 25),
  list(name = "Bread", price = 50),
  list(name = "Eggs", price = 10)
)
shopping_cart <- list()

# Items to add
cart_items_to_add <- list(
  list(name = "Apple", quantity = 3),
  list(name = "Milk", quantity = 2)
)

# Add items to the shopping cart
for (item in cart_items_to_add) {
  # Find the product by filtering the products list
  prod <- Filter(function(x) x$name == item$name, products)
  if (length(prod) > 0) {
    prod <- prod[[1]]
    shopping_cart <- c(shopping_cart, list(list(name = prod$name, price = prod$price, quantity = item$quantity)))
    cat("Item added to cart.\n")
  } else {
    cat("Product not found.\n")
  }
}

# Calculate receipt details
subtotal <- sum(sapply(shopping_cart, function(x) x$price * x$quantity))
cat("\nReceipt:\n")
for (item in shopping_cart) {
  item_total <- item$price * item$quantity
  cat(sprintf("%s (%d units) - Price: $%.2f - Subtotal: $%.2f\n", item$name, item$quantity, item$price, item_total))
}
tax <- subtotal * 0.08
total <- subtotal + tax

cat(sprintf("\nSubtotal: $%.2f\nTax Amount (8%%): $%.2f\nTotal Cost: $%.2f\n", subtotal, tax, total))
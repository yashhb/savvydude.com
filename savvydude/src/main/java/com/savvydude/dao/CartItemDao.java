package com.savvydude.dao;

import com.savvydude.model.Cart;
import com.savvydude.model.CartItem;

public interface CartItemDao {
	void addCartItem(CartItem cartItem);
	CartItem getCartItem(int cartItemId);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);
}

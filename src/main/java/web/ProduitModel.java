package web;

import java.util.ArrayList;
import java.util.List;

import metier.entities.Produit;

public class ProduitModel {
	
	private String moCle;
	private List<Produit> produits=new ArrayList<Produit>();
	public String getMoCle() {
		return moCle;
	}
	public void setMoCle(String moCle) {
		this.moCle = moCle;
	}
	public List<Produit> getProduits() {
		return produits;
	}
	public void setProduits(List<Produit> produits) {
		this.produits = produits;
	}
	

}

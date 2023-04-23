package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;

import dao.IProduitDao;
import dao.ProduitDaoImpl;
import metier.entities.Produit;
@WebServlet(name="cs",urlPatterns = {"*.php"})


public class ControleurServlet extends HttpServlet{
    private IProduitDao metier;
    
    
    @Override
    public void init() throws ServletException {
    	metier=new ProduitDaoImpl();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path=request.getServletPath();
        if(path.equals("/index.php")) {
        	request.getRequestDispatcher("produits.jsp").forward(request, response); 
        }
        else if(path.equals("/checher.php")) {
        	String motcle=request.getParameter("motcle");
        	ProduitModel model = new ProduitModel();
        	model.setMoCle(motcle);
        	List<Produit> produits=metier.produitsParMC("%"+motcle+"%");
        	model.setProduits(produits);
        	request.setAttribute("model", model);
        	request.getRequestDispatcher("produits.jsp").forward(request, response);

        }
        else if(path.equals("/Saisie.php")) {
        	request.getRequestDispatcher("SaisieProduit.jsp").forward(request, response);
        }
        else {
        	response.sendError(Response.SC_NOT_FOUND);
        }
    }
}

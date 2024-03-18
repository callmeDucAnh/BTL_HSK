package ui;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Image;

import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class leftMenu extends JFrame{
	private JLabel lblUserName;
	private JButton btnDashboard;
	private JButton btnAdd;
	private JButton btnAvailable;
	private JButton btnEdit;
	private JButton btnCustom;
	private JLabel lblImg;
	private JButton btnOut;
	private JLabel lblO;


	public leftMenu() {
		//
		setTitle(":v");
		setSize(800, 600);
		setLocationRelativeTo(null);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		
		//west
		JPanel pWest = new JPanel();
	    add(pWest, BorderLayout.WEST);
	    
		ImageIcon imgUser = new ImageIcon("N12_QuanLyBanVe/img/im-user-online.974x1024.png");
		Image img = imgUser.getImage();
		Image newImg = img.getScaledInstance(60, 60, Image.SCALE_SMOOTH);
		lblImg = new JLabel();
		lblImg.setIcon(new ImageIcon(newImg));
		JLabel lblWelcome = new JLabel("Welcome");
		lblUserName = new JLabel("User name");
		btnDashboard = new JButton("Dashboard");
		btnAdd = new JButton("Add Movies");
		btnAvailable = new JButton("Available Movies");
		btnEdit = new JButton("Edit Screening");
		btnCustom = new JButton("Customers");
		
		ImageIcon imgOut = new ImageIcon("N12_QuanLyBanVe/img/alternate-sign-out.256x195.png");
		Image imgO = imgOut.getImage();
		Image newImgO = imgO.getScaledInstance(20, 20, Image.SCALE_SMOOTH);
		lblO = new JLabel();
		lblO.setIcon(new ImageIcon(newImgO));
		JLabel lblOut = new JLabel("Sign Out");
		
		Box bW, bW1, bW2;
		bW = Box.createVerticalBox();
		bW1 = Box.createHorizontalBox();
		bW2 = Box.createVerticalBox();
				
		bW.add(Box.createRigidArea(new Dimension(10, 30)));
		bW2.add(lblImg);
	
		bW2.add(lblUserName);
		bW2.add(Box.createRigidArea(new Dimension(10, 30)));
		bW2.add(btnDashboard);
		bW2.add(Box.createRigidArea(new Dimension(10, 30)));
		bW2.add(btnAdd);
		bW2.add(Box.createRigidArea(new Dimension(10, 30)));
		bW2.add(btnAvailable);
		bW2.add(Box.createRigidArea(new Dimension(10, 30)));
		bW2.add(btnEdit);
		bW2.add(Box.createRigidArea(new Dimension(10, 30)));
		bW2.add(btnCustom);
		bW2.add(Box.createRigidArea(new Dimension(10, 120)));
		
        // Add lblO and lblOut to bW1
        bW1.add(lblO);
        bW1.add(Box.createRigidArea(new Dimension(5, 0))); // Add some space between lblO and lblOut
        bW1.add(lblOut);
        
        // Add bW1 to bW2 horizontally
        bW2.add(bW1);
        
        // Add bW2 to bW vertically
        bW.add(bW2);

        pWest.add(bW);


	}
	
	
	public static void main(String[] args) {
		new leftMenu().setVisible(true);
	}
}
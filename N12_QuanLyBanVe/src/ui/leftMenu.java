package ui;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.Image;

import javax.swing.BorderFactory;
import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.border.Border;

public class leftMenu extends JFrame{
	private JButton btnDashboard;
	private JButton btnAdd;
	private JButton btnAvailable;
	private JButton btnEdit;
	private JButton btnCustom;
	private JLabel lblImg;
	private JButton btnOut;
	public leftMenu() {
		//
		setTitle(":v");
		setSize(800, 600);
		setLocationRelativeTo(null);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		
		//left menu
		ImageIcon imageAvatar = new ImageIcon("C:\\Users\\Slayer\\Desktop\\DH\\year3\\hsk\\BTL\\N12_QuanLyBanVe\\img\\im-user-online.974x1024.png");
		Image imgAva = imageAvatar.getImage();
		Image newAva = imgAva.getScaledInstance(60, 60, Image.SCALE_SMOOTH);
		JLabel lblAva = new JLabel();
		lblAva.setIcon(new ImageIcon(newAva));
		
		lblImg = new JLabel("Welcome User");
		
		btnDashboard = new JButton("Dashboard");
		btnAdd = new JButton("Add Movies");
		btnAvailable = new JButton("Available Movies");
		btnEdit = new JButton("Edit Screening");
		btnCustom = new JButton("Customers");
		btnOut = new JButton();
		
		ImageIcon imageOut = new ImageIcon("C:\\Users\\Slayer\\Desktop\\DH\\year3\\hsk\\BTL\\N12_QuanLyBanVe\\img\\im-user-online.974x1024.png");
		Image imgOut = imageOut.getImage();
		Image newOut = imgOut.getScaledInstance(20, 20, Image.SCALE_SMOOTH);
		btnOut.setIcon(new ImageIcon(newOut));
		
		
		JPanel pMenu = new JPanel();
	    pMenu.setLayout(new BoxLayout(pMenu, BoxLayout.Y_AXIS));
	    pMenu.add(Box.createVerticalGlue()); 
	    pMenu.add(btnDashboard);
	    pMenu.add(Box.createVerticalStrut(10)); 
	    pMenu.add(btnAdd);
	    pMenu.add(Box.createVerticalStrut(10)); 
	    pMenu.add(btnAvailable);
	    pMenu.add(Box.createVerticalStrut(10)); 
	    pMenu.add(btnEdit);
	    pMenu.add(Box.createVerticalStrut(10)); 
	    pMenu.add(btnCustom);
	    pMenu.add(Box.createVerticalStrut(20)); 
	    pMenu.add(Box.createVerticalGlue()); 
	    
	    btnDashboard.setPreferredSize(btnAvailable.getPreferredSize());
		btnAdd.setPreferredSize(btnAvailable.getPreferredSize());
		btnEdit.setPreferredSize(btnAvailable.getPreferredSize());
		btnCustom.setPreferredSize(btnAvailable.getPreferredSize());

	    JPanel pLeft = new JPanel();
	    pLeft.setLayout(new BoxLayout(pLeft, BoxLayout.Y_AXIS));
	    Border padding = BorderFactory.createEmptyBorder(0, 10, 0, 0);
        pLeft.setBorder(padding);
	    pLeft.add(lblAva);
	    pLeft.add(lblImg);
	    pLeft.add(pMenu);
	    pLeft.add(btnOut);
		add(pLeft, BorderLayout.WEST);
		

	}
	
	
	public static void main(String[] args) { 
		new leftMenu().setVisible(true);
	}
}
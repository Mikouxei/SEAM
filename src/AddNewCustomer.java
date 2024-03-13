import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.Image;
import java.awt.Insets;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;

public class AddNewCustomer {
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/projectdb";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "mikouxei"; //change depending on your password
	private Connection connection;

	private JFrame frm_addNC;
	private String qryAddNC;
	private ResultSet resultAddNC;
	private PreparedStatement prepStatement;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					AddNewCustomer window = new AddNewCustomer();
					window.frm_addNC.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public AddNewCustomer() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {

		Image addNCBGSrc = new ImageIcon(this.getClass().getResource("Add New Customer.png")).getImage();
		Image addNCBGImg = addNCBGSrc.getScaledInstance(522, 713, Image.SCALE_DEFAULT);

		frm_addNC = new JFrame();
		frm_addNC.setBounds(100, 100, 534, 749);
		frm_addNC.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frm_addNC.getContentPane().setLayout(null);
		frm_addNC.setTitle("SEAM - Add New Customer");
		frm_addNC.setIconImage(Toolkit.getDefaultToolkit().getImage(getClass().getResource("SEAM Icon.png")));
		frm_addNC.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);;


		// TEXT FIELDS -------------------------------------------------------------------------------------

		JTextField inputFirstName = new JTextField();
		inputFirstName.setBounds(52, 182, 418, 40);
		inputFirstName.setOpaque(false);
		inputFirstName.setBorder(null);
		inputFirstName.setForeground(Color.WHITE);
		inputFirstName.setHorizontalAlignment(JTextField.CENTER);
		inputFirstName.setFont(new Font("Arial", Font.PLAIN, 14));
		frm_addNC.getContentPane().add(inputFirstName);
		inputFirstName.setColumns(10);

		JTextField inputLastName = new JTextField();
		inputLastName.setBounds(52, 262, 418, 40);
		inputLastName.setOpaque(false);
		inputLastName.setBorder(null);
		inputLastName.setForeground(Color.WHITE);
		inputLastName.setHorizontalAlignment(JTextField.CENTER);
		inputLastName.setFont(new Font("Arial", Font.PLAIN, 14));
		frm_addNC.getContentPane().add(inputLastName);
		inputLastName.setColumns(10);

		JTextField inputAddress = new JTextField();
		inputAddress.setBounds(52, 344, 418, 40);
		inputAddress.setOpaque(false);
		inputAddress.setBorder(null);
		inputAddress.setForeground(Color.WHITE);
		inputAddress.setHorizontalAlignment(JTextField.CENTER);
		inputAddress.setFont(new Font("Arial", Font.PLAIN, 14));
		frm_addNC.getContentPane().add(inputAddress);
		inputAddress.setColumns(10);

		JTextField inputPhoneNumber = new JTextField();
		inputPhoneNumber.addKeyListener(new KeyAdapter() {
			@Override
			public void keyPressed(KeyEvent e) {
				if(!Character.isDigit(e.getKeyChar()))
					e.consume();
			}
		});
		inputPhoneNumber.setBounds(52, 425, 418, 40);
		inputPhoneNumber.setOpaque(false);
		inputPhoneNumber.setBorder(null);
		inputPhoneNumber.setForeground(Color.WHITE);
		inputPhoneNumber.setHorizontalAlignment(JTextField.CENTER);
		inputPhoneNumber.setFont(new Font("Arial", Font.PLAIN, 14));
		frm_addNC.getContentPane().add(inputPhoneNumber);
		inputPhoneNumber.setColumns(10);

		JTextField inputEmailAddress = new JTextField();
		inputEmailAddress.setBounds(52, 506, 418, 40);
		inputEmailAddress.setOpaque(false);
		inputEmailAddress.setBorder(null);
		inputEmailAddress.setForeground(Color.WHITE);
		inputEmailAddress.setHorizontalAlignment(JTextField.CENTER);
		inputEmailAddress.setFont(new Font("Arial", Font.PLAIN, 14));
		frm_addNC.getContentPane().add(inputEmailAddress);
		inputEmailAddress.setColumns(10);



		// BUTTONS --------------------------------------------------------------------------------------

		JButton backBtn = new JButton("Back");
		backBtn.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				frm_addNC.dispose();
			}
		});
		backBtn.setFont(new Font("Arial", Font.BOLD, 12));
		backBtn.setBounds(280, 598, 90, 35);
		backBtn.setOpaque(true);
		backBtn.setContentAreaFilled(true);
		backBtn.setBorderPainted(false);
		backBtn.setFocusPainted(false);
		backBtn.setBackground(new Color(236, 107, 112));
		backBtn.setForeground(Color.white);
		backBtn.setMargin(new Insets(0, 0, 0, 0));
		frm_addNC.getContentPane().add(backBtn);

		JButton addBtn = new JButton("Add");
		addBtn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if(inputAddress.getText().isBlank() || inputEmailAddress.getText().isBlank() || inputFirstName.getText().isBlank() || inputLastName.getText().isBlank() || inputPhoneNumber.getText().isBlank())
					JOptionPane.showMessageDialog(frm_addNC, "Please fill missing informations", "Empty Fields detected", JOptionPane.ERROR_MESSAGE);
				else if(inputPhoneNumber.getText().length() != 11)
					JOptionPane.showMessageDialog(frm_addNC, "Phone number must contain eleven digits", "Invalid Phone", JOptionPane.ERROR_MESSAGE);
				else{
					try {

						Class.forName("com.mysql.cj.jdbc.Driver");
						connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
						Statement statement = connection.createStatement(); 
						qryAddNC = "SELECT EXISTS(SELECT * FROM customer "
								+ "WHERE customer_fName = '" + inputFirstName.getText() +"' AND customer_lName = '" + inputLastName.getText() + "') AS isExisting";

						int entries = 0;
						resultAddNC = statement.executeQuery(qryAddNC);
						if(resultAddNC.next())
							entries += resultAddNC.getInt("isExisting");
						int saveConfirmation = JOptionPane.showConfirmDialog(frm_addNC, "Do you want to continue?", "Save Confirmation", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
						if (saveConfirmation == JOptionPane.YES_OPTION) {
							if(entries == 0) {
								prepStatement = connection.prepareStatement("INSERT IGNORE INTO customer(contact_number, customer_fName, customer_lName, contact_email, address)\r\n"
										+ "VALUES (?, ?, ?, ?, ?)");
								prepStatement.setString(1, inputPhoneNumber.getText());
								prepStatement.setString(2, inputFirstName.getText());
								prepStatement.setString(3, inputLastName.getText());
								prepStatement.setString(4, inputEmailAddress.getText());
								prepStatement.setString(5, inputAddress.getText());

								prepStatement.executeUpdate();
								JOptionPane.showMessageDialog(frm_addNC, "Added new Customer", "Inserted Entry", JOptionPane.INFORMATION_MESSAGE);
							}else {
								int updateConfirmation = JOptionPane.showConfirmDialog(frm_addNC, "Duplicate Entry Exists. Update information?", "Confirmation", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
								if (updateConfirmation == JOptionPane.YES_OPTION) {
									prepStatement = connection.prepareStatement("UPDATE customer SET customer_fName = ?, customer_lName = ?, contact_email = ?, contact_number = ?, address = ? WHERE customer_fName = ? AND customer_lName = ?");
									prepStatement.setString(1, inputFirstName.getText());
									prepStatement.setString(2, inputLastName.getText());
									prepStatement.setString(3, inputEmailAddress.getText());
									prepStatement.setString(4, inputPhoneNumber.getText());
									prepStatement.setString(5, inputAddress.getText());
									prepStatement.setString(6, inputFirstName.getText());
									prepStatement.setString(7, inputLastName.getText());

									prepStatement.executeUpdate();
									JOptionPane.showMessageDialog(frm_addNC, "Record Updated", "Updated Entry", JOptionPane.INFORMATION_MESSAGE);
								}
							}
						}

						Customers.mdlPurchaseHistory.setRowCount(0);
						Customers.btnUpdate.setEnabled(false);
						Customers.btnDelete.setEnabled(false);
						Customers.txtEmail.setEditable(false);
						Customers.txtEmail.setText("");
						Customers.txtfName.setEditable(false);
						Customers.txtfName.setText("");
						Customers.txtlName.setEditable(false);
						Customers.txtlName.setText("");
						Customers.txtPhone.setEditable(false);
						Customers.txtPhone.setText("");
						Customers.txtAddress.setEditable(false);
						Customers.txtAddress.setText("");
						Customers.refreshEntries();
						frm_addNC.dispose();
						statement.close();
						connection.close(); 
					}  catch (ClassNotFoundException | SQLException select) {
						select.printStackTrace();
					}
				}
			}
		});
		addBtn.setFont(new Font("Arial", Font.BOLD, 12));
		addBtn.setBounds(380, 598, 90, 35);
		addBtn.setOpaque(true);
		addBtn.setContentAreaFilled(true);
		addBtn.setBorderPainted(false);
		addBtn.setFocusPainted(false);
		addBtn.setBackground(new Color(85, 131, 106));
		addBtn.setForeground(Color.white);
		addBtn.setMargin(new Insets(0, 0, 0, 0));
		frm_addNC.getContentPane().add(addBtn);


		// BACKGROUND -------------------------------------------------------------------------------------

		JLabel addNPBG = new JLabel("");
		addNPBG.setIcon(new ImageIcon(addNCBGImg));
		addNPBG.setBounds(0, 0, 612, 715);
		frm_addNC.getContentPane().add(addNPBG);

	}

	public void show() {
		frm_addNC.setVisible(true);
	}

}

package Views;

import java.awt.*;
import javax.swing.*;
import javax.swing.border.EmptyBorder;

import Controllers.DbUtils;

import java.sql.*;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class CustomerInfo extends JFrame {
    private JPanel contentPane;
    private JTable table;

    /**
     * Launch the application.
     */
    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            public void run() {
                try {
                    CustomerInfo frame = new CustomerInfo();
                    frame.setVisible(true);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    public void close() {
        this.dispose();
    }

    public CustomerInfo() throws SQLException {
        // Initialize connection
        conn c = new conn();

        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setBounds(530, 200, 900, 600);
        contentPane = new JPanel();
        contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
        setContentPane(contentPane);
        contentPane.setLayout(null);

        JButton btnExit = new JButton("Back");
        btnExit.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                new Reception().setVisible(true);
                setVisible(false);
            }
        });
        btnExit.setBounds(450, 510, 120, 30);
        btnExit.setBackground(Color.BLACK);
        btnExit.setForeground(Color.WHITE);
        contentPane.add(btnExit);

        JButton btnLoadData = new JButton("Load Data");
        btnLoadData.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent arg0) {
                try {
                    String displayCustomersql = "select * from Customer";
                    ResultSet rs = c.s.executeQuery(displayCustomersql);
                    table.setModel(DbUtils.resultSetToTableModel(rs));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
        btnLoadData.setBounds(300, 510, 120, 30);
        btnLoadData.setBackground(Color.BLACK);
        btnLoadData.setForeground(Color.WHITE);
        contentPane.add(btnLoadData);

        JLabel lblId = new JLabel("ID");
        lblId.setBounds(31, 11, 46, 14);
        contentPane.add(lblId);

        JLabel l1 = new JLabel("Number");
        l1.setBounds(150, 11, 46, 14);
        contentPane.add(l1);

        JLabel lblNewLabel = new JLabel("Name");
        lblNewLabel.setBounds(270, 11, 65, 14);
        contentPane.add(lblNewLabel);

        JLabel lblGender = new JLabel("Gender");
        lblGender.setBounds(360, 11, 46, 14);
        contentPane.add(lblGender);

        table = new JTable();
        JScrollPane scrollPane = new JScrollPane(table);
        scrollPane.setBounds(0, 40, 900, 450);
        contentPane.add(scrollPane);

        JLabel lblCountry = new JLabel("Country");
        lblCountry.setBounds(480, 11, 46, 14);
        contentPane.add(lblCountry);

        JLabel lblRoom = new JLabel("Room");
        lblRoom.setBounds(600, 11, 46, 14);
        contentPane.add(lblRoom);

        JLabel lblStatus = new JLabel("Check-in Status");
        lblStatus.setBounds(680, 11, 100, 14);
        contentPane.add(lblStatus);

        JLabel lblNewLabel_1 = new JLabel("Deposit");
        lblNewLabel_1.setBounds(800, 11, 100, 14);
        contentPane.add(lblNewLabel_1);

        getContentPane().setBackground(Color.GRAY);
    }
}

package Model;

import java.awt.*;
import javax.swing.*;
import javax.swing.border.EmptyBorder;
import Controllers.DbUtils;

import Views.Reception;
import java.sql.*;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class Employee extends JFrame {
    Connection conn = null;
    private JPanel contentPane;
    private JTable table;

    /**
     * Launch the application.
     */
    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            public void run() {
                try {
                    Employee frame = new Employee();
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

    public Employee() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagementsystem", "root", "");
        } catch (SQLException e) {
            e.printStackTrace();
        }

        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setBounds(430, 200, 1000, 600);
        contentPane = new JPanel();
        contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
        contentPane.setLayout(new BorderLayout());
        setContentPane(contentPane);

        // Panel for labels
        JPanel panelTop = new JPanel();
        panelTop.setLayout(new GridLayout(1, 8, 10, 10));
        panelTop.add(new JLabel("Name"));
        panelTop.add(new JLabel("Age"));
        panelTop.add(new JLabel("Gender"));
        panelTop.add(new JLabel("Job"));
        panelTop.add(new JLabel("Salary"));
        panelTop.add(new JLabel("Phone"));
        panelTop.add(new JLabel("Aadhar"));
        panelTop.add(new JLabel("Gmail"));
        contentPane.add(panelTop, BorderLayout.NORTH);

        table = new JTable();
        JScrollPane scrollPane = new JScrollPane(table);
        contentPane.add(scrollPane, BorderLayout.CENTER);

        JPanel panelBottom = new JPanel();
        panelBottom.setLayout(new FlowLayout(FlowLayout.CENTER, 20, 10));

        JButton btnLoadData = new JButton("Load Data");
        btnLoadData.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    conn c = new conn();
                    String displayCustomersql = "select * from Employee";
                    ResultSet rs = c.s.executeQuery(displayCustomersql);
                    table.setModel(DbUtils.resultSetToTableModel(rs));
                } catch (Exception e1) {
                    e1.printStackTrace();
                }
            }
        });
        btnLoadData.setBackground(Color.BLACK);
        btnLoadData.setForeground(Color.WHITE);
        panelBottom.add(btnLoadData);

        JButton btnExit = new JButton("Back");
        btnExit.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                new Reception().setVisible(true);
                setVisible(false);
            }
        });
        btnExit.setBackground(Color.BLACK);
        btnExit.setForeground(Color.WHITE);
        panelBottom.add(btnExit);

        contentPane.add(panelBottom, BorderLayout.SOUTH);

        getContentPane().setBackground(Color.WHITE);
    }

    class conn {
        Connection c;
        Statement s;

        public conn() {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                c = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagementsystem", "root", "");
                s = c.createStatement();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}

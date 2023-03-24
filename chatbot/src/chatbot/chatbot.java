package chatbot;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
public class chatbot {	
	
	public static void main(String[] args) {
	
		 JFrame f = new JFrame();
	     f.setSize(1000,1000);
	     f.setLayout(new GridLayout());
	     f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	     f.setTitle("API");
	     ImageIcon i = new ImageIcon("bot.jfif");
	     JButton  b = new JButton(i);
	     Color color =new Color(41,169,232);
	     b.setBackground(color);
	     f.add(b, BorderLayout.CENTER); 
	     b.setSize(255,255);    
	     f.setVisible(true);
	     JPanel p=new JPanel();
	     p.add(b);
	     f.add(p);
	     b.addActionListener(null);
	}
public  void actionPerformed1(ActionEvent e, ImageIcon i)

{
	JFrame  f1 ;
	if(e.getActionCommand().equals(i))
	{
		 f1 = new JFrame();
		 f1.dispose();
		f1.setSize(400,700);
		f1.setLayout(null);
		f1.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		f1.setTitle("ChatBOT");
		f1.setVisible(true);
		JTextField T= new JTextField();
		T.setColumns(40);
		JButton b1=new JButton("Send");
		b1.addActionListener((ActionListener) this);
		JButton b2= new JButton("Close");
			
	}
}
}
 

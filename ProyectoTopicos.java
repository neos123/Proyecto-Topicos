
package proyectotopicos;

import com.jtattoo.plaf.texture.TextureLookAndFeel;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JDesktopPane;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.UIManager;

public class ProyectoTopicos {

    private final JFrame ventana;
    private final JDesktopPane jdp;
    private final Dibujo panel[] = new Dibujo[20];
    private final JMenuBar menu;
    private final JMenu programa;
    private final JMenuItem abrir, cerrar;
    private int cont;
    
    public ProyectoTopicos(){
        ventana = new JFrame("Ventana de dibujo");
        jdp = new JDesktopPane();
        for (int i = 0; i < panel.length; i++) {
            panel[i] = new Dibujo();
        }
        menu = new JMenuBar();
        programa = new JMenu("Programa");
        abrir = new JMenuItem("Abrir Nuevo");
        cerrar = new JMenuItem("Cerrar Programa");
        cont = 0;
        armado();
        asignar();
        personalizar();
        mostrar();
    }
    
    public void armado(){
        ventana.setLayout(new BorderLayout());
        ventana.add(menu, BorderLayout.NORTH);
        menu.add(programa);
        programa.add(abrir);
        programa.add(cerrar);
        ventana.add(jdp);
        jdp.add(panel[0]);
        
    }
    
    public void personalizar(){
        ventana.setSize(800, 550);
        ventana.setLocationRelativeTo(null);
        ventana.setResizable(false);
        panel[0].setBackground(Color.WHITE);
    }
    
    public void mostrar(){
        ventana.setVisible(true);
        ventana.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
    
    public void asignar(){
        abrir.addActionListener(new escAbrir());
        cerrar.addActionListener(new eventCerrar());
    }
    
    public class escAbrir implements ActionListener{

        @Override
        public void actionPerformed(ActionEvent ae) {
            cont++;
            if (cont < panel.length) {
                panel[cont].setBackground(Color.WHITE);
                jdp.add(panel[cont]);
            }
            
        }
        
    }
    
    public class eventCerrar implements ActionListener{
        
        @Override
        public void actionPerformed(ActionEvent ae){
            JOptionPane.showMessageDialog(null, "Fin del programa...");
            System.exit(0);
        }
    }
    
    
    public static void main(String[] args) {
        
        System.out.println("Proyecto: Topicos avanzados de programacion "+
                "\nIntegrantes: \nCesar Alejandro Duran Becerra. "+
                "\nMario Ivan Velazquez Ramirez. "+
                "\nAfrodita Guadalupe Velazquez Rocha.");
        
        System.out.println("-------------------------------------------------");
        
        System.out.println("NOTA: Añadimos la libreria 'JTatto-1.6.11.jar' "+
                "como lo vimos \nen clase para poder modificar de "+
                "manera facil el LookAndFeel.");
        
        try {
            UIManager.setLookAndFeel(new TextureLookAndFeel());
        } catch (Exception e) {
        }

        ProyectoTopicos v = new ProyectoTopicos();
        
    }
    
}
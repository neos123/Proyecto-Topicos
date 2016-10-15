
package proyectotopicos;

import javax.swing.JInternalFrame;

public final class Dibujo extends JInternalFrame{
    
    private final PanelDibujo panel;
    
    public Dibujo(){
        
        panel = new PanelDibujo();
        add(panel);
        personalizar();
        mostrar();
    }
    
    public void personalizar(){
        setSize(300, 300);
        setDefaultCloseOperation(JInternalFrame.DISPOSE_ON_CLOSE);
        setResizable(true);
        setClosable(true);
        setMaximizable(true);
        setIconifiable(true);
    }
    
    public void mostrar(){
        setVisible(true);
    }
    
}
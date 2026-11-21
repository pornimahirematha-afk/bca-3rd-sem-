import java.applet.*;
import java.awt.*;
/* <applet code="GridApplet" width=300 height=300></applet> */
public class GridApplet extends Applet {
 public void paint(Graphics g) {
 for (int x = 0; x <= 300; x += 50) // draw vertical lines
 g.drawLine(x, 0, x, 300);
 for (int y = 0; y <= 300; y += 50) // draw horizontal lines
 g.drawLine(0, y, 300, y);
 }
}

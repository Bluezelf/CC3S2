package test1;

import java.time.LocalDateTime;
import org.junit.jupiter.api.*;
import static org.junit.jupiter.api.Assertions.*;
import static org.junit.jupiter.api.Assumptions.*;

public class JUnit5Sample3Test {

    //assumeTrue si recibe como parametro TRUE se ejecuta la prueba, de lo contrario solo la SKIPEA
    @Test
    void testAssumeTrue(){
        boolean b = 'A' == 'A';
        assumeTrue(b);
        assertEquals("Hello", "Hello");
    }
    
    //Metodo que solo se ejecuta los sabados, si es otro dia solo skipea la prueba
    @Test
    @DisplayName("Ejecutar este test solo los sabados")
    public void testAssumeTrueSaturday(){
        LocalDateTime dt = LocalDateTime.now();
        assumeTrue(dt.getDayOfWeek().getValue() == 6);
        System.out.println("Este codigo se mostrara solo si hoy es sabado");
    }
    
    //testAssumeFalse si recibe como parametro FALSE se ejecuta la prueba, de lo contrario solo la SKIPEA
    @Test
    void testAssumeFalse(){
        boolean b = 'A' != 'A';
        assumeFalse(b);
        assertEquals("Hello", "Hello");
    }
    
    //Metodo que verifica que la expresion que tiene como parametro es FALSA
    @Test
    void testAssumeFalseEnvProp(){
        System.setProperty("env", "prod");
        assumeFalse("prodd".equals(System.getProperty("env")));
        System.out.println("Este codigo se ejecutara solo si se cumple el supuesto anterior");
    }
    
    //assumingThat toma el comportamiento de assumeTrue pero solo a nivel de su parametro, osea el codigo que pones como segundo parametro,
    // de esta forma no SKIPEA todo el metodo si no solo lo el codigo que esta dentro de el
    @Test
    void testAssumingThat() {
        System.setProperty("env", "test");
        assumingThat("test".equals(System.getProperty("env")),
                () -> {
                    assertEquals(10, 10);
                    System.out.println("esto se ejecuta solo si test es el value de env");
                });
        assertEquals(10, 10);
        System.out.println("Sea verdadero o falso el assuming that esto se ejecuta");
    }
}

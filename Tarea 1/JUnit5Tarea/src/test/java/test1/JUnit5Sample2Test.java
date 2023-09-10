package test1;

import org.junit.jupiter.api.*;
import static org.junit.jupiter.api.Assertions.*;

public class JUnit5Sample2Test {

    // Verifica que los 2 parametros que le pongamos sean IGUALES, si es asi la prueba continua, si no FALLA
    @Test
    void testAssertEqual(){
        assertEquals("ABC", "ABC");
        assertEquals(20,20, "Mensaje Opcional");
        assertEquals(2 + 2, 4);
    }
    
    // Verifica que la expresion booleana que se le pone como parametro sea FALSA, si es VERDADERA la prueba FALLA
    @Test
    void testAssertFalse(){
        assertFalse("FirstName".length() == 10);
        assertFalse(10 > 20, "assertion message");
    }
    
    // assertNull --> Verifica que el parametro sea NULO || assertNotNull --> Verifica que el parametro NO sea NULO 
    @Test
    void testAssertNull(){
        String str1 = null;
        String str2 = "abc";
        assertNull(str1);
        assertNotNull(str2);
    }
    
    // Verifica que todos los asserts que le pongamos sean verdaderos, se usa mas para agrupar asserts en procesos especificos y no ponerlos juntos.
    @Test
    void testAssertAll() {
        String str1 = "abc";
        String str2 = "pqr";
        String str3 = "xyz";
        assertAll("numbers",
                () -> assertEquals(str1, "abc"),
                () -> assertEquals(str2, "pqr"),
                () -> assertEquals(str3, "xyz")
        );
//        assertAll("numbers",
//                () -> assertEquals(str1, "abc"),
//                () -> assertEquals(str2, "pqr1"),
//                () -> assertEquals(str3, "xyz1")
//        );
    }

    // assertTrue Verifica que la expresion booleana que se le pone como parametro sea VERDADERA, si es FALSA la prueba FALLA
    @Test
    void testAssertTrue() {
        IllegalArgumentException exception = new IllegalArgumentException("Illegal Argument Exception occured");
         
        assertTrue("FirstName".startsWith("F"));
        
        //2 assert uno dentro de otro, sea cual sea lo que ingresemos nos dara test fallido
//        assertThrows(IllegalArgumentException.class, () -> {
//            assertTrue(true);
//            throw new IllegalArgumentException("Illegal Argument Exception occurred");
//        });

        //assertTrue evalua condiciones, pero en este caso solo se le envia un entero, por lo cual no tiene sentido
//        assertTrue(10  {
//            throw new IllegalArgumentException("Illegal Argument Exception occured");
//        }
//        );
	 assertEquals("Illegal Argument Exception occured", exception.getMessage());
    }
    
    // testAssertThrows --> Su propósito principal es ayudar a asegurar de que se produzcan las excepciones esperadas en tus pruebas unitarias
    @Test
    void testAssertThrows(){
        assertThrows(ArithmeticException.class, () -> {
            int result = 10 / 0; // Intento de división por cero
        });
    }
}

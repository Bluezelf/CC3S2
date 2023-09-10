package test1;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.*;

public class JUnit5Sample1Test {
    
    @BeforeAll
    static void beforeAll(){
        System.out.println("**--- Ejecutado una vez antes que todos los metodos de prueba de esta clase ---*");    
    }
    
    @BeforeEach
    void beforeEach(){
        System.out.println("**--- Ejecutado antes de cada metodo de prueba en esta clase---*");
    }
    
    @Test
    void testMethod(){
        System.out.println("**-- Test del method1 ejecutado ---**");
    }
    
    @DisplayName("Test method2 con condicion")
    @Test
    void testMethod2(){
        System.out.println("**--- Test method2 ejecutado ---**");
    }
    
//    @Test
//    @Disabled("Implementacion pendiente")
//    void testMethod3(){
//        System.out.println("**--- Test method3 ejecutado ---**");
//    }
    
    @AfterEach
    void afterEach(){
        System.out.println("**--- Ejecutado despues de cada metodo de prueba en esta clase ---**");
    }
    
    @AfterAll
    static void afterAll(){
        System.out.println("**--- Ejecutado una vez despues de todos los metodos de prueba en esta clase ---**");
    }
}

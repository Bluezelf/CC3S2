package test;

import com.mycompany.conversion.StringCalculator;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class StringCalculatorTest {
    
    @Test
    void sumaDeDos(){
        assertEquals(10, StringCalculator.suma("4,6"));
        assertEquals(0, StringCalculator.suma(""));
        assertEquals(24, StringCalculator.suma("24"));
    }
}

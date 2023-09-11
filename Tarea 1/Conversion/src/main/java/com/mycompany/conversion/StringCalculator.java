package com.mycompany.conversion;

public class StringCalculator {

    public static int suma(String a) {
        if (a.isBlank()) {
            return 0;
        } else {
            String numeros[];
            int num_a, num_b;
            numeros = a.split(",");
            num_a = Integer.parseInt(numeros[0]);
            if(numeros.length == 1){
                return num_a;
            }
            num_b = Integer.parseInt(numeros[1]);
            int suma = num_a + num_b;
            return suma;
        }

    }
}

package com.company;

public class It extends People{
    It[] its = new It[8];
    Buhgalters[] buhgalters;
    static int receiveMoney(Buhgalters[] buhgalters,It[] its) {

        int y = 0;
        for (int i = 0; i < buhgalters.length;i++){
            double x = 125000.0 / 8;
            double z = x * 0.2;
            y++;
            buhgalters[i].balance +=z;
            System.out.println(z);
        }
        double x = 125000.0 / 8;
        double z = x * 0.2;
        double q = 125000 - z*buhgalters.length;
        System.out.println(q);
        for (int i = 0; i < its.length;i++){
            its[i].balance = q/8;
        }
        Dolg -= 125000;

        System.out.println(Dolg);

        return Dolg;
    }
}

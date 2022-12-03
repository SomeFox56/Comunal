package com.company;

public class Main {
    int Dolg = 3000000;
    public static void main(String[] args) {

    Director d = new Director();
    d.receiveMoney(10000);
    System.out.println();

    }
    public int getDolg(){
        int dolg = Dolg;
        return dolg;
    }
}

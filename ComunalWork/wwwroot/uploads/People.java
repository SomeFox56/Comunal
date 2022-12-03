package com.company;

public class People {
    People[] peoples = new People[0];

    public void setPeoples(People[] peoples,People people) {
        People[] peoplesCopy= new People[peoples.length+1] ;
        for(int i = 0; i<peoples.length;i++){
            peoplesCopy[i] = peoples[i];

        }
        peoplesCopy[peoplesCopy.length] = people;
        peoples = peoplesCopy;
        System.out.println(peoples);
    }
}

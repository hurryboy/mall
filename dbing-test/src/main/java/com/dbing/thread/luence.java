package com.dbing.thread;

public class luence {

    public static void main(String[] args){
        LuenceThread luenceThread = new LuenceThread();

        for (int i=0;i<4;i++){
            Thread thread = new Thread(luenceThread);
            thread.start();
        }
    }

}

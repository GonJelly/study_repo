package ThreadExample.chapter3;

public class ThreadB extends Thread{

    public ThreadB() {
        setName("ThreadB");
    }

    @Override
    public void run() {

        System.out.println("작업 스레드의 이름은:" + getName());

        for(int i = 0; i < 2; i++){
            System.out.println(getName() + "을 실행하였습니다.");
        }
    }
}

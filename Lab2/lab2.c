#include "types.h"
#include "user.h"

int main(int argc, char *argv[])
{
    int PScheduler(void);
    printf(1, "\n This program tests the correctness of your lab#2\n");
    PScheduler();
    return 0;
}


int PScheduler(void){
    // use this part to test the priority scheduler. Assuming that the priorities range between range between 0 to 31
    // 0 is the highest priority and 31 is the lowest priority.
    int pid;
    int i,j,k;
    int priorityArr[] = {30, 15, 25, 0, 9};

    printf(1, "\n  Testing the priority scheduler and setPriority(int priority) system call:\n");
    printf(1, "\n  Assuming that the priorities range between range between 0 to 31\n");
    printf(1, "\n  0 is the highest priority. All processes have a default priority of 10\n");
    printf(1, "\n  The parent processes will switch to priority 0\n");
    setPriority(0);

    for(i = 0; i < 5; i++) {
        pid = fork();
        if (pid > 0 ) {
            continue;
        } else if ( pid == 0) {
            setPriority(priorityArr[i]);
            printf(1, "\n child# %d has priority %d before starting its work", getpid(), getPriority());
            for (j=0;j<50000;j++) {
                for(k=0;k<1000;k++) {
                    asm("nop");
                }
            }
            printf(1, "\n child# %d has priority %d after finishing its work", getpid(), getPriority());
            printf(1, "\n child# %d with original priority %d has finished! \n", getpid(), priorityArr[i]);
            exit();
        } else {
            printf(2," \n Error \n");
        }
    }

    if(pid > 0) {
        for(i = 0; i < 5; i++) {
            wait(0);
        }
        printf(1,"\n if processes with highest priority finished first then its correct \n");
    }
    exit();
}
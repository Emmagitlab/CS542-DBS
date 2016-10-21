/*
 * Dispatcher.c
 *
 *  Created on: Oct 10, 2016
 *      Author: T440
 */
#include             "global.h"
#include             "syscalls.h"
#include             "protos.h"
#include             "string.h"
#include             <stdlib.h>
#include             <ctype.h>
#include			 "Process.h"
#include             "Dispatcher.h"
#include             "WasteTime.h"




void Dispatcher(){
	MEMORY_MAPPED_IO mmio;
	PCB* pcb;
	QueuePtr node;
//	PCB* runningPcb;
//	runningPcb = FindCurrent(runningProcessPid);


	while(GetHead(&pcb_ready_queue)==NULL) {

//		if(GetHead(&pcb_timer_queue)!= NULL || GetHead(&pcb_disk_queue!=NULL)) {
//			mmio.Mode=Z502Action;
//			mmio.Field1=mmio.Field2=mmio.Field3=0;
//			MEM_WRITE(Z502Idle, &mmio);
//
//		}
		CALL(WasteTime());
	}
	//pcb not null, start PCB if pcb is null call idle
	node = DeQueue(&pcb_ready_queue);
	pcb = node->data;
	runningProcessPid = pcb->pid;

		mmio.Mode = Z502StartContext;
		mmio.Field1 = pcb->context;
		mmio.Field2 = START_NEW_CONTEXT_AND_SUSPEND;
		MEM_WRITE(Z502Context, &mmio);

}

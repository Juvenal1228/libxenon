/*
 * Copyright (c) 2001, Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 * $Id: sys_arch.c,v 1.1 2007/03/19 20:10:27 tmbinc Exp $
 */

#include "lwip/sys.h"
#include "lwip/def.h"
#include "lwip/timers.h"
#include <ppc/timebase.h>
#include <threads/mutex.h>

struct sys_timeo timeouts;
u32_t startTime;

void sys_arch_block(u16_t time)
{
	int i;
	for (i=0; i< time*1000; ++i) ;
}

void sys_init(void)
{
    startTime = mftb();
    return;
}

struct sys_timeo * sys_arch_timeouts(void)
{
    return &timeouts;
}

/** Returns the current time in milliseconds,
 * may be the same as sys_jiffies or at least based on it. */
u32_t sys_now(void)
{
    return sys_jiffies();
}

u32_t sys_jiffies(void) /* since power up. */
{
    return (u32_t)tb_diff_msec(mftb(), startTime);
}

err_t sys_sem_new(sys_sem_t *sem, u8_t count)
{
    printf("sys_sem_new(count=%0u", count);
    //malloc the sem struct
    sem = (sys_sem_t*)malloc(sizeof(sys_sem_t));
    //make the mutex call
    MUTEX *mut = mutex_create(count);
    //memory errors?
    if (mut == NULL) {
        return SYS_SEM_NULL;
    }
    memcpy(&sem->mutex, mut, sizeof(MUTEX));
    sem->valid = 1;
    printf(")\n");
    return ERR_OK;
}

void sys_sem_free(sys_sem_t *sem)
{
    printf("sys_sem_free()\n");
    mutex_destroy(&sem->mutex);
}

void sys_sem_signal(sys_sem_t *sem)
{
    //Release the mutex
    printf("sys_sem_signal()\n");
    mutex_release(&sem->mutex);
}

int sys_sem_valid(sys_sem_t *sem)
{
    printf("sys_sem_valid()\n");
    //sem->valid = 1;
    printf("%i\n", sem->valid);
    return (int)sem->valid;
}
void sys_sem_set_invalid(sys_sem_t *sem)
{
    printf("sys_sem_set_invalid()\n");
    sem->valid = 0;
}

u32_t sys_arch_sem_wait(sys_sem_t *sem, u32_t timeout)
{
    printf("sys_arch_sem_wait(timeout=%0u", timeout);
    unsigned int start = sys_now();
    //make the mutex call
    unsigned int aqrd = mutex_acquire(&sem->mutex, timeout);
    //0=timeout
    if (aqrd == 0) {
        return SYS_ARCH_TIMEOUT;
    }
    unsigned int end = sys_now();
    //return the elapsed time in ms
    printf(")\n");
    return (end - start);
}

int sys_mbox_valid(sys_mbox_t *mbox)
{
    printf("sys_mbox_valid()\n");
    return 0;
}
void sys_mbox_set_invalid(sys_mbox_t *mbox)
{
    printf("sys_mbox_set_invalid()\n");
}

err_t sys_mbox_new(sys_mbox_t *mbox, int size)
{
    printf("sys_mbox_new()\n");
    return ERR_OK;
}

void sys_mbox_free(sys_mbox_t *mbox)
{
    printf("sys_mbox_free()\n");
    return;
}

void sys_mbox_post(sys_mbox_t *mbox, void *msg)
{
    printf("sys_mbox_post()\n");
    return;
}

u32_t sys_arch_mbox_fetch(sys_mbox_t *mbox, void **msg, u32_t timeout)
{
    printf("sys_mbox_fetch()\n");
    return 0;
}

u32_t sys_arch_mbox_tryfetch(sys_mbox_t *mbox, void **msg)
{
    printf("sys_mbox_tryfetch()\n");
    return 0;
}

err_t sys_mbox_trypost(sys_mbox_t *mbox, void *msg)
{
    printf("sys_mbox_trypost()\n");
    return ERR_OK;
}

sys_thread_t sys_thread_new(const char *name, lwip_thread_fn thread, void *arg, int stacksize, int prio)
{
    printf("sys_thread_new(name=%s, stacksize=%i, prio=%i", name, stacksize, prio);
    //PTHREAD thread_create(void* entrypoint, unsigned int stack_size,
    //    void* argument, unsigned int flags);
    sys_thread_t *thrd = malloc(sizeof(sys_thread_t));
    memcpy(&thrd->thread, thread_create(thread, stacksize, arg, prio), sizeof(THREAD));
    thread_resume(&thrd->thread);
    printf(")\n");
    return *thrd;
}
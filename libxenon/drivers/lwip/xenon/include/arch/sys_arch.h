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
 * $Id: sys_arch.h,v 1.1 2007/03/19 20:10:29 tmbinc Exp $
 */
#ifndef __SYS_C64_H__
#define __SYS_C64_H__

#include <threads/mutex.h>
#include <threads/threads.h>
#define SYS_MBOX_NULL NULL
#define SYS_SEM_NULL  NULL

//#define sys_sem_valid(sem) (((sem) != NULL)) // && (*(sem) != NULL))
//#define sys_sem_set_invalid(sem) do { if((sem) != NULL) { *(sem) = NULL; }}while(0)

/* let sys.h use binary semaphores for mutexes */
#define LWIP_COMPAT_MUTEX 1

//#define sys_mbox_valid(mbox) (((mbox) != NULL) && (*(mbox) != NULL))
//#define sys_mbox_set_invalid(mbox) do { if((mbox) != NULL) { *(mbox) = NULL; }}while(0)

typedef struct sys_mutex_wrap
{
    struct _MUTEX mutex;
    int valid;
} sys_mutex_wrap_t;

typedef struct sys_thread_wrap
{
    struct _THREAD *thread;
    
} sys_thread_wrap_t;

#define SYS_MBOX_SIZE 128

typedef struct sys_mbox_msg {
  struct sys_mbox_msg *next;
  void *msg;
} sys_mbox_msg_t;

typedef struct sys_mbox {
  int first, last;
  void *msgs[SYS_MBOX_SIZE];
  struct sys_mutex_wrap *not_empty;
  struct sys_mutex_wrap *not_full;
  struct sys_mutex_wrap *mutex;
  int wait_send;
} sys_mbox_t;

typedef sys_mutex_wrap_t sys_sem_t;
typedef sys_mutex_wrap_t sys_mutex_t;
//typedef int sys_mbox_t;
typedef sys_thread_wrap_t sys_thread_t;

#endif /* __SYS_C64_H__ */

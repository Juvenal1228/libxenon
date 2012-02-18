/*
 * Copyright (c) 2001, 2002 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */


#ifndef __LWIPOPTS_H__
#define __LWIPOPTS_H__

#include <string.h>
#include <stdio.h>

#define NO_SYS                  0


/* FEATURES */

#define LWIP_TCP                1
#define LWIP_UDP                1
#define LWIP_DHCP               1
#define LWIP_DNS                1
#define LWIP_SOCKET             1
#define LWIP_NETCONN            1
#define LWIP_NETIF_HOSTNAME     1
#define LWIP_NETIF_API          1


/* SETTINGS */

#define LWIP_PROVIDE_ERRNO      1
#define MEM_ALIGNMENT           4
#define MEM_LIBC_MALLOC         1
#define MEM_SIZE                (10 * 1024 * 1024) //10mb
#define MEMP_MEM_MALLOC         1
#define MEMP_NUM_PBUF           1024
#define MEMP_NUM_SYS_TIMEOUT    20
#define MEMP_NUM_TCP_PCB        20
#define MEMP_NUM_TCP_PCB_LISTEN 16
#define MEMP_NUM_TCP_SEG        128
#define MEMP_NUM_UDP_PCB        20
#define PBUF_POOL_SIZE          512
#define TCP_MSS                 1476
#define TCP_SND_BUF             (8 * TCP_MSS)
#define LWIP_TIMEVAL_PRIVATE    0
#define LWIP_NETIF_STATUS_CALLBACK      (!NO_SYS)
#define LWIP_NETIF_LINK_CALLBACK        (!NO_SYS)


/* STATS */

#define LWIP_STATS_DISPLAY      1


/* DEBUG */

#define LWIP_DEBUG              1
#define LWIP_DEBUG_TIMERNAMES   LWIP_DEBUG
#define LWIP_DBG_MIN_LEVEL      LWIP_DBG_LEVEL_ALL


#define LWIP_DBG_O                LWIP_DBG_OFF


#define API_LIB_DEBUG           LWIP_DBG_O
#define API_MSG_DEBUG           LWIP_DBG_O
#define AUTOIP_DEBUG            LWIP_DBG_O
#define DHCP_DEBUG              LWIP_DBG_O
#define DNS_DEBUG               LWIP_DBG_O
#define ETHARP_DEBUG            LWIP_DBG_O
#define ICMP_DEBUG              LWIP_DBG_O
#define IGMP_DEBUG              LWIP_DBG_O
#define INET_DEBUG              LWIP_DBG_O
#define IP_DEBUG                LWIP_DBG_O
#define IP_REASS_DEBUG          LWIP_DBG_O
#define MEM_DEBUG               LWIP_DBG_O
#define MEMP_DEBUG              LWIP_DBG_O
#define NETIF_DEBUG             LWIP_DBG_O
#define PBUF_DEBUG              LWIP_DBG_O
#define PPP_DEBUG               LWIP_DBG_O
#define RAW_DEBUG               LWIP_DBG_O
#define SLIP_DEBUG              LWIP_DBG_O
#define SNMP_MIB_DEBUG          LWIP_DBG_O
#define SNMP_MSG_DEBUG          LWIP_DBG_O
#define SOCKETS_DEBUG           LWIP_DBG_O
#define SYS_DEBUG               LWIP_DBG_O
#define SYS_ARCH_DEBUG          LWIP_DBG_O
#define TCP_CWND_DEBUG          LWIP_DBG_O
#define TCP_DEBUG               LWIP_DBG_O
#define TCP_FR_DEBUG            LWIP_DBG_O
#define TCP_INPUT_DEBUG         LWIP_DBG_O
#define TCPIP_DEBUG             LWIP_DBG_O
#define TCP_OUTPUT_DEBUG        LWIP_DBG_O
#define TCP_QLEN_DEBUG          LWIP_DBG_O
#define TCP_RST_DEBUG           LWIP_DBG_O
#define TCP_RTO_DEBUG           LWIP_DBG_O
#define TCP_WND_DEBUG           LWIP_DBG_O
#define TIMERS_DEBUG            LWIP_DBG_O
#define UDP_DEBUG               LWIP_DBG_O


#endif /* __LWIPOPTS_H__ */

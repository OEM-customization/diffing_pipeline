.class public Lsun/nio/ch/Net;
.super Ljava/lang/Object;
.source "Net.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Net$1;,
        Lsun/nio/ch/Net$2;
    }
.end annotation


# static fields
.field public static final POLLCONN:S

.field public static final POLLERR:S

.field public static final POLLHUP:S

.field public static final POLLIN:S

.field public static final POLLNVAL:S

.field public static final POLLOUT:S

.field public static final SHUT_RD:I = 0x0

.field public static final SHUT_RDWR:I = 0x2

.field public static final SHUT_WR:I = 0x1

.field static final UNSPEC:Ljava/net/ProtocolFamily;

.field private static volatile checkedIPv6:Z

.field private static final exclusiveBind:Z

.field private static final fastLoopback:Z

.field private static volatile isIPv6Available:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 46
    new-instance v3, Lsun/nio/ch/Net$1;

    invoke-direct {v3}, Lsun/nio/ch/Net$1;-><init>()V

    sput-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    .line 60
    sput-boolean v4, Lsun/nio/ch/Net;->checkedIPv6:Z

    .line 632
    invoke-static {}, Lsun/nio/ch/Net;->pollinValue()S

    move-result v3

    sput-short v3, Lsun/nio/ch/Net;->POLLIN:S

    .line 633
    invoke-static {}, Lsun/nio/ch/Net;->polloutValue()S

    move-result v3

    sput-short v3, Lsun/nio/ch/Net;->POLLOUT:S

    .line 634
    invoke-static {}, Lsun/nio/ch/Net;->pollerrValue()S

    move-result v3

    sput-short v3, Lsun/nio/ch/Net;->POLLERR:S

    .line 635
    invoke-static {}, Lsun/nio/ch/Net;->pollhupValue()S

    move-result v3

    sput-short v3, Lsun/nio/ch/Net;->POLLHUP:S

    .line 636
    invoke-static {}, Lsun/nio/ch/Net;->pollnvalValue()S

    move-result v3

    sput-short v3, Lsun/nio/ch/Net;->POLLNVAL:S

    .line 637
    invoke-static {}, Lsun/nio/ch/Net;->pollconnValue()S

    move-result v3

    sput-short v3, Lsun/nio/ch/Net;->POLLCONN:S

    .line 641
    invoke-static {}, Lsun/nio/ch/Net;->isExclusiveBindAvailable()I

    move-result v0

    .line 642
    .local v0, "availLevel":I
    if-ltz v0, :cond_5e

    .line 645
    new-instance v3, Lsun/nio/ch/Net$2;

    invoke-direct {v3}, Lsun/nio/ch/Net$2;-><init>()V

    .line 644
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 652
    .local v1, "exclBindProp":Ljava/lang/String;
    if-eqz v1, :cond_56

    .line 653
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_51

    :goto_48
    sput-boolean v2, Lsun/nio/ch/Net;->exclusiveBind:Z

    .line 664
    .end local v1    # "exclBindProp":Ljava/lang/String;
    :goto_4a
    invoke-static {}, Lsun/nio/ch/Net;->isFastTcpLoopbackRequested()Z

    move-result v2

    sput-boolean v2, Lsun/nio/ch/Net;->fastLoopback:Z

    .line 41
    return-void

    .line 654
    .restart local v1    # "exclBindProp":Ljava/lang/String;
    :cond_51
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_48

    .line 655
    :cond_56
    if-ne v0, v2, :cond_5b

    .line 656
    sput-boolean v2, Lsun/nio/ch/Net;->exclusiveBind:Z

    goto :goto_4a

    .line 658
    :cond_5b
    sput-boolean v4, Lsun/nio/ch/Net;->exclusiveBind:Z

    goto :goto_4a

    .line 661
    .end local v1    # "exclBindProp":Ljava/lang/String;
    :cond_5e
    sput-boolean v4, Lsun/nio/ch/Net;->exclusiveBind:Z

    goto :goto_4a
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static anyInet4Address(Ljava/net/NetworkInterface;)Ljava/net/Inet4Address;
    .registers 2
    .param p0, "interf"    # Ljava/net/NetworkInterface;

    .prologue
    .line 208
    new-instance v0, Lsun/nio/ch/Net$3;

    invoke-direct {v0, p0}, Lsun/nio/ch/Net$3;-><init>(Ljava/net/NetworkInterface;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method static asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .registers 2
    .param p0, "sa"    # Ljava/net/SocketAddress;

    .prologue
    .line 115
    instance-of v0, p0, Ljava/net/InetSocketAddress;

    if-nez v0, :cond_a

    .line 116
    new-instance v0, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v0}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v0

    .line 117
    :cond_a
    check-cast p0, Ljava/net/InetSocketAddress;

    .end local p0    # "sa":Ljava/net/SocketAddress;
    return-object p0
.end method

.method public static bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    sget-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, p0, p1, p2}, Lsun/nio/ch/Net;->bind(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 435
    return-void
.end method

.method static bind(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .registers 6
    .param p0, "family"    # Ljava/net/ProtocolFamily;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 441
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq p0, v1, :cond_11

    const/4 v0, 0x1

    .line 442
    .local v0, "preferIPv6":Z
    :goto_b
    sget-boolean v1, Lsun/nio/ch/Net;->exclusiveBind:Z

    invoke-static {p1, v0, v1, p2, p3}, Lsun/nio/ch/Net;->bind0(Ljava/io/FileDescriptor;ZZLjava/net/InetAddress;I)V

    .line 443
    return-void

    .line 441
    .end local v0    # "preferIPv6":Z
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "preferIPv6":Z
    goto :goto_b

    .line 440
    .end local v0    # "preferIPv6":Z
    :cond_13
    const/4 v0, 0x0

    .restart local v0    # "preferIPv6":Z
    goto :goto_b
.end method

.method private static native bind0(Ljava/io/FileDescriptor;ZZLjava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static block4(Ljava/io/FileDescriptor;III)I
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # I
    .param p2, "interf"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock4(ZLjava/io/FileDescriptor;III)I

    move-result v0

    return v0
.end method

.method static block6(Ljava/io/FileDescriptor;[BI[B)I
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # [B
    .param p2, "index"    # I
    .param p3, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock6(ZLjava/io/FileDescriptor;[BI[B)I

    move-result v0

    return v0
.end method

.method private static native blockOrUnblock4(ZLjava/io/FileDescriptor;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blockOrUnblock6(ZLjava/io/FileDescriptor;[BI[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static canIPv6SocketJoinIPv4Group()Z
    .registers 1

    .prologue
    .line 85
    invoke-static {}, Lsun/nio/ch/Net;->canIPv6SocketJoinIPv4Group0()Z

    move-result v0

    return v0
.end method

.method private static native canIPv6SocketJoinIPv4Group0()Z
.end method

.method static canJoin6WithIPv4Group()Z
    .registers 1

    .prologue
    .line 93
    invoke-static {}, Lsun/nio/ch/Net;->canJoin6WithIPv4Group0()Z

    move-result v0

    return v0
.end method

.method private static native canJoin6WithIPv4Group0()Z
.end method

.method public static checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .registers 5
    .param p0, "sa"    # Ljava/net/SocketAddress;

    .prologue
    .line 97
    if-nez p0, :cond_b

    .line 100
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sa == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_b
    instance-of v2, p0, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_15

    .line 104
    new-instance v2, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v2}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v2

    :cond_15
    move-object v1, p0

    .line 105
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 106
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 107
    new-instance v2, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {v2}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw v2

    .line 108
    :cond_24
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 109
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet4Address;

    if-nez v2, :cond_39

    instance-of v2, v0, Ljava/net/Inet6Address;

    :goto_2e
    if-nez v2, :cond_3b

    .line 110
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid address type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_39
    const/4 v2, 0x1

    goto :goto_2e

    .line 111
    :cond_3b
    return-object v1
.end method

.method static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "remote"    # Ljava/net/InetAddress;
    .param p2, "remotePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    sget-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, p0, p1, p2}, Lsun/nio/ch/Net;->connect(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method static connect(Ljava/net/ProtocolFamily;Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .registers 6
    .param p0, "family"    # Ljava/net/ProtocolFamily;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "remote"    # Ljava/net/InetAddress;
    .param p3, "remotePort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 463
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 464
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq p0, v1, :cond_17

    const/4 v0, 0x1

    .line 465
    .local v0, "preferIPv6":Z
    :goto_12
    invoke-static {v0, p1, p2, p3}, Lsun/nio/ch/Net;->connect0(ZLjava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v1

    return v1

    .line 464
    .end local v0    # "preferIPv6":Z
    :cond_17
    const/4 v0, 0x0

    .restart local v0    # "preferIPv6":Z
    goto :goto_12

    .line 463
    .end local v0    # "preferIPv6":Z
    :cond_19
    const/4 v0, 0x0

    .restart local v0    # "preferIPv6":Z
    goto :goto_12
.end method

.method private static native connect0(ZLjava/io/FileDescriptor;Ljava/net/InetAddress;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static drop4(Ljava/io/FileDescriptor;III)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # I
    .param p2, "interf"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop4(ZLjava/io/FileDescriptor;III)I

    .line 535
    return-void
.end method

.method static drop6(Ljava/io/FileDescriptor;[BI[B)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # [B
    .param p2, "index"    # I
    .param p3, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop6(ZLjava/io/FileDescriptor;[BI[B)I

    .line 578
    return-void
.end method

.method private static native getIntOption0(Ljava/io/FileDescriptor;ZII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native getInterface4(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native getInterface6(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static getLoopbackAddress(I)Ljava/net/InetSocketAddress;
    .registers 3
    .param p0, "port"    # I

    .prologue
    .line 199
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method static getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    .registers 5
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 179
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 180
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz p0, :cond_8

    if-nez v1, :cond_9

    .line 181
    :cond_8
    return-object p0

    .line 184
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_15} :catch_16

    .line 190
    :goto_15
    return-object p0

    .line 186
    :catch_16
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-static {v2}, Lsun/nio/ch/Net;->getLoopbackAddress(I)Ljava/net/InetSocketAddress;

    move-result-object p0

    goto :goto_15
.end method

.method static getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 2
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 194
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    .line 195
    :cond_b
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-static {v0}, Lsun/nio/ch/Net;->getLoopbackAddress(I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method static getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 11
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/net/ProtocolFamily;",
            "Ljava/net/SocketOption",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    .local p2, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    invoke-interface {p2}, Ljava/net/SocketOption;->type()Ljava/lang/Class;

    move-result-object v4

    .line 352
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljdk/net/SocketFlow;

    if-ne v4, v6, :cond_21

    .line 353
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 354
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_19

    .line 355
    new-instance v6, Ljdk/net/NetworkPermission;

    const-string/jumbo v7, "getOption.SO_FLOW_SLA"

    invoke-direct {v6, v7}, Ljdk/net/NetworkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 357
    :cond_19
    invoke-static {}, Ljdk/net/SocketFlow;->create()Ljdk/net/SocketFlow;

    move-result-object v0

    .line 358
    .local v0, "flow":Ljdk/net/SocketFlow;
    invoke-static {p0, v0}, Lsun/net/ExtendedOptionsImpl;->getFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    .line 359
    return-object v0

    .line 363
    .end local v0    # "flow":Ljdk/net/SocketFlow;
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :cond_21
    const-class v6, Ljava/lang/Integer;

    if-eq v4, v6, :cond_32

    const-class v6, Ljava/lang/Boolean;

    if-eq v4, v6, :cond_32

    .line 364
    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "Should not reach here"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 367
    :cond_32
    invoke-static {p2, p1}, Lsun/nio/ch/SocketOptionRegistry;->findOption(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)Lsun/nio/ch/OptionKey;

    move-result-object v1

    .line 368
    .local v1, "key":Lsun/nio/ch/OptionKey;
    if-nez v1, :cond_41

    .line 369
    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "Option not found"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 371
    :cond_41
    sget-object v6, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    if-ne p1, v6, :cond_5b

    const/4 v2, 0x1

    .line 372
    .local v2, "mayNeedConversion":Z
    :goto_46
    invoke-virtual {v1}, Lsun/nio/ch/OptionKey;->level()I

    move-result v6

    invoke-virtual {v1}, Lsun/nio/ch/OptionKey;->name()I

    move-result v7

    invoke-static {p0, v2, v6, v7}, Lsun/nio/ch/Net;->getIntOption0(Ljava/io/FileDescriptor;ZII)I

    move-result v5

    .line 374
    .local v5, "value":I
    const-class v6, Ljava/lang/Integer;

    if-ne v4, v6, :cond_5d

    .line 375
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    .line 371
    .end local v2    # "mayNeedConversion":Z
    .end local v5    # "value":I
    :cond_5b
    const/4 v2, 0x0

    .restart local v2    # "mayNeedConversion":Z
    goto :goto_46

    .line 377
    .restart local v5    # "value":I
    :cond_5d
    if-nez v5, :cond_62

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_61
    return-object v6

    :cond_62
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_61
.end method

.method static inet4AsInt(Ljava/net/InetAddress;)I
    .registers 5
    .param p0, "ia"    # Ljava/net/InetAddress;

    .prologue
    .line 226
    instance-of v2, p0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_2a

    .line 227
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 228
    .local v0, "addr":[B
    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v1, v2, 0xff

    .line 229
    .local v1, "address":I
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 230
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 231
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 232
    return v1

    .line 234
    .end local v0    # "addr":[B
    .end local v1    # "address":I
    :cond_2a
    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Should not reach here"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method static inet4FromInt(I)Ljava/net/InetAddress;
    .registers 5
    .param p0, "address"    # I

    .prologue
    .line 242
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 243
    .local v0, "addr":[B
    ushr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 244
    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 245
    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    .line 246
    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    .line 248
    :try_start_21
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_24
    .catch Ljava/net/UnknownHostException; {:try_start_21 .. :try_end_24} :catch_26

    move-result-object v2

    return-object v2

    .line 249
    :catch_26
    move-exception v1

    .line 250
    .local v1, "uhe":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Should not reach here"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method static inet6AsByteArray(Ljava/net/InetAddress;)[B
    .registers 5
    .param p0, "ia"    # Ljava/net/InetAddress;

    .prologue
    const/4 v3, -0x1

    .line 258
    instance-of v2, p0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_a

    .line 259
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    return-object v2

    .line 263
    :cond_a
    instance-of v2, p0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_3b

    .line 264
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 265
    .local v1, "ip4address":[B
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 266
    .local v0, "address":[B
    const/16 v2, 0xa

    aput-byte v3, v0, v2

    .line 267
    const/16 v2, 0xb

    aput-byte v3, v0, v2

    .line 268
    const/4 v2, 0x0

    aget-byte v2, v1, v2

    const/16 v3, 0xc

    aput-byte v2, v0, v3

    .line 269
    const/4 v2, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0xd

    aput-byte v2, v0, v3

    .line 270
    const/4 v2, 0x2

    aget-byte v2, v1, v2

    const/16 v3, 0xe

    aput-byte v2, v0, v3

    .line 271
    const/4 v2, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0xf

    aput-byte v2, v0, v3

    .line 272
    return-object v0

    .line 275
    .end local v0    # "address":[B
    .end local v1    # "ip4address":[B
    :cond_3b
    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Should not reach here"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private static native isExclusiveBindAvailable()I
.end method

.method public static isFastTcpLoopbackRequested()Z
    .registers 3

    .prologue
    .line 383
    new-instance v2, Lsun/nio/ch/Net$4;

    invoke-direct {v2}, Lsun/nio/ch/Net$4;-><init>()V

    .line 382
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 390
    .local v1, "loopbackProp":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 391
    const/4 v0, 0x1

    .line 395
    :goto_15
    return v0

    .line 393
    :cond_16
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .local v0, "enable":Z
    goto :goto_15
.end method

.method static isIPv6Available()Z
    .registers 1

    .prologue
    .line 67
    sget-boolean v0, Lsun/nio/ch/Net;->checkedIPv6:Z

    if-nez v0, :cond_d

    .line 68
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available0()Z

    move-result v0

    sput-boolean v0, Lsun/nio/ch/Net;->isIPv6Available:Z

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lsun/nio/ch/Net;->checkedIPv6:Z

    .line 71
    :cond_d
    sget-boolean v0, Lsun/nio/ch/Net;->isIPv6Available:Z

    return v0
.end method

.method private static native isIPv6Available0()Z
.end method

.method static join4(Ljava/io/FileDescriptor;III)I
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # I
    .param p2, "interf"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop4(ZLjava/io/FileDescriptor;III)I

    move-result v0

    return v0
.end method

.method static join6(Ljava/io/FileDescriptor;[BI[B)I
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # [B
    .param p2, "index"    # I
    .param p3, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->joinOrDrop6(ZLjava/io/FileDescriptor;[BI[B)I

    move-result v0

    return v0
.end method

.method private static native joinOrDrop4(ZLjava/io/FileDescriptor;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native joinOrDrop6(ZLjava/io/FileDescriptor;[BI[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native listen(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p0}, Lsun/nio/ch/Net;->localInetAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {p0}, Lsun/nio/ch/Net;->localPort(Ljava/io/FileDescriptor;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method private static native localInetAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native localPort(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native poll(Ljava/io/FileDescriptor;IJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native pollconnValue()S
.end method

.method static native pollerrValue()S
.end method

.method static native pollhupValue()S
.end method

.method static native pollinValue()S
.end method

.method static native pollnvalValue()S
.end method

.method static native polloutValue()S
.end method

.method static remoteAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p0}, Lsun/nio/ch/Net;->remoteInetAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {p0}, Lsun/nio/ch/Net;->remotePort(Ljava/io/FileDescriptor;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method private static native remoteInetAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native remotePort(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static serverSocket(Z)Ljava/io/FileDescriptor;
    .registers 4
    .param p0, "stream"    # Z

    .prologue
    .line 424
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v0

    sget-boolean v1, Lsun/nio/ch/Net;->fastLoopback:Z

    const/4 v2, 0x1

    invoke-static {v0, p0, v2, v1}, Lsun/nio/ch/Net;->socket0(ZZZZ)I

    move-result v0

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->newFD(I)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static native setIntOption0(Ljava/io/FileDescriptor;ZIIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setInterface4(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setInterface6(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 15
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "family"    # Ljava/net/ProtocolFamily;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/net/ProtocolFamily;",
            "Ljava/net/SocketOption",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    const v3, 0xffff

    const/16 v2, 0xff

    .line 284
    if-nez p3, :cond_10

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid option value"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_10
    invoke-interface {p2}, Ljava/net/SocketOption;->type()Ljava/lang/Class;

    move-result-object v10

    .line 290
    .local v10, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljdk/net/SocketFlow;

    if-ne v10, v0, :cond_2f

    .line 291
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v9

    .line 292
    .local v9, "sm":Ljava/lang/SecurityManager;
    if-eqz v9, :cond_29

    .line 293
    new-instance v0, Ljdk/net/NetworkPermission;

    const-string/jumbo v2, "setOption.SO_FLOW_SLA"

    invoke-direct {v0, v2}, Ljdk/net/NetworkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 295
    :cond_29
    check-cast p3, Ljdk/net/SocketFlow;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-static {p0, p3}, Lsun/net/ExtendedOptionsImpl;->setFlowOption(Ljava/io/FileDescriptor;Ljdk/net/SocketFlow;)V

    .line 296
    return-void

    .line 299
    .end local v9    # "sm":Ljava/lang/SecurityManager;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_2f
    const-class v0, Ljava/lang/Integer;

    if-eq v10, v0, :cond_40

    const-class v0, Ljava/lang/Boolean;

    if-eq v10, v0, :cond_40

    .line 300
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Should not reach here"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 303
    :cond_40
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-eq p2, v0, :cond_48

    .line 304
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p2, v0, :cond_5a

    :cond_48
    move-object v0, p3

    .line 306
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 307
    .local v7, "i":I
    if-gez v7, :cond_5a

    .line 308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid send/receive buffer size"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    .end local v7    # "i":I
    :cond_5a
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    if-ne p2, v0, :cond_72

    move-object v0, p3

    .line 311
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 312
    .restart local v7    # "i":I
    if-gez v7, :cond_6c

    .line 313
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 314
    :cond_6c
    if-le v7, v3, :cond_72

    .line 315
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 317
    .end local v7    # "i":I
    :cond_72
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p2, v0, :cond_8a

    move-object v0, p3

    .line 318
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 319
    .restart local v7    # "i":I
    if-ltz v7, :cond_81

    if-le v7, v2, :cond_8a

    .line 320
    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid IP_TOS value"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    .end local v7    # "i":I
    :cond_8a
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-ne p2, v0, :cond_a2

    move-object v0, p3

    .line 323
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 324
    .restart local v7    # "i":I
    if-ltz v7, :cond_99

    if-le v7, v2, :cond_a2

    .line 325
    :cond_99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid TTL/hop value"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    .end local v7    # "i":I
    :cond_a2
    invoke-static {p2, p1}, Lsun/nio/ch/SocketOptionRegistry;->findOption(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)Lsun/nio/ch/OptionKey;

    move-result-object v8

    .line 330
    .local v8, "key":Lsun/nio/ch/OptionKey;
    if-nez v8, :cond_b1

    .line 331
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Option not found"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 334
    :cond_b1
    const-class v0, Ljava/lang/Integer;

    if-ne v10, v0, :cond_d2

    .line 335
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 341
    .local v4, "arg":I
    :goto_bb
    sget-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    if-ne p1, v0, :cond_de

    const/4 v1, 0x1

    .line 342
    .local v1, "mayNeedConversion":Z
    :goto_c0
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    if-ne p1, v0, :cond_e0

    const/4 v5, 0x1

    .line 343
    .local v5, "isIPv6":Z
    :goto_c5
    invoke-virtual {v8}, Lsun/nio/ch/OptionKey;->level()I

    move-result v2

    invoke-virtual {v8}, Lsun/nio/ch/OptionKey;->name()I

    move-result v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lsun/nio/ch/Net;->setIntOption0(Ljava/io/FileDescriptor;ZIIIZ)V

    .line 344
    return-void

    .line 337
    .end local v1    # "mayNeedConversion":Z
    .end local v4    # "arg":I
    .end local v5    # "isIPv6":Z
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_d2
    check-cast p3, Ljava/lang/Boolean;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 338
    .local v6, "b":Z
    if-eqz v6, :cond_dc

    const/4 v4, 0x1

    .restart local v4    # "arg":I
    goto :goto_bb

    .end local v4    # "arg":I
    :cond_dc
    const/4 v4, 0x0

    .restart local v4    # "arg":I
    goto :goto_bb

    .line 341
    .end local v6    # "b":Z
    :cond_de
    const/4 v1, 0x0

    .restart local v1    # "mayNeedConversion":Z
    goto :goto_c0

    .line 342
    :cond_e0
    const/4 v5, 0x0

    .restart local v5    # "isIPv6":Z
    goto :goto_c5
.end method

.method static native shutdown(Ljava/io/FileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;
    .registers 5
    .param p0, "family"    # Ljava/net/ProtocolFamily;
    .param p1, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 419
    sget-object v1, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    if-eq p0, v1, :cond_17

    const/4 v0, 0x1

    .line 420
    .local v0, "preferIPv6":Z
    :goto_b
    sget-boolean v1, Lsun/nio/ch/Net;->fastLoopback:Z

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lsun/nio/ch/Net;->socket0(ZZZZ)I

    move-result v1

    invoke-static {v1}, Lsun/nio/ch/IOUtil;->newFD(I)Ljava/io/FileDescriptor;

    move-result-object v1

    return-object v1

    .line 419
    .end local v0    # "preferIPv6":Z
    :cond_17
    const/4 v0, 0x0

    .restart local v0    # "preferIPv6":Z
    goto :goto_b

    .line 418
    .end local v0    # "preferIPv6":Z
    :cond_19
    const/4 v0, 0x0

    .restart local v0    # "preferIPv6":Z
    goto :goto_b
.end method

.method static socket(Z)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    sget-object v0, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, p0}, Lsun/nio/ch/Net;->socket(Ljava/net/ProtocolFamily;Z)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private static native socket0(ZZZZ)I
.end method

.method static translateException(Ljava/lang/Exception;)V
    .registers 2
    .param p0, "x"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;Z)V

    .line 173
    return-void
.end method

.method static translateException(Ljava/lang/Exception;Z)V
    .registers 3
    .param p0, "x"    # Ljava/lang/Exception;
    .param p1, "unknownHostForUnresolved"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 158
    check-cast p0, Ljava/io/IOException;

    .end local p0    # "x":Ljava/lang/Exception;
    throw p0

    .line 161
    .restart local p0    # "x":Ljava/lang/Exception;
    :cond_7
    if-eqz p1, :cond_13

    .line 162
    instance-of v0, p0, Ljava/nio/channels/UnresolvedAddressException;

    .line 161
    if-eqz v0, :cond_13

    .line 164
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0}, Ljava/net/UnknownHostException;-><init>()V

    throw v0

    .line 166
    :cond_13
    invoke-static {p0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 167
    return-void
.end method

.method static translateToSocketException(Ljava/lang/Exception;)V
    .registers 4
    .param p0, "x"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 123
    instance-of v1, p0, Ljava/net/SocketException;

    if-eqz v1, :cond_7

    .line 124
    check-cast p0, Ljava/net/SocketException;

    .end local p0    # "x":Ljava/lang/Exception;
    throw p0

    .line 125
    .restart local p0    # "x":Ljava/lang/Exception;
    :cond_7
    move-object v0, p0

    .line 126
    .local v0, "nx":Ljava/lang/Exception;
    instance-of v1, p0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v1, :cond_20

    .line 127
    new-instance v0, Ljava/net/SocketException;

    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 142
    .restart local v0    # "nx":Ljava/lang/Exception;
    :cond_14
    :goto_14
    if-eq v0, p0, :cond_19

    .line 143
    invoke-virtual {v0, p0}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 145
    :cond_19
    instance-of v1, v0, Ljava/net/SocketException;

    if-eqz v1, :cond_6e

    .line 146
    check-cast v0, Ljava/net/SocketException;

    .end local v0    # "nx":Ljava/lang/Exception;
    throw v0

    .line 128
    .restart local v0    # "nx":Ljava/lang/Exception;
    :cond_20
    instance-of v1, p0, Ljava/nio/channels/NotYetConnectedException;

    if-eqz v1, :cond_2d

    .line 129
    new-instance v0, Ljava/net/SocketException;

    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_14

    .line 130
    :cond_2d
    instance-of v1, p0, Ljava/nio/channels/AlreadyBoundException;

    if-eqz v1, :cond_3a

    .line 131
    new-instance v0, Ljava/net/SocketException;

    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Already bound"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_14

    .line 132
    :cond_3a
    instance-of v1, p0, Ljava/nio/channels/NotYetBoundException;

    if-eqz v1, :cond_47

    .line 133
    new-instance v0, Ljava/net/SocketException;

    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Socket is not bound yet"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_14

    .line 134
    :cond_47
    instance-of v1, p0, Ljava/nio/channels/UnsupportedAddressTypeException;

    if-eqz v1, :cond_54

    .line 135
    new-instance v0, Ljava/net/SocketException;

    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Unsupported address type"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_14

    .line 136
    :cond_54
    instance-of v1, p0, Ljava/nio/channels/UnresolvedAddressException;

    if-eqz v1, :cond_61

    .line 137
    new-instance v0, Ljava/net/SocketException;

    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Unresolved address"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_14

    .line 138
    :cond_61
    instance-of v1, p0, Ljava/nio/channels/AlreadyConnectedException;

    if-eqz v1, :cond_14

    .line 140
    new-instance v0, Ljava/net/SocketException;

    .end local v0    # "nx":Ljava/lang/Exception;
    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "nx":Ljava/lang/Exception;
    goto :goto_14

    .line 147
    :cond_6e
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_75

    .line 148
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "nx":Ljava/lang/Exception;
    throw v0

    .line 150
    .restart local v0    # "nx":Ljava/lang/Exception;
    :cond_75
    new-instance v1, Ljava/lang/Error;

    const-string/jumbo v2, "Untranslated exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static unblock4(Ljava/io/FileDescriptor;III)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # I
    .param p2, "interf"    # I
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock4(ZLjava/io/FileDescriptor;III)I

    .line 556
    return-void
.end method

.method static unblock6(Ljava/io/FileDescriptor;[BI[B)V
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "group"    # [B
    .param p2, "index"    # I
    .param p3, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lsun/nio/ch/Net;->blockOrUnblock6(ZLjava/io/FileDescriptor;[BI[B)I

    .line 599
    return-void
.end method

.method static useExclusiveBind()Z
    .registers 1

    .prologue
    .line 78
    sget-boolean v0, Lsun/nio/ch/Net;->exclusiveBind:Z

    return v0
.end method

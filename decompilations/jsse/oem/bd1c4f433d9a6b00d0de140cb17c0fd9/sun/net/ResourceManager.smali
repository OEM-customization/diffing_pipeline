.class public Lsun/net/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static final DEFAULT_MAX_SOCKETS:I = 0x19

.field private static final maxSockets:I

.field private static final numSockets:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 57
    new-instance v3, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v4, "sun.net.maxDatagramSockets"

    invoke-direct {v3, v4}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 59
    .local v2, "prop":Ljava/lang/String;
    const/16 v0, 0x19

    .line 61
    .local v0, "defmax":I
    if-eqz v2, :cond_16

    .line 62
    :try_start_12
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_15} :catch_21

    move-result v0

    .line 65
    :cond_16
    :goto_16
    sput v0, Lsun/net/ResourceManager;->maxSockets:I

    .line 66
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v3, Lsun/net/ResourceManager;->numSockets:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    return-void

    .line 64
    :catch_21
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_16
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterUdpClose()V
    .registers 1

    .prologue
    .line 79
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 80
    sget-object v0, Lsun/net/ResourceManager;->numSockets:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 82
    :cond_b
    return-void
.end method

.method public static beforeUdpCreate()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 71
    sget-object v0, Lsun/net/ResourceManager;->numSockets:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    sget v1, Lsun/net/ResourceManager;->maxSockets:I

    if-le v0, v1, :cond_1e

    .line 72
    sget-object v0, Lsun/net/ResourceManager;->numSockets:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 73
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "maximum number of DatagramSockets reached"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1e
    return-void
.end method

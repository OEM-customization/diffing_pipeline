.class public Lcom/android/okhttp/internal/http/SBServiceAPI;
.super Ljava/lang/Object;
.source "SBServiceAPI.java"


# static fields
.field private static final blacklist CONNECTIVITY_SERVICE:Ljava/lang/String; = "sb_service"

.field public static final blacklist DEBUG_LEVEL_HIGH:I = 0x3

.field public static final blacklist DEBUG_LEVEL_LOW:I = 0x1

.field public static final blacklist DEBUG_LEVEL_MID:I = 0x2

.field private static final blacklist GET_IP_FROM_SERVICE:Z = true

.field private static final blacklist ICONNECTIVITY_MANAGER_STUB:Ljava/lang/String; = "com.samsung.android.smartbonding.ISmartBondingService$Stub"

.field private static final blacklist ICONNECTIVITY_MANAGER_STUB_AS_INTERFACE:Ljava/lang/String; = "asInterface"

.field private static final blacklist SERVICE_MANAGER:Ljava/lang/String; = "android.os.ServiceManager"

.field private static final blacklist SERVICE_MANAGER_METHOD_GET_SERVICE:Ljava/lang/String; = "getService"

.field private static blacklist TrafficStats:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static blacklist bGotTrafficStats:Z

.field private static blacklist bServiceGot:Z

.field private static blacklist sIConnectivityManager:Ljava/lang/Object;

.field private static blacklist sIConnectivityManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static blacklist sMethodCounter:I

.field private static blacklist sMethodNames:[Ljava/lang/reflect/Method;

.field private static blacklist sServiceManager:Ljava/lang/Object;

.field private static blacklist sServiceManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static blacklist setTag:Ljava/lang/reflect/Method;

.field private static blacklist setUid:Ljava/lang/reflect/Method;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->bServiceGot:Z

    .line 43
    const/4 v1, 0x0

    sput-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sServiceManagerClass:Ljava/lang/Class;

    .line 44
    sput-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sMethodNames:[Ljava/lang/reflect/Method;

    .line 45
    sput-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sServiceManager:Ljava/lang/Object;

    .line 46
    sput-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    .line 47
    sput-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    .line 48
    sput v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->sMethodCounter:I

    .line 773
    sput-boolean v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->bGotTrafficStats:Z

    .line 774
    sput-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->TrafficStats:Ljava/lang/Class;

    .line 775
    sput-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->setTag:Ljava/lang/reflect/Method;

    .line 776
    sput-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->setUid:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000()Ljava/lang/Class;
    .registers 1

    .line 15
    sget-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic blacklist access$100()Ljava/lang/Object;
    .registers 1

    .line 15
    sget-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    return-object v0
.end method

.method public static blacklist convertLongToByte(J[BII)V
    .registers 11
    .param p0, "l"    # J
    .param p2, "b"    # [B
    .param p3, "s"    # I
    .param p4, "e"    # I

    .line 817
    if-eqz p2, :cond_21

    array-length v0, p2

    if-lt v0, p4, :cond_21

    sub-int v0, p4, p3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    goto :goto_21

    .line 818
    :cond_c
    move v0, p3

    .local v0, "i":I
    :goto_d
    if-ge v0, p4, :cond_1e

    .line 819
    sub-int v2, v0, p3

    mul-int/2addr v2, v1

    shr-long v2, p0, v2

    .line 820
    .local v2, "tmp":J
    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    .line 821
    long-to-int v4, v2

    int-to-byte v4, v4

    aput-byte v4, p2, v0

    .line 818
    .end local v2    # "tmp":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 823
    .end local v0    # "i":I
    :cond_1e
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    .line 833
    return-void

    .line 817
    :cond_21
    :goto_21
    return-void
.end method

.method public static blacklist getAddrsByHost(JLjava/lang/String;IZ)[Ljava/net/InetAddress;
    .registers 16
    .param p0, "threadID"    # J
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "ipStyle"    # I
    .param p4, "isHTTPS"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 205
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    .line 206
    .local v0, "timeOut":J
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 208
    .local v2, "retAddrs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/net/InetAddress;>;"
    if-nez p3, :cond_1d

    if-nez p4, :cond_1d

    .line 210
    new-instance v3, Lcom/android/okhttp/internal/http/SBServiceAPI$1;

    invoke-direct {v3, p2, v2}, Lcom/android/okhttp/internal/http/SBServiceAPI$1;-><init>(Ljava/lang/String;Ljava/util/LinkedList;)V

    .line 231
    .local v3, "r2":Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 232
    .local v4, "t2":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 236
    .end local v3    # "r2":Ljava/lang/Runnable;
    .end local v4    # "t2":Ljava/lang/Thread;
    :cond_1d
    new-instance v3, Lcom/android/okhttp/internal/http/SBServiceAPI$2;

    move-object v4, v3

    move-wide v5, p0

    move-object v7, p2

    move-wide v8, v0

    move-object v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/okhttp/internal/http/SBServiceAPI$2;-><init>(JLjava/lang/String;JLjava/util/LinkedList;)V

    .line 297
    .local v3, "r1":Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 298
    .local v4, "t1":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 300
    :goto_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-gez v5, :cond_75

    .line 301
    monitor-enter v2
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_95

    .line 302
    :try_start_38
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_54

    sget-boolean v5, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v5, :cond_54

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SBServiceAPI: current result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 303
    :cond_54
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_68

    .line 304
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/net/InetAddress;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/net/InetAddress;

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_38 .. :try_end_67} :catchall_72

    return-object v5

    .line 307
    :cond_68
    const-wide/16 v5, 0x3e8

    :try_start_6a
    invoke-virtual {v2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    .line 309
    :goto_6d
    goto :goto_70

    :catchall_6e
    move-exception v5

    goto :goto_6d

    .line 311
    :goto_70
    :try_start_70
    monitor-exit v2

    goto :goto_2f

    :catchall_72
    move-exception v5

    monitor-exit v2
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_72

    .end local p0    # "threadID":J
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "ipStyle":I
    .end local p4    # "isHTTPS":Z
    :try_start_74
    throw v5

    .line 315
    .restart local p0    # "threadID":J
    .restart local p2    # "host":Ljava/lang/String;
    .restart local p3    # "ipStyle":I
    .restart local p4    # "isHTTPS":Z
    :cond_75
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_7e

    const-string v5, "SBServiceAPI: responseGetAllByName time out"

    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 316
    :cond_7e
    new-instance v5, Ljava/net/UnknownHostException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot resolve host "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .end local p0    # "threadID":J
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "ipStyle":I
    .end local p4    # "isHTTPS":Z
    throw v5
    :try_end_95
    .catchall {:try_start_74 .. :try_end_95} :catchall_95

    .line 318
    .end local v0    # "timeOut":J
    .end local v2    # "retAddrs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/net/InetAddress;>;"
    .end local v3    # "r1":Ljava/lang/Runnable;
    .end local v4    # "t1":Ljava/lang/Thread;
    .restart local p0    # "threadID":J
    .restart local p2    # "host":Ljava/lang/String;
    .restart local p3    # "ipStyle":I
    .restart local p4    # "isHTTPS":Z
    :catchall_95
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_9d

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 320
    :cond_9d
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot resolve host "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getDebugLevel()I
    .registers 10

    .line 742
    const-string v0, "false"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 743
    .local v2, "sp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "get"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 750
    .local v3, "getMethod":Ljava/lang/reflect/Method;
    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "ro.debug_level"

    aput-object v6, v5, v7

    aput-object v0, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 751
    .local v5, "ret":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "ro.boot.debug_level"

    aput-object v9, v8, v7

    aput-object v0, v8, v1

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 753
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDebugLevel "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 755
    const-string v0, "0x4948"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 756
    const/4 v0, 0x3

    return v0

    .line 757
    :cond_5d
    const-string v0, "0x494d"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 758
    return v4

    .line 759
    :cond_66
    const-string v0, "0x4f4c"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_70

    if-eqz v0, :cond_6f

    .line 760
    return v1

    .line 762
    :cond_6f
    return v1

    .line 766
    .end local v2    # "sp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getMethod":Ljava/lang/reflect/Method;
    .end local v5    # "ret":Ljava/lang/String;
    :catchall_70
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 768
    return v1
.end method

.method public static blacklist getFasterInterface()I
    .registers 6

    .line 407
    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {v0}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getSmartBondingData(I)[J

    move-result-object v0

    .line 408
    .local v0, "data":[J
    if-eqz v0, :cond_17

    array-length v2, v0

    if-nez v2, :cond_c

    goto :goto_17

    .line 412
    :cond_c
    aget-wide v2, v0, v1
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_18

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x1

    .line 413
    .local v1, "i":I
    :goto_16
    return v1

    .line 409
    .end local v1    # "i":I
    :cond_17
    :goto_17
    return v1

    .line 416
    .end local v0    # "data":[J
    :catchall_18
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_20

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 418
    :cond_20
    return v1
.end method

.method public static blacklist getHttpLogEnabled()Z
    .registers 4

    .line 633
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 634
    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v2, "getHttpLogEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 636
    .local v1, "getHttpLogEnabled":Ljava/lang/reflect/Method;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_17

    const-string v2, "SBServiceAPI: getHttpLogEnabled()"

    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 637
    :cond_17
    sget-object v2, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_26

    return v0

    .line 639
    .end local v1    # "getHttpLogEnabled":Ljava/lang/reflect/Method;
    :catchall_26
    move-exception v1

    .line 640
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_2e

    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 641
    :cond_2e
    return v0
.end method

.method public static blacklist getHttpProxy(I)[Ljava/lang/String;
    .registers 10
    .param p0, "netType"    # I

    .line 598
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 599
    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v2, "getProxyInfo"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 600
    .local v1, "getProxyInfo":Ljava/lang/reflect/Method;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBServiceAPI: getProxyInfo(netType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 601
    :cond_30
    sget-object v2, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 602
    .local v2, "ret":[Ljava/lang/String;
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_81

    .line 603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SBServiceAPI: getProxyInfo result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_53

    const-string v5, "NULL"

    goto :goto_58

    :cond_53
    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 604
    if-eqz v2, :cond_81

    .line 605
    array-length v4, v2

    move v5, v0

    :goto_66
    if-ge v5, v4, :cond_81

    aget-object v6, v2, v5

    .line 606
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SBServiceAPI: getProxyInfo result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 605
    .end local v6    # "s":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    .line 611
    :cond_81
    if-eqz v2, :cond_91

    array-length v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_91

    aget-object v4, v2, v0

    if-eqz v4, :cond_91

    aget-object v3, v2, v3

    if-nez v3, :cond_90

    goto :goto_91

    .line 615
    :cond_90
    return-object v2

    .line 612
    :cond_91
    :goto_91
    new-array v0, v0, [Ljava/lang/String;
    :try_end_93
    .catchall {:try_start_1 .. :try_end_93} :catchall_94

    return-object v0

    .line 618
    .end local v1    # "getProxyInfo":Ljava/lang/reflect/Method;
    .end local v2    # "ret":[Ljava/lang/String;
    :catchall_94
    move-exception v1

    .line 619
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_9c

    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 620
    :cond_9c
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getNBEnabled()Z
    .registers 4

    .line 463
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 464
    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v2, "getSBEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 465
    .local v1, "getSBEnabled":Ljava/lang/reflect/Method;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_17

    const-string v2, "SBServiceAPI: getSBEnabled("

    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 466
    :cond_17
    sget-object v2, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_26

    return v0

    .line 468
    .end local v1    # "getSBEnabled":Ljava/lang/reflect/Method;
    :catchall_26
    move-exception v1

    .line 469
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_2e

    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 470
    :cond_2e
    return v0
.end method

.method public static blacklist getSBEnabledDirectByIP(Lcom/android/okhttp/internal/io/RealConnection;Lcom/android/okhttp/internal/http/MultiratLog;)I
    .registers 3
    .param p0, "connection"    # Lcom/android/okhttp/internal/io/RealConnection;
    .param p1, "logger"    # Lcom/android/okhttp/internal/http/MultiratLog;

    .line 53
    invoke-virtual {p0}, Lcom/android/okhttp/internal/io/RealConnection;->bBothInfAvail()I

    move-result v0

    return v0
.end method

.method public static blacklist getSBInterface(II)Ljava/net/InetAddress;
    .registers 3
    .param p0, "netType"    # I
    .param p1, "IPver"    # I

    .line 118
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getSBInterfaceFromSBServiceEx(II)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSBInterface(IILjava/lang/String;)Ljava/net/InetAddress;
    .registers 4
    .param p0, "netType"    # I
    .param p1, "IPver"    # I
    .param p2, "trueLocalAddress"    # Ljava/lang/String;

    .line 125
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getSBInterfaceFromSBServiceForTrueAddress(IILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getSBInterfaceFromSBService(I)Ljava/net/InetAddress;
    .registers 8
    .param p0, "netType"    # I

    .line 136
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 138
    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v2, "getSBInterface"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 140
    .local v1, "getSBInterface":Ljava/lang/reflect/Method;
    sget-object v2, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    .local v2, "ipAddress":Ljava/lang/String;
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBServiceAPI: getSBInterface + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 142
    :cond_3c
    if-eqz v2, :cond_43

    .line 143
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_44

    return-object v0

    .line 145
    :cond_43
    return-object v0

    .line 148
    .end local v1    # "getSBInterface":Ljava/lang/reflect/Method;
    .end local v2    # "ipAddress":Ljava/lang/String;
    :catchall_44
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_4c

    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 150
    :cond_4c
    return-object v0
.end method

.method private static blacklist getSBInterfaceFromSBServiceEx(II)Ljava/net/InetAddress;
    .registers 9
    .param p0, "netType"    # I
    .param p1, "IPver"    # I

    .line 161
    :try_start_0
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 163
    sget-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v1, "getSBInterfaceEx"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 165
    .local v0, "getSBInterface":Ljava/lang/reflect/Method;
    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    .local v1, "ipAddress":Ljava/lang/String;
    if-eqz v1, :cond_35

    .line 167
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_37

    return-object v2

    .line 169
    :cond_35
    const/4 v2, 0x0

    return-object v2

    .line 172
    .end local v0    # "getSBInterface":Ljava/lang/reflect/Method;
    .end local v1    # "ipAddress":Ljava/lang/String;
    :catchall_37
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_3f

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 174
    :cond_3f
    invoke-static {p0}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getSBInterfaceFromSBService(I)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getSBInterfaceFromSBServiceForTrueAddress(IILjava/lang/String;)Ljava/net/InetAddress;
    .registers 11
    .param p0, "netType"    # I
    .param p1, "IPver"    # I
    .param p2, "trueLocalAddress"    # Ljava/lang/String;

    .line 180
    :try_start_0
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 182
    sget-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v1, "getSBInterfaceExForTrueAddress"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 184
    .local v0, "getSBInterface":Ljava/lang/reflect/Method;
    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p2, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    .local v1, "ipAddress":Ljava/lang/String;
    if-eqz v1, :cond_3c

    .line 186
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3e

    return-object v2

    .line 188
    :cond_3c
    const/4 v2, 0x0

    return-object v2

    .line 191
    .end local v0    # "getSBInterface":Ljava/lang/reflect/Method;
    .end local v1    # "ipAddress":Ljava/lang/String;
    :catchall_3e
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_46

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 193
    :cond_46
    invoke-static {p0}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getSBInterfaceFromSBService(I)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getSBInterfaceIPDirect(II)Ljava/net/InetAddress;
    .registers 11
    .param p0, "netType"    # I
    .param p1, "IPver"    # I

    .line 83
    :try_start_0
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSBInterfaceIPDirect for net (0 = wlan0, 1 = rmnet0) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 85
    :cond_18
    const/4 v0, 0x1

    if-nez p0, :cond_1e

    .line 86
    const-string v1, "wlan0"

    .local v1, "iName":Ljava/lang/String;
    goto :goto_22

    .line 88
    .end local v1    # "iName":Ljava/lang/String;
    :cond_1e
    if-ne p0, v0, :cond_a1

    .line 89
    const-string v1, "rmnet0"

    .line 94
    .restart local v1    # "iName":Ljava/lang/String;
    :goto_22
    const/4 v2, 0x0

    .line 95
    .local v2, "ret":Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_27
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 96
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 97
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 98
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v5

    .local v5, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_47
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 99
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 100
    .local v6, "inetAddress":Ljava/net/InetAddress;
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_6b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checking IP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 101
    :cond_6b
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_9e

    if-nez p1, :cond_77

    instance-of v7, v6, Ljava/net/Inet4Address;

    if-nez v7, :cond_7d

    :cond_77
    if-ne p1, v0, :cond_9e

    instance-of v7, v6, Ljava/net/Inet6Address;

    if-eqz v7, :cond_9e

    .line 104
    :cond_7d
    move-object v2, v6

    .line 105
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_9e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get local ip "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for interface "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V
    :try_end_9e
    .catchall {:try_start_0 .. :try_end_9e} :catchall_a3

    .line 107
    .end local v6    # "inetAddress":Ljava/net/InetAddress;
    :cond_9e
    goto :goto_47

    .line 109
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_9f
    goto :goto_27

    .line 110
    .end local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_a0
    return-object v2

    .line 92
    .end local v1    # "iName":Ljava/lang/String;
    .end local v2    # "ret":Ljava/net/InetAddress;
    :cond_a1
    const/4 v0, 0x0

    return-object v0

    .line 111
    :catchall_a3
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_ab

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 113
    :cond_ab
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getSBInterfaceFromSBServiceEx(II)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSBInterfaces()[Ljava/lang/String;
    .registers 4

    .line 443
    :try_start_0
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 444
    sget-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v1, "getSBInterfaces"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 446
    .local v0, "getSBInterfaces":Ljava/lang/reflect/Method;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_17

    const-string v1, "SBServiceAPI: getSBInterfaces"

    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 447
    :cond_17
    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-object v1

    .line 449
    .end local v0    # "getSBInterfaces":Ljava/lang/reflect/Method;
    :catchall_22
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_2a

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 451
    :cond_2a
    const/4 v1, 0x0

    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSBUsageStatus(J)I
    .registers 8
    .param p0, "threadID"    # J

    .line 542
    :try_start_0
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 543
    sget-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v1, "getSBUsageStatus"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 545
    .local v0, "getSBUsageStatus":Ljava/lang/reflect/Method;
    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return v1

    .line 547
    .end local v0    # "getSBUsageStatus":Ljava/lang/reflect/Method;
    :catchall_28
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_30

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 549
    :cond_30
    const/4 v1, 0x2

    return v1
.end method

.method public static blacklist getService()Z
    .registers 8

    .line 651
    :try_start_0
    sget-boolean v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->bServiceGot:Z

    if-nez v0, :cond_8b

    .line 653
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->sServiceManagerClass:Ljava/lang/Class;

    .line 655
    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 657
    .local v0, "getServiceMethod":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "sb_service"

    aput-object v3, v1, v5

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sServiceManager:Ljava/lang/Object;

    .line 661
    const-string v1, "com.samsung.android.smartbonding.ISmartBondingService$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 662
    .local v1, "stubClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/android/okhttp/internal/http/SBServiceAPI;->sMethodNames:[Ljava/lang/reflect/Method;

    .line 663
    sput v5, Lcom/android/okhttp/internal/http/SBServiceAPI;->sMethodCounter:I

    .line 665
    :goto_35
    sget v4, Lcom/android/okhttp/internal/http/SBServiceAPI;->sMethodCounter:I

    sget-object v6, Lcom/android/okhttp/internal/http/SBServiceAPI;->sMethodNames:[Ljava/lang/reflect/Method;

    array-length v6, v6

    if-ge v4, v6, :cond_55

    .line 667
    sget-object v4, Lcom/android/okhttp/internal/http/SBServiceAPI;->sMethodNames:[Ljava/lang/reflect/Method;

    sget v6, Lcom/android/okhttp/internal/http/SBServiceAPI;->sMethodCounter:I

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "asInterface"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 668
    goto :goto_55

    .line 665
    :cond_4f
    sget v4, Lcom/android/okhttp/internal/http/SBServiceAPI;->sMethodCounter:I

    add-int/2addr v4, v2

    sput v4, Lcom/android/okhttp/internal/http/SBServiceAPI;->sMethodCounter:I

    goto :goto_35

    .line 672
    :cond_55
    :goto_55
    sget-object v4, Lcom/android/okhttp/internal/http/SBServiceAPI;->sMethodNames:[Ljava/lang/reflect/Method;

    sget v6, Lcom/android/okhttp/internal/http/SBServiceAPI;->sMethodCounter:I

    aget-object v4, v4, v6

    new-array v6, v2, [Ljava/lang/Object;

    sget-object v7, Lcom/android/okhttp/internal/http/SBServiceAPI;->sServiceManager:Ljava/lang/Object;

    aput-object v7, v6, v5

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    .line 674
    if-eqz v3, :cond_6f

    .line 675
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    .line 678
    :cond_6f
    sput-boolean v2, Lcom/android/okhttp/internal/http/SBServiceAPI;->bServiceGot:Z

    .line 679
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_8b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBServiceAPI: getService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/okhttp/internal/http/SBServiceAPI;->sServiceManagerClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 681
    .end local v0    # "getServiceMethod":Ljava/lang/reflect/Method;
    .end local v1    # "stubClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8b
    sget-boolean v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->bServiceGot:Z
    :try_end_8d
    .catchall {:try_start_0 .. :try_end_8d} :catchall_8e

    return v0

    .line 683
    :catchall_8e
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_96

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 686
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_96
    sget-boolean v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->bServiceGot:Z

    return v0
.end method

.method private static blacklist getSmartBondingData(I)[J
    .registers 7
    .param p0, "pid"    # I

    .line 387
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 389
    sget-object v2, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v3, "getSmartBondingData"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 391
    .local v2, "getSmartBondingData":Ljava/lang/reflect/Method;
    sget-object v3, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 392
    .local v3, "ret":[J
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_2c

    const-string v4, "SBServiceAPI: getSmartBondingData"

    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_2d

    .line 393
    :cond_2c
    return-object v3

    .line 395
    .end local v2    # "getSmartBondingData":Ljava/lang/reflect/Method;
    .end local v3    # "ret":[J
    :catchall_2d
    move-exception v2

    .line 396
    .local v2, "e":Ljava/lang/Throwable;
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_35

    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 397
    :cond_35
    new-array v1, v1, [J

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v0

    return-object v1
.end method

.method public static blacklist getSpeedRatio()[J
    .registers 3

    .line 427
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_16

    .line 429
    .local v0, "data":[J
    const/4 v1, -0x1

    :try_start_7
    invoke-static {v1}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getSmartBondingData(I)[J

    move-result-object v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_d

    move-object v0, v1

    .line 433
    goto :goto_15

    .line 431
    :catchall_d
    move-exception v1

    .line 432
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_15

    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 434
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_15
    :goto_15
    return-object v0

    :array_16
    .array-data 8
        0x1
        0x1
    .end array-data
.end method

.method private static blacklist getTrafficStats()V
    .registers 6

    .line 779
    sget-boolean v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->bGotTrafficStats:Z

    if-nez v0, :cond_37

    .line 781
    :try_start_4
    const-string v0, "android.net.TrafficStats"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->TrafficStats:Ljava/lang/Class;

    .line 782
    const-string v1, "setThreadStatsTag"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->setTag:Ljava/lang/reflect/Method;

    .line 783
    sget-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->TrafficStats:Ljava/lang/Class;

    const-string v1, "setThreadStatsUid"

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->setUid:Ljava/lang/reflect/Method;

    .line 784
    sput-boolean v2, Lcom/android/okhttp/internal/http/SBServiceAPI;->bGotTrafficStats:Z
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_2f

    .line 788
    goto :goto_37

    .line 786
    :catchall_2f
    move-exception v0

    .line 787
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_37

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 790
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_37
    :goto_37
    return-void
.end method

.method public static blacklist isSBSettingEnabled()Z
    .registers 7

    .line 708
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 709
    .local v1, "sp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 710
    .local v2, "getMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "persist.sys.sb.setting.enabled"

    aput-object v5, v3, v0

    const-string v5, "false"

    aput-object v5, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 711
    .local v3, "ret":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSBSettingEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 712
    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_48

    if-eqz v4, :cond_47

    .line 713
    return v6

    .line 715
    :cond_47
    return v0

    .line 717
    .end local v1    # "sp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getMethod":Ljava/lang/reflect/Method;
    .end local v3    # "ret":Ljava/lang/String;
    :catchall_48
    move-exception v1

    .line 718
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 719
    return v0
.end method

.method public static blacklist isSKTBuild()Z
    .registers 7

    .line 725
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 726
    .local v1, "sp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 727
    .local v2, "getMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "ro.csc.sales_code"

    aput-object v5, v3, v0

    const-string v5, "false"

    aput-object v5, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 728
    .local v3, "ret":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSKTBuild "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 729
    const-string v4, "SKC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_48

    if-eqz v4, :cond_47

    .line 730
    return v6

    .line 732
    :cond_47
    return v0

    .line 734
    .end local v1    # "sp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getMethod":Ljava/lang/reflect/Method;
    .end local v3    # "ret":Ljava/lang/String;
    :catchall_48
    move-exception v1

    .line 735
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 736
    return v0
.end method

.method public static blacklist isShipBuild()Z
    .registers 7

    .line 691
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 692
    .local v1, "sp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 693
    .local v2, "getMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "ro.product_ship"

    aput-object v5, v3, v0

    const-string v5, "false"

    aput-object v5, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 694
    .local v3, "ret":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isShipBuild "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 695
    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_48

    if-eqz v4, :cond_47

    .line 696
    return v6

    .line 698
    :cond_47
    return v0

    .line 700
    .end local v1    # "sp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getMethod":Ljava/lang/reflect/Method;
    .end local v3    # "ret":Ljava/lang/String;
    :catchall_48
    move-exception v1

    .line 701
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 702
    return v0
.end method

.method public static blacklist reportSBUsage(J[J)V
    .registers 10
    .param p0, "threadID"    # J
    .param p2, "data"    # [J

    .line 358
    :try_start_0
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 361
    sget-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v1, "reportSBUsage"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, [J

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 363
    .local v0, "reportSBUsage":Ljava/lang/reflect/Method;
    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_60

    .line 365
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "SBServiceAPI: reportSBUsage"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, "sBuf":Ljava/lang/StringBuffer;
    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, ",["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_44
    array-length v3, p2

    if-ge v2, v3, :cond_54

    .line 369
    aget-wide v3, p2, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 371
    .end local v2    # "i":I
    :cond_54
    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_0 .. :try_end_60} :catchall_61

    .line 377
    .end local v0    # "reportSBUsage":Ljava/lang/reflect/Method;
    .end local v1    # "sBuf":Ljava/lang/StringBuffer;
    :cond_60
    goto :goto_69

    .line 375
    :catchall_61
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_69

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 378
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_69
    :goto_69
    return-void
.end method

.method public static blacklist setThreadStatsTag(I)V
    .registers 6
    .param p0, "tag"    # I

    .line 794
    :try_start_0
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getTrafficStats()V

    .line 795
    sget-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->setTag:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    .line 796
    sget-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->setTag:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    :cond_17
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setThreadStatsTag to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->setTag:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3a

    .line 801
    :cond_39
    goto :goto_42

    .line 799
    :catchall_3a
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_42

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 802
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_42
    :goto_42
    return-void
.end method

.method public static blacklist setThreadStatsUid(I)V
    .registers 6
    .param p0, "uid"    # I

    .line 806
    :try_start_0
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getTrafficStats()V

    .line 807
    sget-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->setUid:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_17

    .line 808
    sget-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->setUid:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    :cond_17
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setThreadStatsTag to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->setUid:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3a

    .line 813
    :cond_39
    goto :goto_42

    .line 811
    :catchall_3a
    move-exception v0

    .line 812
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_42

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 814
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_42
    :goto_42
    return-void
.end method

.method public static blacklist startSBDirectUsage(JJJLjava/lang/String;Ljava/lang/String;)Z
    .registers 23
    .param p0, "threadID"    # J
    .param p2, "filesize"    # J
    .param p4, "range"    # J
    .param p6, "url"    # Ljava/lang/String;
    .param p7, "ori_url"    # Ljava/lang/String;

    .line 522
    move-object/from16 v1, p6

    move-object/from16 v2, p7

    const-string v0, ", "

    const/4 v3, 0x0

    :try_start_7
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 523
    sget-object v4, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v5, "startSBUsage"

    const/4 v6, 0x5

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v8, v7, v10

    const-class v8, Ljava/lang/String;

    const/4 v11, 0x3

    aput-object v8, v7, v11

    const-class v8, Ljava/lang/String;

    const/4 v12, 0x4

    aput-object v8, v7, v12

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 525
    .local v4, "startSBUsage":Ljava/lang/reflect/Method;
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_62

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SBServiceAPI: startSBUsage("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_8d

    move-wide v7, p0

    :try_start_3c
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p2

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_60

    move-wide/from16 v12, p4

    :try_start_4c
    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    goto :goto_65

    .line 528
    .end local v4    # "startSBUsage":Ljava/lang/reflect/Method;
    :catchall_60
    move-exception v0

    goto :goto_8f

    .line 525
    .restart local v4    # "startSBUsage":Ljava/lang/reflect/Method;
    :cond_62
    move-wide v7, p0

    move-wide/from16 v12, p4

    .line 526
    :goto_65
    sget-object v0, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    aput-object v1, v5, v11

    const/4 v6, 0x4

    aput-object v2, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_8a
    .catchall {:try_start_4c .. :try_end_8a} :catchall_8b

    return v0

    .line 528
    .end local v4    # "startSBUsage":Ljava/lang/reflect/Method;
    :catchall_8b
    move-exception v0

    goto :goto_91

    :catchall_8d
    move-exception v0

    move-wide v7, p0

    :goto_8f
    move-wide/from16 v12, p4

    .line 529
    .local v0, "e":Ljava/lang/Throwable;
    :goto_91
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_98

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 530
    :cond_98
    return v3
.end method

.method public static blacklist startSBUsage(JJ)Z
    .registers 11
    .param p0, "threadID"    # J
    .param p2, "filesize"    # J

    .line 482
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 483
    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v2, "startSBUsage"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 485
    .local v1, "startSBUsage":Ljava/lang/reflect/Method;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBServiceAPI: startSBUsage("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 486
    :cond_38
    sget-object v2, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_53

    return v0

    .line 488
    .end local v1    # "startSBUsage":Ljava/lang/reflect/Method;
    :catchall_53
    move-exception v1

    .line 489
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_5b

    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 490
    :cond_5b
    return v0
.end method

.method public static blacklist startSBUsageURL(JJLjava/lang/String;)Z
    .registers 13
    .param p0, "threadID"    # J
    .param p2, "filesize"    # J
    .param p4, "url"    # Ljava/lang/String;

    .line 502
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 503
    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v2, "startSBUsageURL"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 505
    .local v1, "startSBUsageURL":Ljava/lang/reflect/Method;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBServiceAPI: startSBUsageURL("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", ???"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 506
    :cond_42
    sget-object v2, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p4, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_5e
    .catchall {:try_start_1 .. :try_end_5e} :catchall_5f

    return v0

    .line 508
    .end local v1    # "startSBUsageURL":Ljava/lang/reflect/Method;
    :catchall_5f
    move-exception v1

    .line 509
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_67

    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 510
    :cond_67
    return v0
.end method

.method public static blacklist stopSBUsage(J)I
    .registers 8
    .param p0, "threadID"    # J

    .line 560
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 561
    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v2, "stopSBUsage"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 563
    .local v1, "stopSBUsage":Ljava/lang/reflect/Method;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBServiceAPI: stopSBUsage(threadID = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 564
    :cond_30
    sget-object v2, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_45

    return v0

    .line 566
    .end local v1    # "stopSBUsage":Ljava/lang/reflect/Method;
    :catchall_45
    move-exception v1

    .line 567
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_4d

    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 568
    :cond_4d
    return v0
.end method

.method public static blacklist stopSBUsageWithReason(JI)I
    .registers 10
    .param p0, "threadID"    # J
    .param p2, "errorNo"    # I

    .line 579
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 580
    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v2, "stopSBUsageWithReason"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 582
    .local v1, "stopSBUsageWithReason":Ljava/lang/reflect/Method;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBServiceAPI: stopSBUsageWithReason(threadID = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", errorNo = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 583
    :cond_3d
    sget-object v2, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_58

    return v0

    .line 585
    .end local v1    # "stopSBUsageWithReason":Ljava/lang/reflect/Method;
    :catchall_58
    move-exception v1

    .line 586
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_60

    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 587
    :cond_60
    return v0
.end method

.method public static blacklist submitMultiSocketData([J[J)V
    .registers 9
    .param p0, "lens"    # [J
    .param p1, "times"    # [J

    .line 332
    const-class v0, [J

    :try_start_2
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 335
    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;

    const-string v2, "submitMultiSocketData"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 337
    .local v0, "submitData":Ljava/lang/reflect/Method;
    sget-object v1, Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_2a

    const-string v1, "SBServiceAPI: submitMultiSocketData"

    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_2b

    .line 342
    .end local v0    # "submitData":Ljava/lang/reflect/Method;
    :cond_2a
    goto :goto_33

    .line 340
    :catchall_2b
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_33

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 343
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_33
    :goto_33
    return-void
.end method

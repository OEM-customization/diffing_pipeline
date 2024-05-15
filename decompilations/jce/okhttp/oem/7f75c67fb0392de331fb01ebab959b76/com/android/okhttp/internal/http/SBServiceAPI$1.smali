.class Lcom/android/okhttp/internal/http/SBServiceAPI$1;
.super Ljava/lang/Object;
.source "SBServiceAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/http/SBServiceAPI;->getAddrsByHost(JLjava/lang/String;IZ)[Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$host:Ljava/lang/String;

.field final synthetic blacklist val$retAddrs:Ljava/util/LinkedList;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/util/LinkedList;)V
    .registers 3

    .line 210
    iput-object p1, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$1;->val$host:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$1;->val$retAddrs:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .registers 6

    .line 213
    :try_start_0
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_9

    const-string v0, "SBServiceAPI: start run2: get from Default"

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 214
    :cond_9
    iget-object v0, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$1;->val$host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 215
    .local v0, "addrs2":[Ljava/net/InetAddress;
    if-eqz v0, :cond_57

    array-length v1, v0

    if-lez v1, :cond_57

    .line 216
    iget-object v1, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$1;->val$retAddrs:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_58

    .line 217
    :try_start_17
    iget-object v2, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$1;->val$retAddrs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_21

    monitor-exit v1

    return-void

    .line 218
    :cond_21
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    array-length v3, v0

    if-ge v2, v3, :cond_4d

    .line 219
    iget-object v3, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$1;->val$retAddrs:Ljava/util/LinkedList;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_4a

    sget-boolean v3, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v3, :cond_4a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBServiceAPI: InetAddress.getAllByName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 218
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 222
    .end local v2    # "i":I
    :cond_4d
    iget-object v2, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$1;->val$retAddrs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 223
    monitor-exit v1

    goto :goto_57

    :catchall_54
    move-exception v2

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_17 .. :try_end_56} :catchall_54

    .end local p0    # "this":Lcom/android/okhttp/internal/http/SBServiceAPI$1;
    :try_start_56
    throw v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_58

    .line 228
    .end local v0    # "addrs2":[Ljava/net/InetAddress;
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/SBServiceAPI$1;
    :cond_57
    :goto_57
    goto :goto_60

    .line 226
    :catchall_58
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_60

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 229
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_60
    :goto_60
    return-void
.end method

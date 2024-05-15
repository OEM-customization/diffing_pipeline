.class Lcom/android/okhttp/internal/http/SBServiceAPI$2;
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

.field final synthetic blacklist val$threadID:J

.field final synthetic blacklist val$timeOut:J


# direct methods
.method constructor blacklist <init>(JLjava/lang/String;JLjava/util/LinkedList;)V
    .registers 7

    .line 236
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$2;->val$threadID:J

    iput-object p3, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$2;->val$host:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$2;->val$timeOut:J

    iput-object p6, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$2;->val$retAddrs:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .registers 9

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "responseGetAllByName":Ljava/lang/reflect/Method;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_a

    const-string v1, "SBServiceAPI: start run1: get from Service: "

    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 241
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getService()Z

    .line 242
    # getter for: Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->access$000()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "requestGetAllByName"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 243
    .local v1, "requestGetAllByName":Ljava/lang/reflect/Method;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_42

    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v2, :cond_42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBServiceAPI: requestGetAllByName "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$2;->val$threadID:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 244
    :cond_42
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_6a

    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v2, :cond_6a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBServiceAPI: requestGetAllByName "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$2;->val$threadID:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$2;->val$host:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    .line 245
    :cond_6a
    # getter for: Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->access$100()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$2;->val$threadID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$2;->val$host:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    # getter for: Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManagerClass:Ljava/lang/Class;
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "responseGetAllByName"

    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_8f
    .catchall {:try_start_a .. :try_end_8f} :catchall_13a

    move-object v0, v2

    .line 251
    .end local v1    # "requestGetAllByName":Ljava/lang/reflect/Method;
    nop

    .line 252
    if-nez v0, :cond_94

    .line 253
    return-void

    .line 255
    :cond_94
    :goto_94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$2;->val$timeOut:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_139

    .line 256
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1

    .line 258
    :try_start_a3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-wide/16 v3, 0x14

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_ac
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_ad

    .line 262
    goto :goto_b5

    .line 260
    :catchall_ad
    move-exception v2

    .line 261
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_ae
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_b5

    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 263
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_b5
    :goto_b5
    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_ae .. :try_end_b6} :catchall_136

    .line 265
    const/4 v1, 0x0

    .line 267
    .local v1, "ipAddrs":[Ljava/lang/String;
    :try_start_b7
    # getter for: Lcom/android/okhttp/internal/http/SBServiceAPI;->sIConnectivityManager:Ljava/lang/Object;
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->access$100()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$2;->val$threadID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_cb
    .catchall {:try_start_b7 .. :try_end_cb} :catchall_cd

    move-object v1, v2

    .line 271
    goto :goto_d6

    .line 269
    :catchall_cd
    move-exception v2

    .line 270
    .restart local v2    # "e":Ljava/lang/Throwable;
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_d5

    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 272
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_d5
    move-object v2, v1

    .end local v1    # "ipAddrs":[Ljava/lang/String;
    .local v2, "ipAddrs":[Ljava/lang/String;
    :goto_d6
    iget-object v3, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$2;->val$retAddrs:Ljava/util/LinkedList;

    monitor-enter v3

    .line 273
    :try_start_d9
    iget-object v1, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$2;->val$retAddrs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_e3

    .line 274
    monitor-exit v3

    goto :goto_139

    .line 276
    :cond_e3
    if-eqz v2, :cond_130

    array-length v1, v2

    if-lez v1, :cond_130

    aget-object v1, v2, v6

    if-eqz v1, :cond_130

    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_ed
    array-length v4, v2

    if-ge v1, v4, :cond_129

    .line 278
    aget-object v4, v2, v1
    :try_end_f2
    .catchall {:try_start_d9 .. :try_end_f2} :catchall_133

    if-eqz v4, :cond_129

    .line 280
    :try_start_f4
    iget-object v4, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$2;->val$retAddrs:Ljava/util/LinkedList;

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 281
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_11d

    sget-boolean v4, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v4, :cond_11d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SBServiceAPI: responseGetAllByName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V
    :try_end_11d
    .catchall {:try_start_f4 .. :try_end_11d} :catchall_11e

    .line 285
    :cond_11d
    goto :goto_126

    .line 283
    :catchall_11e
    move-exception v4

    .line 284
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_11f
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_126

    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 277
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_126
    :goto_126
    add-int/lit8 v1, v1, 0x1

    goto :goto_ed

    .line 289
    .end local v1    # "i":I
    :cond_129
    iget-object v1, p0, Lcom/android/okhttp/internal/http/SBServiceAPI$2;->val$retAddrs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 290
    monitor-exit v3

    goto :goto_139

    .line 292
    :cond_130
    monitor-exit v3

    .line 293
    .end local v2    # "ipAddrs":[Ljava/lang/String;
    goto/16 :goto_94

    .line 292
    .restart local v2    # "ipAddrs":[Ljava/lang/String;
    :catchall_133
    move-exception v1

    monitor-exit v3
    :try_end_135
    .catchall {:try_start_11f .. :try_end_135} :catchall_133

    throw v1

    .line 263
    .end local v2    # "ipAddrs":[Ljava/lang/String;
    :catchall_136
    move-exception v2

    :try_start_137
    monitor-exit v1
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_136

    throw v2

    .line 294
    :cond_139
    :goto_139
    return-void

    .line 248
    :catchall_13a
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_142

    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 250
    :cond_142
    return-void
.end method

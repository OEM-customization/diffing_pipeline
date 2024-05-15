.class Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
.super Ljava/lang/Object;
.source "MultiSocketInputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/MultiSocketInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RangeRequest"
.end annotation


# instance fields
.field private blacklist bHandover:Z

.field public blacklist bIOExceptionDuringContinueChunk:Z

.field private blacklist connInfID:I

.field private blacklist dbuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

.field private blacklist headersToSend:Lcom/android/okhttp/Headers;

.field private blacklist in:Ljava/io/InputStream;

.field private final blacklist mbReconnect:Z

.field private blacklist out:Ljava/io/OutputStream;

.field public blacklist rrExceptionCount:I

.field public blacklist rrStatus:I

.field private blacklist sockID:I

.field private blacklist socket:Ljava/net/Socket;

.field private blacklist t0:J

.field private blacklist t1:J

.field private blacklist t2:J

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

.field private final blacklist threadName:Ljava/lang/String;

.field private blacklist timer:[J

.field public blacklist totalElapsedTime:J

.field public blacklist totalReadSize:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Lcom/android/okhttp/Headers;I)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p2, "h"    # Lcom/android/okhttp/Headers;
    .param p3, "id"    # I

    .line 2592
    iput-object p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->dbuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    .line 2552
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->bHandover:Z

    .line 2577
    iput v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->rrStatus:I

    .line 2581
    iput v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->rrExceptionCount:I

    .line 2585
    iput-boolean v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->bIOExceptionDuringContinueChunk:Z

    .line 2593
    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->socket:Ljava/net/Socket;

    .line 2594
    invoke-virtual {p2}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->headersToSend:Lcom/android/okhttp/Headers;

    .line 2596
    iput p3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    .line 2597
    iput p3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->connInfID:I

    .line 2598
    iget-boolean v0, p1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bConClose:Z

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->mbReconnect:Z

    .line 2599
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    if-nez v0, :cond_2e

    const-string v0, "WIFI_Socket_Thread"

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->threadName:Ljava/lang/String;

    goto :goto_32

    .line 2600
    :cond_2e
    const-string v0, "Mobile_Socket_Thread"

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->threadName:Ljava/lang/String;

    .line 2601
    :goto_32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    .line 2602
    iput-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->totalElapsedTime:J

    .line 2603
    iput-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->t0:J

    .line 2604
    iput-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->t1:J

    .line 2605
    iput-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->t2:J

    .line 2606
    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->HTTPTIMER:Z

    if-eqz v2, :cond_53

    .line 2607
    const/16 v2, 0x14

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->timer:[J

    .line 2608
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_49
    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->timer:[J

    array-length v4, v3

    if-ge v2, v4, :cond_53

    .line 2609
    aput-wide v0, v3, v2

    .line 2608
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 2612
    .end local v2    # "i":I
    :cond_53
    return-void
.end method

.method private blacklist reconnect(Ljava/net/URI;)Z
    .registers 10
    .param p1, "uri"    # Ljava/net/URI;

    .line 3348
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    const-string v1, "try to connect again"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3349
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->bHandover:Z

    .line 3350
    const/4 v1, 0x0

    .line 3352
    .local v1, "ret":Z
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->t1:J

    .line 3353
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3354
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v2

    iget v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->connInfID:I

    invoke-virtual {v2, v3, p1}, Lcom/android/okhttp/internal/io/RealConnection;->connectSocket(ILjava/net/URI;)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->socket:Ljava/net/Socket;

    .line 3355
    if-nez v2, :cond_3d

    .line 3356
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    const-string v3, "Socket failed to reconnect()"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3357
    :cond_3b
    const/4 v1, 0x0

    goto :goto_a0

    .line 3360
    :cond_3d
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->in:Ljava/io/InputStream;

    .line 3361
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->out:Ljava/io/OutputStream;

    .line 3362
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_5e

    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    const-string v3, "Socket connected again: ......"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3363
    :cond_5e
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_98

    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v2, :cond_98

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket connected again:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3364
    :cond_98
    const/4 v1, 0x1

    .line 3366
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->socket:Ljava/net/Socket;

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 3368
    :goto_a0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->t1:J

    sub-long/2addr v2, v4

    .line 3369
    .local v2, "tmp":J
    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->reconnTime:[J

    iget v5, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    aput-wide v2, v4, v5

    .line 3370
    sget-boolean v4, Lcom/android/okhttp/internal/http/HttpEngine;->HTTPTIMER:Z

    if-eqz v4, :cond_dd

    .line 3371
    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->timer:[J

    const/4 v5, 0x4

    aget-wide v6, v4, v5

    add-long/2addr v6, v2

    aput-wide v6, v4, v5

    .line 3372
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_dd

    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time used for reconnect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_dd
    .catchall {:try_start_13 .. :try_end_dd} :catchall_de

    .line 3374
    :cond_dd
    return v1

    .line 3376
    .end local v2    # "tmp":J
    :catchall_de
    move-exception v2

    .line 3377
    .local v2, "ex":Ljava/lang/Throwable;
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_f0

    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3378
    :cond_f0
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_fd

    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 3379
    :cond_fd
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3380
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->socket:Ljava/net/Socket;

    .line 3381
    return v0
.end method

.method private blacklist submitData()V
    .registers 20

    .line 3294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v1

    new-array v1, v1, [J

    .line 3295
    .local v1, "lens":[J
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v2

    new-array v2, v2, [J

    .line 3296
    .local v2, "times":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    iget-object v4, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 3297
    iget-object v4, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v4

    aget-object v4, v4, v3

    iget-wide v4, v4, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    aput-wide v4, v1, v3

    .line 3298
    iget-object v4, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v4

    aget-object v4, v4, v3

    iget-wide v4, v4, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->totalElapsedTime:J

    aput-wide v4, v2, v3

    .line 3296
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 3300
    .end local v3    # "i":I
    :cond_36
    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    const-string v5, ", time="

    const/4 v8, 0x1

    if-lez v4, :cond_d3

    aget-wide v9, v2, v8

    cmp-long v4, v9, v6

    if-lez v4, :cond_d3

    aget-wide v6, v1, v3

    const-wide/16 v9, 0x0

    cmp-long v4, v6, v9

    if-lez v4, :cond_d3

    aget-wide v6, v1, v8

    cmp-long v4, v6, v9

    if-lez v4, :cond_d3

    .line 3301
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_cf

    .line 3302
    iget-object v4, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "submit speed for extreme case - socket[0]: len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v1, v3

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v2, v3

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", speed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v1, v3

    const-wide/16 v11, 0x8

    mul-long/2addr v9, v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v9, v13

    const-wide/16 v15, 0x400

    div-long/2addr v9, v15

    aget-wide v17, v2, v3

    div-long v9, v9, v17

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "Kbps"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3303
    iget-object v4, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "submit speed for extreme case - socket[1]: len="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v1, v8

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v2, v8

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v1, v8

    mul-long/2addr v9, v11

    mul-long/2addr v9, v13

    div-long/2addr v9, v15

    aget-wide v11, v2, v8

    div-long/2addr v9, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3305
    :cond_cf
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/http/SBServiceAPI;->submitMultiSocketData([J[J)V

    goto :goto_11f

    .line 3308
    :cond_d3
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_11f

    .line 3309
    iget-object v4, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not to submit speed for extreme case - socket[0]: len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v1, v3

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v2, v3

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3310
    iget-object v3, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not to submit speed for extreme case - socket[1]: len="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, v1, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v2, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3313
    :cond_11f
    :goto_11f
    iget-object v3, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [J

    .line 3314
    .local v3, "data":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12a
    iget-object v5, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v5

    if-ge v4, v5, :cond_142

    .line 3315
    mul-int/lit8 v5, v4, 0x2

    aget-wide v6, v1, v4

    aput-wide v6, v3, v5

    .line 3316
    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v8

    aget-wide v6, v2, v4

    aput-wide v6, v3, v5

    .line 3314
    add-int/lit8 v4, v4, 0x1

    goto :goto_12a

    .line 3318
    .end local v4    # "i":I
    :cond_142
    iget-object v4, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v4

    invoke-static {v4, v5, v3}, Lcom/android/okhttp/internal/http/SBServiceAPI;->reportSBUsage(J[J)V

    .line 3319
    return-void
.end method


# virtual methods
.method public blacklist closeHTTP()V
    .registers 4

    .line 3332
    :try_start_0
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    const-string v1, "try to close current HTTP session"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3333
    :cond_f
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to close input stream in rr thread, input is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3334
    :cond_2f
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 3335
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->out:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 3336
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/net/Socket;)V
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    .line 3341
    goto :goto_5e

    .line 3338
    :catchall_3f
    move-exception v0

    .line 3339
    .local v0, "ex":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3340
    :cond_51
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 3342
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_5e
    :goto_5e
    return-void
.end method

.method public blacklist handOver()V
    .registers 2

    .line 3324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->bHandover:Z

    .line 3325
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3326
    return-void
.end method

.method public whitelist core-platform-api test-api run()V
    .registers 65

    .line 2616
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->threadName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # operator++ for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->threadID:I
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2108()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2617
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->socket:Ljava/net/Socket;

    if-nez v2, :cond_32

    .line 2618
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_76

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    const-string v3, "download thread start for with Idle"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_76

    .line 2621
    :cond_32
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_56

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download thread start for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2623
    :cond_56
    :try_start_56
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->in:Ljava/io/InputStream;

    .line 2624
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->out:Ljava/io/OutputStream;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_66} :catch_67

    .line 2628
    goto :goto_76

    .line 2626
    :catch_67
    move-exception v0

    move-object v2, v0

    .line 2627
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_76

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 2631
    .end local v2    # "e":Ljava/io/IOException;
    :cond_76
    :goto_76
    # operator++ for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iCurrentMultiSocketNum:I
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1008()I

    .line 2632
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_9b

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "now active multi socket instance is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iCurrentMultiSocketNum:I
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1000()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2635
    :cond_9b
    const/4 v2, 0x1

    .line 2636
    .local v2, "bFirstBlockRsp":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->t0:J

    .line 2637
    sget v3, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->INIT_BUFFERLEN:I

    int-to-long v3, v3

    .line 2640
    .local v3, "iRealBlockSize":J
    const-wide/16 v5, 0x0

    .line 2642
    .local v5, "finalIdleWaitTime":J
    :goto_a7
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v7, v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v7, :cond_1afc

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v7

    if-eq v7, v13, :cond_1afc

    iget v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v14, -0x1

    if-eq v7, v14, :cond_1afc

    .line 2643
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 2644
    :try_start_c5
    sget-boolean v15, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_c7
    .catchall {:try_start_c5 .. :try_end_c7} :catchall_1af3

    if-eqz v15, :cond_102

    :try_start_c9
    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v15

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check buffer size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " compare with max number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iMaxBlockNumber:I
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_fb
    .catchall {:try_start_c9 .. :try_end_fb} :catchall_fc

    goto :goto_102

    .line 2695
    :catchall_fc
    move-exception v0

    move-wide/from16 v19, v3

    move-object v3, v0

    goto/16 :goto_1af7

    .line 2645
    :cond_102
    :goto_102
    :try_start_102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    int-to-long v14, v15

    add-long/2addr v8, v14

    .line 2646
    .local v8, "expectWaitBufferTime":J
    :goto_10a
    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v14, v14, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z
    :try_end_10e
    .catchall {:try_start_102 .. :try_end_10e} :catchall_1af3

    if-nez v14, :cond_27f

    .line 2647
    :try_start_110
    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v14

    if-nez v14, :cond_129

    .line 2648
    sget-boolean v14, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v14, :cond_27f

    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v14

    const-string v15, "buffer status not initiated, not full"

    invoke-virtual {v14, v15}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto/16 :goto_27f

    .line 2652
    :cond_129
    sget-boolean v14, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v14, :cond_140

    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v14

    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->blockStatusToStr()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2653
    :cond_140
    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iMaxBlockNumber:I
    invoke-static {v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v15

    if-gt v14, v15, :cond_1c2

    .line 2654
    const/4 v14, 0x0

    .line 2655
    .local v14, "number":I
    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;
    invoke-static {v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sub-int/2addr v15, v13

    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .local v15, "i":I
    :goto_162
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v12

    array-length v12, v12

    if-ge v15, v12, :cond_187

    .line 2656
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v12

    aget-byte v12, v12, v15

    if-ne v12, v11, :cond_178

    .line 2657
    add-int/lit8 v14, v14, 0x1

    goto :goto_183

    .line 2659
    :cond_178
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v12

    aget-byte v12, v12, v15

    if-gt v12, v10, :cond_183

    .line 2660
    goto :goto_187

    .line 2655
    :cond_183
    :goto_183
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x0

    goto :goto_162

    .line 2663
    .end local v15    # "i":I
    :cond_187
    :goto_187
    if-ge v14, v10, :cond_1b1

    .line 2664
    sget-boolean v12, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v12, :cond_27f

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BlockStatus: full read block "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " < "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto/16 :goto_27f

    .line 2668
    :cond_1b1
    sget-boolean v11, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v11, :cond_1c0

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v11

    const-string v12, "BlockStatus: there are continue number of portions fulled 2"

    invoke-virtual {v11, v12}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2670
    .end local v14    # "number":I
    :cond_1c0
    goto/16 :goto_24c

    .line 2672
    :cond_1c2
    sget-boolean v11, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v11, :cond_1f8

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BlockStatus: block size "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " > Max Size "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iMaxBlockNumber:I
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2674
    :cond_1f8
    const/4 v11, 0x0

    .line 2675
    .local v11, "bOtherBlocked":Z
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int/2addr v12, v13

    const/4 v14, 0x0

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .local v12, "i":I
    :goto_209
    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    if-gt v12, v14, :cond_249

    .line 2676
    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v14

    aget-byte v14, v14, v12

    const/4 v15, -0x1

    if-ne v14, v15, :cond_245

    .line 2677
    const/4 v11, 0x1

    .line 2678
    sget-boolean v14, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v14, :cond_249

    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BlockStatus: a blocked chunk: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_244
    .catchall {:try_start_110 .. :try_end_244} :catchall_fc

    goto :goto_249

    .line 2675
    :cond_245
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x2

    goto :goto_209

    .line 2682
    .end local v12    # "i":I
    :cond_249
    :goto_249
    if-eqz v11, :cond_24c

    goto :goto_27f

    .line 2687
    .end local v11    # "bOtherBlocked":Z
    :cond_24c
    :goto_24c
    :try_start_24c
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    invoke-virtual {v10, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_257
    .catchall {:try_start_24c .. :try_end_257} :catchall_258

    goto :goto_259

    .line 2689
    :catchall_258
    move-exception v0

    :goto_259
    nop

    .line 2690
    :try_start_25a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-lez v10, :cond_27a

    .line 2691
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_271

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    const-string v11, " RangeRequest wait for buffer free time out"

    invoke-virtual {v10, v11}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2692
    :cond_271
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iput-boolean v13, v10, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z
    :try_end_275
    .catchall {:try_start_25a .. :try_end_275} :catchall_fc

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x0

    goto/16 :goto_10a

    .line 2690
    :cond_27a
    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x0

    goto/16 :goto_10a

    .line 2695
    .end local v8    # "expectWaitBufferTime":J
    :cond_27f
    :goto_27f
    :try_start_27f
    monitor-exit v7
    :try_end_280
    .catchall {:try_start_27f .. :try_end_280} :catchall_1af3

    .line 2699
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    # invokes: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getOtherSocketID(I)I
    invoke-static {v7, v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    move-result v8

    .line 2702
    .local v8, "otherSocketId":I
    :goto_288
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v7, v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v7, :cond_35e

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v7

    aget-object v7, v7, v8

    iget v7, v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v9, -0x1

    if-eq v7, v9, :cond_35e

    .line 2706
    const/4 v7, 0x0

    .line 2707
    .local v7, "chunkNotRead":I
    const/4 v9, 0x0

    .line 2711
    .local v9, "blockedState":I
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v10

    if-eqz v10, :cond_2ea

    .line 2712
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v10, v13

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2713
    .local v10, "i":I
    :goto_2b5
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v11

    array-length v11, v11

    if-ge v10, v11, :cond_2ea

    .line 2714
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v11

    aget-byte v11, v11, v10

    if-ltz v11, :cond_2d6

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v11

    aget-byte v11, v11, v10

    const/4 v12, 0x3

    if-ge v11, v12, :cond_2d6

    .line 2715
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e4

    .line 2716
    :cond_2d6
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v11

    aget-byte v11, v11, v10

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2e4

    .line 2717
    add-int/lit8 v9, v9, 0x1

    .line 2718
    goto :goto_2ea

    .line 2720
    :cond_2e4
    :goto_2e4
    if-le v7, v13, :cond_2e7

    .line 2721
    goto :goto_2ea

    .line 2713
    :cond_2e7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2b5

    .line 2727
    .end local v10    # "i":I
    :cond_2ea
    :goto_2ea
    if-gt v7, v13, :cond_35e

    if-lez v9, :cond_2ef

    .line 2728
    goto :goto_35e

    .line 2729
    :cond_2ef
    if-ne v7, v13, :cond_314

    .line 2732
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v10

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->socketSpeed:[J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->access$6000(Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;)[J

    move-result-object v10

    iget v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    aget-wide v10, v10, v11

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 2733
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v12

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->socketSpeed:[J
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->access$6000(Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;)[J

    move-result-object v12

    aget-wide v14, v12, v8

    const-wide/16 v18, 0x2

    mul-long v14, v14, v18

    cmp-long v10, v10, v14

    if-lez v10, :cond_314

    .line 2735
    goto :goto_35e

    .line 2738
    :cond_314
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_334

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wait for seconds: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_TIME_TILL_READ_FROM_COMMON_BUFFER:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2741
    :cond_334
    :try_start_334
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v10

    monitor-enter v10
    :try_end_33b
    .catchall {:try_start_334 .. :try_end_33b} :catchall_34d

    .line 2742
    :try_start_33b
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v11

    sget v12, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_TIME_TILL_READ_FROM_COMMON_BUFFER:I

    int-to-long v14, v12

    invoke-virtual {v11, v14, v15}, Ljava/lang/Object;->wait(J)V

    .line 2743
    monitor-exit v10

    .line 2744
    goto :goto_35c

    .line 2743
    :catchall_349
    move-exception v0

    move-object v11, v0

    monitor-exit v10
    :try_end_34c
    .catchall {:try_start_33b .. :try_end_34c} :catchall_349

    .end local v2    # "bFirstBlockRsp":Z
    .end local v3    # "iRealBlockSize":J
    .end local v5    # "finalIdleWaitTime":J
    .end local v7    # "chunkNotRead":I
    .end local v8    # "otherSocketId":I
    .end local v9    # "blockedState":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :try_start_34c
    throw v11
    :try_end_34d
    .catchall {:try_start_34c .. :try_end_34d} :catchall_34d

    .line 2744
    .restart local v2    # "bFirstBlockRsp":Z
    .restart local v3    # "iRealBlockSize":J
    .restart local v5    # "finalIdleWaitTime":J
    .restart local v7    # "chunkNotRead":I
    .restart local v8    # "otherSocketId":I
    .restart local v9    # "blockedState":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :catchall_34d
    move-exception v0

    move-object v10, v0

    .local v10, "e":Ljava/lang/Throwable;
    sget-boolean v11, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v11, :cond_35c

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 2745
    .end local v7    # "chunkNotRead":I
    .end local v9    # "blockedState":I
    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_35c
    :goto_35c
    goto/16 :goto_288

    .line 2750
    :cond_35e
    :goto_35e
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v9

    monitor-enter v9

    .line 2751
    :try_start_365
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v7, v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sRedirectedRequestHeaders:[Lcom/android/okhttp/Request;

    iget v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->connInfID:I

    aget-object v7, v7, v10

    .line 2752
    .local v7, "requestHeaders":Lcom/android/okhttp/Request;
    monitor-exit v9
    :try_end_36e
    .catchall {:try_start_365 .. :try_end_36e} :catchall_1ae8

    .line 2753
    invoke-virtual {v7}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v9

    iput-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->headersToSend:Lcom/android/okhttp/Headers;

    .line 2754
    const/4 v9, 0x0

    .line 2756
    .local v9, "redirectedUri":Ljava/net/URI;
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_395

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "start to check socket connectivity ReCon="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->mbReconnect:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2757
    :cond_395
    :goto_395
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v10, v10, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v10, :cond_549

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->socket:Ljava/net/Socket;

    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiratUtil;->socketAlive(Ljava/net/Socket;)Z

    move-result v10

    if-eqz v10, :cond_3a7

    iget-boolean v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->mbReconnect:Z

    if-eqz v10, :cond_549

    .line 2758
    :cond_3a7
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v10

    iget v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->connInfID:I

    invoke-virtual {v10, v11}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(I)Ljava/net/InetAddress;

    move-result-object v10

    .line 2762
    .local v10, "localAddress":Ljava/net/InetAddress;
    if-nez v10, :cond_438

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v11

    aget-object v11, v11, v8

    iget v11, v11, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_438

    .line 2763
    sget-boolean v11, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v11, :cond_3e7

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The interface for socket id "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " is null and other thread is RR_STOPPED"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2764
    :cond_3e7
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v11

    iget v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->connInfID:I

    add-int/2addr v12, v13

    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v14

    rem-int/2addr v12, v14

    invoke-virtual {v11, v12}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(I)Ljava/net/InetAddress;

    move-result-object v10

    .line 2765
    if-eqz v10, :cond_438

    .line 2766
    iput-boolean v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->bIOExceptionDuringContinueChunk:Z

    .line 2767
    iget v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->connInfID:I

    add-int/2addr v11, v13

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v12

    rem-int/2addr v11, v12

    iput v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->connInfID:I

    .line 2768
    const/4 v11, 0x0

    iput v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->rrExceptionCount:I

    .line 2769
    sget-boolean v11, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v11, :cond_438

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Other socket interface ip is not null and so changing the interface id to "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->connInfID:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " for thread id "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2774
    :cond_438
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v11

    monitor-enter v11

    .line 2775
    :try_start_43f
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v12, v12, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sRedirectedRequestHeaders:[Lcom/android/okhttp/Request;

    iget v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->connInfID:I

    aget-object v12, v12, v14

    move-object v7, v12

    .line 2776
    monitor-exit v11
    :try_end_449
    .catchall {:try_start_43f .. :try_end_449} :catchall_545

    .line 2777
    invoke-virtual {v7}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v11

    iput-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->headersToSend:Lcom/android/okhttp/Headers;

    .line 2779
    :try_start_44f
    invoke-virtual {v7}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v11
    :try_end_453
    .catch Ljava/io/IOException; {:try_start_44f .. :try_end_453} :catch_506

    .line 2791
    .end local v9    # "redirectedUri":Ljava/net/URI;
    .local v11, "redirectedUri":Ljava/net/URI;
    nop

    .line 2793
    invoke-direct {v1, v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->reconnect(Ljava/net/URI;)Z

    move-result v9

    if-eqz v9, :cond_491

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->socket:Ljava/net/Socket;

    if-eqz v9, :cond_491

    .line 2794
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v9, :cond_4e7

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "download thread bind new socket "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->socket:Ljava/net/Socket;

    invoke-virtual {v14}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->socket:Ljava/net/Socket;

    invoke-virtual {v14}, Ljava/net/Socket;->getPort()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_4e7

    .line 2799
    :cond_491
    if-eqz v2, :cond_4ed

    .line 2800
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v9, :cond_4bc

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "move to RR_FAILED from "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " in first connect()"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2801
    :cond_4bc
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v9

    monitor-enter v9

    .line 2802
    :try_start_4c3
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v12

    if-eqz v12, :cond_4d4

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v12

    const/4 v14, 0x3

    if-ne v12, v14, :cond_4e2

    .line 2803
    :cond_4d4
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v12, v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 2804
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 2806
    :cond_4e2
    monitor-exit v9
    :try_end_4e3
    .catchall {:try_start_4c3 .. :try_end_4e3} :catchall_4e9

    .line 2807
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 2808
    nop

    .line 2821
    .end local v10    # "localAddress":Ljava/net/InetAddress;
    :cond_4e7
    :goto_4e7
    move-object v9, v11

    goto :goto_549

    .line 2806
    .restart local v10    # "localAddress":Ljava/net/InetAddress;
    :catchall_4e9
    move-exception v0

    move-object v12, v0

    :try_start_4eb
    monitor-exit v9
    :try_end_4ec
    .catchall {:try_start_4eb .. :try_end_4ec} :catchall_4e9

    throw v12

    .line 2811
    :cond_4ed
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    monitor-enter v12

    .line 2813
    :try_start_4f2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    const-wide/16 v14, 0x3e8

    invoke-virtual {v9, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_4fb
    .catchall {:try_start_4f2 .. :try_end_4fb} :catchall_4fc

    goto :goto_4fd

    .line 2815
    :catchall_4fc
    move-exception v0

    :goto_4fd
    nop

    .line 2816
    :try_start_4fe
    monitor-exit v12

    .line 2819
    .end local v10    # "localAddress":Ljava/net/InetAddress;
    move-object v9, v11

    goto/16 :goto_395

    .line 2816
    .restart local v10    # "localAddress":Ljava/net/InetAddress;
    :catchall_502
    move-exception v0

    move-object v9, v0

    monitor-exit v12
    :try_end_505
    .catchall {:try_start_4fe .. :try_end_505} :catchall_502

    throw v9

    .line 2781
    .end local v11    # "redirectedUri":Ljava/net/URI;
    .restart local v9    # "redirectedUri":Ljava/net/URI;
    :catch_506
    move-exception v0

    move-object v11, v0

    move-object v12, v11

    .line 2782
    .local v12, "e":Ljava/io/IOException;
    sget-boolean v11, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v11, :cond_516

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v11

    invoke-virtual {v11, v12}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 2783
    :cond_516
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v14

    monitor-enter v14

    .line 2784
    :try_start_51d
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v11

    if-eqz v11, :cond_52e

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v11

    const/4 v15, 0x3

    if-ne v11, v15, :cond_53c

    .line 2785
    :cond_52e
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v11, v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 2786
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    .line 2788
    :cond_53c
    monitor-exit v14
    :try_end_53d
    .catchall {:try_start_51d .. :try_end_53d} :catchall_541

    .line 2789
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 2790
    goto :goto_549

    .line 2788
    :catchall_541
    move-exception v0

    move-object v11, v0

    :try_start_543
    monitor-exit v14
    :try_end_544
    .catchall {:try_start_543 .. :try_end_544} :catchall_541

    throw v11

    .line 2776
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_545
    move-exception v0

    move-object v12, v0

    :try_start_547
    monitor-exit v11
    :try_end_548
    .catchall {:try_start_547 .. :try_end_548} :catchall_545

    throw v12

    .line 2821
    .end local v10    # "localAddress":Ljava/net/InetAddress;
    :cond_549
    :goto_549
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v10

    if-ne v10, v13, :cond_564

    .line 2822
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_560

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    const-string v11, "bRangeRequestSuccess == RR_FAILED, break1"

    invoke-virtual {v10, v11}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    :cond_560
    move-wide/from16 v19, v3

    goto/16 :goto_1afe

    .line 2826
    :cond_564
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v10, v10, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-eqz v10, :cond_57d

    .line 2827
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_579

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    const-string v11, "bFinished = true, break1"

    invoke-virtual {v10, v11}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    :cond_579
    move-wide/from16 v19, v3

    goto/16 :goto_1afe

    .line 2831
    :cond_57d
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_58c

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    const-string v11, "start to get another range request"

    invoke-virtual {v10, v11}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2833
    :cond_58c
    sget-boolean v10, Lcom/android/okhttp/internal/http/HttpEngine;->HTTPTIMER:Z

    if-eqz v10, :cond_596

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->t1:J

    .line 2834
    :cond_596
    const-wide/16 v10, 0x0

    .line 2835
    .local v10, "bytesToRead":J
    const-wide/16 v14, 0x0

    .line 2837
    .local v14, "totallen":J
    const/4 v12, 0x0

    .line 2839
    .local v12, "blockInfo":[J
    :try_start_59b
    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v13

    monitor-enter v13
    :try_end_5a2
    .catchall {:try_start_59b .. :try_end_5a2} :catchall_5c3

    .line 2840
    move-wide/from16 v19, v3

    .end local v3    # "iRealBlockSize":J
    .local v19, "iRealBlockSize":J
    :try_start_5a4
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v3

    iget v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I
    :try_end_5ac
    .catchall {:try_start_5a4 .. :try_end_5ac} :catchall_5b7

    move/from16 v21, v8

    .end local v8    # "otherSocketId":I
    .local v21, "otherSocketId":I
    :try_start_5ae
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->dbuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v3, v4, v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getNextHTTPBlock(ILcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;)[J

    move-result-object v3

    move-object v12, v3

    .line 2841
    monitor-exit v13

    .line 2845
    goto :goto_5d6

    .line 2841
    .end local v21    # "otherSocketId":I
    .restart local v8    # "otherSocketId":I
    :catchall_5b7
    move-exception v0

    move/from16 v21, v8

    move-object v3, v0

    .end local v8    # "otherSocketId":I
    .restart local v21    # "otherSocketId":I
    :goto_5bb
    monitor-exit v13
    :try_end_5bc
    .catchall {:try_start_5ae .. :try_end_5bc} :catchall_5c0

    .end local v2    # "bFirstBlockRsp":Z
    .end local v5    # "finalIdleWaitTime":J
    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v9    # "redirectedUri":Ljava/net/URI;
    .end local v10    # "bytesToRead":J
    .end local v12    # "blockInfo":[J
    .end local v14    # "totallen":J
    .end local v19    # "iRealBlockSize":J
    .end local v21    # "otherSocketId":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :try_start_5bc
    throw v3
    :try_end_5bd
    .catchall {:try_start_5bc .. :try_end_5bd} :catchall_5bd

    .line 2843
    .restart local v2    # "bFirstBlockRsp":Z
    .restart local v5    # "finalIdleWaitTime":J
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v9    # "redirectedUri":Ljava/net/URI;
    .restart local v10    # "bytesToRead":J
    .restart local v12    # "blockInfo":[J
    .restart local v14    # "totallen":J
    .restart local v19    # "iRealBlockSize":J
    .restart local v21    # "otherSocketId":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :catchall_5bd
    move-exception v0

    move-object v3, v0

    goto :goto_5c9

    .line 2841
    :catchall_5c0
    move-exception v0

    move-object v3, v0

    goto :goto_5bb

    .line 2843
    .end local v19    # "iRealBlockSize":J
    .end local v21    # "otherSocketId":I
    .restart local v3    # "iRealBlockSize":J
    .restart local v8    # "otherSocketId":I
    :catchall_5c3
    move-exception v0

    move-wide/from16 v19, v3

    move/from16 v21, v8

    move-object v3, v0

    .line 2844
    .end local v8    # "otherSocketId":I
    .local v3, "e":Ljava/lang/Throwable;
    .restart local v19    # "iRealBlockSize":J
    .restart local v21    # "otherSocketId":I
    :goto_5c9
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_5d6

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 2846
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_5d6
    :goto_5d6
    const/4 v3, 0x4

    if-eqz v12, :cond_63a

    array-length v4, v12

    if-ge v4, v3, :cond_5e0

    move-object v4, v9

    move-wide/from16 v23, v10

    goto :goto_63d

    .line 2884
    :cond_5e0
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_633

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "threadID "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " getNextHTTPBlock() on interface "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->connInfID:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " results id "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v4

    const/4 v13, 0x3

    aget-wide v3, v12, v13

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v9

    move-wide/from16 v23, v10

    const/4 v3, 0x0

    .end local v9    # "redirectedUri":Ljava/net/URI;
    .end local v10    # "bytesToRead":J
    .local v4, "redirectedUri":Ljava/net/URI;
    .local v23, "bytesToRead":J
    aget-wide v9, v12, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-wide v9, v12, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v8, v22

    invoke-virtual {v8, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_636

    .end local v4    # "redirectedUri":Ljava/net/URI;
    .end local v23    # "bytesToRead":J
    .restart local v9    # "redirectedUri":Ljava/net/URI;
    .restart local v10    # "bytesToRead":J
    :cond_633
    move-object v4, v9

    move-wide/from16 v23, v10

    .line 2888
    .end local v9    # "redirectedUri":Ljava/net/URI;
    .end local v10    # "bytesToRead":J
    .restart local v4    # "redirectedUri":Ljava/net/URI;
    .restart local v23    # "bytesToRead":J
    :goto_636
    move-wide/from16 v25, v14

    goto/16 :goto_795

    .line 2846
    .end local v4    # "redirectedUri":Ljava/net/URI;
    .end local v23    # "bytesToRead":J
    .restart local v9    # "redirectedUri":Ljava/net/URI;
    .restart local v10    # "bytesToRead":J
    :cond_63a
    move-object v4, v9

    move-wide/from16 v23, v10

    .line 2847
    .end local v9    # "redirectedUri":Ljava/net/URI;
    .end local v10    # "bytesToRead":J
    .restart local v4    # "redirectedUri":Ljava/net/URI;
    .restart local v23    # "bytesToRead":J
    :goto_63d
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_666

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNextHTTPBlock() results 0, resource check: finish reading totalLength("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "), break"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2848
    :cond_666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2849
    .local v8, "startWaitFinishTime":J
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_688

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start to wait for other thread exit: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2850
    :cond_688
    :goto_688
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v3, v3, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v3, :cond_6f6

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v3

    const/4 v10, 0x1

    if-eq v3, v10, :cond_6f6

    iget v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v10, -0x1

    if-eq v3, v10, :cond_6f6

    if-eqz v12, :cond_6a6

    array-length v3, v12

    const/4 v10, 0x4

    if-ge v3, v10, :cond_6a3

    goto :goto_6a6

    :cond_6a3
    move-wide/from16 v25, v14

    goto :goto_6f8

    .line 2851
    :cond_6a6
    :goto_6a6
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v3

    monitor-enter v3

    .line 2853
    :try_start_6ad
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v10
    :try_end_6b3
    .catchall {:try_start_6ad .. :try_end_6b3} :catchall_6be

    move-wide/from16 v25, v14

    const-wide/16 v13, 0x3e8

    .end local v14    # "totallen":J
    .local v25, "totallen":J
    :try_start_6b7
    invoke-virtual {v10, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_6ba
    .catchall {:try_start_6b7 .. :try_end_6ba} :catchall_6bb

    .line 2857
    goto :goto_6cf

    .line 2855
    :catchall_6bb
    move-exception v0

    move-object v10, v0

    goto :goto_6c2

    .end local v25    # "totallen":J
    .restart local v14    # "totallen":J
    :catchall_6be
    move-exception v0

    move-wide/from16 v25, v14

    move-object v10, v0

    .line 2856
    .end local v14    # "totallen":J
    .local v10, "ex":Ljava/lang/Throwable;
    .restart local v25    # "totallen":J
    :goto_6c2
    :try_start_6c2
    sget-boolean v11, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v11, :cond_6cf

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V
    :try_end_6cf
    .catchall {:try_start_6c2 .. :try_end_6cf} :catchall_6f2

    .line 2859
    .end local v10    # "ex":Ljava/lang/Throwable;
    :cond_6cf
    :goto_6cf
    :try_start_6cf
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v10

    iget v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->dbuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v10, v11, v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getNextHTTPBlock(ILcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;)[J

    move-result-object v10
    :try_end_6dd
    .catchall {:try_start_6cf .. :try_end_6dd} :catchall_6df

    .line 2863
    .end local v12    # "blockInfo":[J
    .local v10, "blockInfo":[J
    move-object v12, v10

    goto :goto_6ee

    .line 2861
    .end local v10    # "blockInfo":[J
    .restart local v12    # "blockInfo":[J
    :catchall_6df
    move-exception v0

    move-object v10, v0

    .line 2862
    .local v10, "ex":Ljava/lang/Throwable;
    :try_start_6e1
    sget-boolean v11, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v11, :cond_6ee

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 2864
    .end local v10    # "ex":Ljava/lang/Throwable;
    :cond_6ee
    :goto_6ee
    monitor-exit v3

    move-wide/from16 v14, v25

    goto :goto_688

    :catchall_6f2
    move-exception v0

    move-object v10, v0

    monitor-exit v3
    :try_end_6f5
    .catchall {:try_start_6e1 .. :try_end_6f5} :catchall_6f2

    throw v10

    .line 2850
    .end local v25    # "totallen":J
    .restart local v14    # "totallen":J
    :cond_6f6
    move-wide/from16 v25, v14

    .line 2866
    .end local v14    # "totallen":J
    .restart local v25    # "totallen":J
    :goto_6f8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    add-long/2addr v5, v10

    .line 2867
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_71c

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "finish to wait for other thread exit: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2868
    :cond_71c
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v3, v3, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v3, :cond_1ad4

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v3

    const/4 v10, 0x1

    if-ne v3, v10, :cond_731

    move-object/from16 v42, v4

    move-object/from16 v30, v7

    goto/16 :goto_1ad8

    .line 2872
    :cond_731
    iget v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v10, -0x1

    if-ne v3, v10, :cond_747

    .line 2873
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_1afe

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    const-string v10, "this thread is stopped, and the other thread is downloading continue chunk"

    invoke-virtual {v3, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto/16 :goto_1afe

    .line 2876
    :cond_747
    if-eqz v12, :cond_785

    array-length v3, v12

    const/4 v10, 0x4

    if-lt v3, v10, :cond_785

    .line 2877
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_794

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getNextHTTPBlock() results id after wait "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x3

    aget-wide v13, v12, v11

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-wide v13, v12, v11

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    aget-wide v13, v12, v11

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_794

    .line 2880
    :cond_785
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_794

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    const-string v10, "Exception Case, shall not come here"

    invoke-virtual {v3, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2882
    .end local v8    # "startWaitFinishTime":J
    :cond_794
    :goto_794
    nop

    .line 2888
    :goto_795
    const/4 v3, 0x0

    .line 2890
    .local v3, "chunkLengths":[J
    const/4 v8, 0x0

    .line 2892
    .local v8, "chunkIndex":I
    const/4 v9, 0x0

    .line 2895
    .local v9, "totalContinuousChunk":I
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v11, "bytes="

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2896
    .local v10, "range":Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    aget-wide v13, v12, v11

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v11, 0x1

    aget-wide v13, v12, v11

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 2897
    const/4 v11, 0x2

    aget-wide v13, v12, v11

    .line 2898
    .end local v23    # "bytesToRead":J
    .local v13, "bytesToRead":J
    move-object/from16 v22, v3

    move-object v15, v4

    const/4 v11, 0x3

    .end local v3    # "chunkLengths":[J
    .end local v4    # "redirectedUri":Ljava/net/URI;
    .local v15, "redirectedUri":Ljava/net/URI;
    .local v22, "chunkLengths":[J
    aget-wide v3, v12, v11

    long-to-int v3, v3

    .line 2900
    .local v3, "currentBlockNumber":I
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->toBeReadLen:[J

    iget v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    aput-wide v13, v4, v11

    .line 2903
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->headersToSend:Lcom/android/okhttp/Headers;

    invoke-virtual {v4}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-wide/from16 v27, v5

    .end local v5    # "finalIdleWaitTime":J
    .local v27, "finalIdleWaitTime":J
    const-string v5, "Range"

    invoke-virtual {v4, v5, v11}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v4

    iput-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->headersToSend:Lcom/android/okhttp/Headers;

    .line 2904
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_80e

    sget-boolean v4, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v4, :cond_80e

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RangeRequestHeader["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->headersToSend:Lcom/android/okhttp/Headers;

    invoke-virtual {v6}, Lcom/android/okhttp/Headers;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2905
    :cond_80e
    sget-boolean v4, Lcom/android/okhttp/internal/http/HttpEngine;->HTTPTIMER:Z

    if-eqz v4, :cond_824

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->timer:[J

    const/4 v5, 0x1

    aget-wide v23, v4, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    iget-wide v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->t1:J

    sub-long v29, v29, v5

    add-long v23, v23, v29

    const/4 v5, 0x1

    aput-wide v23, v4, v5

    .line 2906
    :cond_824
    const/4 v4, 0x0

    .line 2907
    .local v4, "buf_offset":I
    const/4 v5, 0x0

    .line 2909
    .local v5, "buf_ret":I
    :try_start_826
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v6

    iget v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v6, v11}, Lcom/android/okhttp/internal/io/RealConnection;->getProxy(I)Ljava/net/Proxy;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/okhttp/internal/io/RealConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    move-result-object v11

    invoke-static {v7, v6, v11}, Lcom/android/okhttp/internal/http/MultiratUtil;->getRequestLine(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;Lcom/android/okhttp/Protocol;)Ljava/lang/String;

    move-result-object v6

    .line 2910
    .local v6, "requestLine":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->headersToSend:Lcom/android/okhttp/Headers;

    invoke-static {v11, v6}, Lcom/android/okhttp/internal/http/MultiratUtil;->getRequestHeadersBytes(Lcom/android/okhttp/Headers;Ljava/lang/String;)[B

    move-result-object v11
    :try_end_84a
    .catch Ljava/lang/InterruptedException; {:try_start_826 .. :try_end_84a} :catch_1aa5
    .catchall {:try_start_826 .. :try_end_84a} :catchall_18f7

    .line 2912
    .local v11, "headBytes":[B
    move/from16 v23, v4

    .end local v4    # "buf_offset":I
    .local v23, "buf_offset":I
    :try_start_84c
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_853
    .catch Ljava/lang/InterruptedException; {:try_start_84c .. :try_end_853} :catch_18de
    .catchall {:try_start_84c .. :try_end_853} :catchall_18c4

    .line 2913
    move/from16 v24, v5

    .end local v5    # "buf_ret":I
    .local v24, "buf_ret":I
    :try_start_855
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v5
    :try_end_85b
    .catchall {:try_start_855 .. :try_end_85b} :catchall_1890

    move-object/from16 v29, v6

    .end local v6    # "requestLine":Ljava/lang/String;
    .local v29, "requestLine":Ljava/lang/String;
    :try_start_85d
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    iput-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->dbuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    .line 2914
    monitor-exit v4
    :try_end_86b
    .catchall {:try_start_85d .. :try_end_86b} :catchall_187e

    .line 2918
    :try_start_86b
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v4

    array-length v4, v4
    :try_end_872
    .catch Ljava/lang/InterruptedException; {:try_start_86b .. :try_end_872} :catch_1865
    .catchall {:try_start_86b .. :try_end_872} :catchall_184a

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v3, v4, :cond_ac1

    :try_start_876
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v4

    cmp-long v4, v13, v4

    if-lez v4, :cond_ac1

    .line 2919
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->dbuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getTotalChunks()I

    move-result v4
    :try_end_886
    .catch Ljava/lang/InterruptedException; {:try_start_876 .. :try_end_886} :catch_aa8
    .catchall {:try_start_876 .. :try_end_886} :catchall_a8d

    move v9, v4

    .line 2920
    :try_start_887
    new-array v4, v9, [J
    :try_end_889
    .catch Ljava/lang/InterruptedException; {:try_start_887 .. :try_end_889} :catch_a72
    .catchall {:try_start_887 .. :try_end_889} :catchall_a55

    .line 2922
    .end local v22    # "chunkLengths":[J
    .local v4, "chunkLengths":[J
    :try_start_889
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->dbuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v5

    aput-wide v5, v4, v8

    .line 2924
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_893
    .catch Ljava/lang/InterruptedException; {:try_start_889 .. :try_end_893} :catch_a3b
    .catchall {:try_start_889 .. :try_end_893} :catchall_a1e

    if-eqz v5, :cond_955

    :try_start_895
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8a0
    .catch Ljava/lang/InterruptedException; {:try_start_895 .. :try_end_8a0} :catch_93b
    .catchall {:try_start_895 .. :try_end_8a0} :catchall_91e

    move-object/from16 v30, v7

    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .local v30, "requestHeaders":Lcom/android/okhttp/Request;
    :try_start_8a2
    const-string v7, "chunkLengths[0]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8a7
    .catch Ljava/lang/InterruptedException; {:try_start_8a2 .. :try_end_8a7} :catch_906
    .catchall {:try_start_8a2 .. :try_end_8a7} :catchall_8eb

    move/from16 v31, v8

    move/from16 v32, v9

    const/4 v7, 0x0

    .end local v8    # "chunkIndex":I
    .end local v9    # "totalContinuousChunk":I
    .local v31, "chunkIndex":I
    .local v32, "totalContinuousChunk":I
    :try_start_8ac
    aget-wide v8, v4, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_8b8
    .catch Ljava/lang/InterruptedException; {:try_start_8ac .. :try_end_8b8} :catch_8d3
    .catchall {:try_start_8ac .. :try_end_8b8} :catchall_8ba

    goto/16 :goto_95b

    .line 3181
    .end local v11    # "headBytes":[B
    .end local v29    # "requestLine":Ljava/lang/String;
    :catchall_8ba
    move-exception v0

    move-object v6, v0

    move-object/from16 v50, v4

    move-object/from16 v33, v10

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v9, v32

    move v13, v3

    move-wide/from16 v3, v19

    goto/16 :goto_1912

    .line 3175
    :catch_8d3
    move-exception v0

    move-object v6, v0

    move-object/from16 v33, v10

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v8, v31

    move/from16 v9, v32

    move v13, v3

    move-object v3, v4

    move/from16 v4, v23

    goto/16 :goto_1abc

    .line 3181
    .end local v31    # "chunkIndex":I
    .end local v32    # "totalContinuousChunk":I
    .restart local v8    # "chunkIndex":I
    .restart local v9    # "totalContinuousChunk":I
    :catchall_8eb
    move-exception v0

    move/from16 v31, v8

    move/from16 v32, v9

    move-object v6, v0

    move-object/from16 v50, v4

    move-object/from16 v33, v10

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move v13, v3

    move-wide/from16 v3, v19

    .end local v8    # "chunkIndex":I
    .end local v9    # "totalContinuousChunk":I
    .restart local v31    # "chunkIndex":I
    .restart local v32    # "totalContinuousChunk":I
    goto/16 :goto_1912

    .line 3175
    .end local v31    # "chunkIndex":I
    .end local v32    # "totalContinuousChunk":I
    .restart local v8    # "chunkIndex":I
    .restart local v9    # "totalContinuousChunk":I
    :catch_906
    move-exception v0

    move/from16 v31, v8

    move/from16 v32, v9

    move-object v6, v0

    move-object/from16 v33, v10

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move v13, v3

    move-object v3, v4

    move/from16 v4, v23

    .end local v8    # "chunkIndex":I
    .end local v9    # "totalContinuousChunk":I
    .restart local v31    # "chunkIndex":I
    .restart local v32    # "totalContinuousChunk":I
    goto/16 :goto_1abc

    .line 3181
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v32    # "totalContinuousChunk":I
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "chunkIndex":I
    .restart local v9    # "totalContinuousChunk":I
    :catchall_91e
    move-exception v0

    move-object/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move-object v6, v0

    move-object/from16 v50, v4

    move-object/from16 v33, v10

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move v13, v3

    move-wide/from16 v3, v19

    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "chunkIndex":I
    .end local v9    # "totalContinuousChunk":I
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v32    # "totalContinuousChunk":I
    goto/16 :goto_1912

    .line 3175
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v32    # "totalContinuousChunk":I
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "chunkIndex":I
    .restart local v9    # "totalContinuousChunk":I
    :catch_93b
    move-exception v0

    move-object/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move-object v6, v0

    move-object/from16 v33, v10

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move v13, v3

    move-object v3, v4

    move/from16 v4, v23

    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "chunkIndex":I
    .end local v9    # "totalContinuousChunk":I
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v32    # "totalContinuousChunk":I
    goto/16 :goto_1abc

    .line 2924
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v32    # "totalContinuousChunk":I
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "chunkIndex":I
    .restart local v9    # "totalContinuousChunk":I
    .restart local v11    # "headBytes":[B
    .restart local v29    # "requestLine":Ljava/lang/String;
    :cond_955
    move-object/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    .line 2926
    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "chunkIndex":I
    .end local v9    # "totalContinuousChunk":I
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v32    # "totalContinuousChunk":I
    :goto_95b
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_95c
    :try_start_95c
    array-length v6, v4

    if-ge v5, v6, :cond_9e7

    .line 2928
    add-int v6, v3, v5

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-ne v6, v7, :cond_983

    .line 2931
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v6
    :try_end_972
    .catch Ljava/lang/InterruptedException; {:try_start_95c .. :try_end_972} :catch_a06
    .catchall {:try_start_95c .. :try_end_972} :catchall_9ed

    add-int v8, v3, v5

    int-to-long v8, v8

    move-object/from16 v33, v10

    .end local v10    # "range":Ljava/lang/StringBuffer;
    .local v33, "range":Ljava/lang/StringBuffer;
    :try_start_977
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v34

    mul-long v8, v8, v34

    sub-long/2addr v6, v8

    aput-wide v6, v4, v5

    goto :goto_98d

    .line 2934
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    :cond_983
    move-object/from16 v33, v10

    .end local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 2936
    :goto_98d
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_9b5

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "chunkLengths["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v4, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_9b5
    .catch Ljava/lang/InterruptedException; {:try_start_977 .. :try_end_9b5} :catch_9d1
    .catchall {:try_start_977 .. :try_end_9b5} :catchall_9ba

    .line 2926
    :cond_9b5
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v10, v33

    goto :goto_95c

    .line 3181
    .end local v5    # "j":I
    .end local v11    # "headBytes":[B
    .end local v29    # "requestLine":Ljava/lang/String;
    :catchall_9ba
    move-exception v0

    move-object v6, v0

    move-object/from16 v50, v4

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v9, v32

    move v13, v3

    move-wide/from16 v3, v19

    goto/16 :goto_1912

    .line 3175
    :catch_9d1
    move-exception v0

    move-object v6, v0

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v8, v31

    move/from16 v9, v32

    move v13, v3

    move-object v3, v4

    move/from16 v4, v23

    goto/16 :goto_1abc

    .line 2926
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v5    # "j":I
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v11    # "headBytes":[B
    .restart local v29    # "requestLine":Ljava/lang/String;
    :cond_9e7
    move-object/from16 v33, v10

    .end local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    move/from16 v9, v32

    goto/16 :goto_ac9

    .line 3181
    .end local v5    # "j":I
    .end local v11    # "headBytes":[B
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    :catchall_9ed
    move-exception v0

    move-object/from16 v33, v10

    move-object v6, v0

    move-object/from16 v50, v4

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v9, v32

    move v13, v3

    move-wide/from16 v3, v19

    .end local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    goto/16 :goto_1912

    .line 3175
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    :catch_a06
    move-exception v0

    move-object/from16 v33, v10

    move-object v6, v0

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v8, v31

    move/from16 v9, v32

    move v13, v3

    move-object v3, v4

    move/from16 v4, v23

    .end local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    goto/16 :goto_1abc

    .line 3181
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v32    # "totalContinuousChunk":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "chunkIndex":I
    .restart local v9    # "totalContinuousChunk":I
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    :catchall_a1e
    move-exception v0

    move-object/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move-object/from16 v33, v10

    move-object v6, v0

    move-object/from16 v50, v4

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move v13, v3

    move-wide/from16 v3, v19

    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "chunkIndex":I
    .end local v9    # "totalContinuousChunk":I
    .end local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v32    # "totalContinuousChunk":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    goto/16 :goto_1912

    .line 3175
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v32    # "totalContinuousChunk":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "chunkIndex":I
    .restart local v9    # "totalContinuousChunk":I
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    :catch_a3b
    move-exception v0

    move-object/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move-object/from16 v33, v10

    move-object v6, v0

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move v13, v3

    move-object v3, v4

    move/from16 v4, v23

    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "chunkIndex":I
    .end local v9    # "totalContinuousChunk":I
    .end local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v32    # "totalContinuousChunk":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    goto/16 :goto_1abc

    .line 3181
    .end local v4    # "chunkLengths":[J
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v32    # "totalContinuousChunk":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "chunkIndex":I
    .restart local v9    # "totalContinuousChunk":I
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v22    # "chunkLengths":[J
    :catchall_a55
    move-exception v0

    move-object/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move-object/from16 v33, v10

    move-object v6, v0

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move-object/from16 v50, v22

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move v13, v3

    move-wide/from16 v3, v19

    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "chunkIndex":I
    .end local v9    # "totalContinuousChunk":I
    .end local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v32    # "totalContinuousChunk":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    goto/16 :goto_1912

    .line 3175
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v32    # "totalContinuousChunk":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "chunkIndex":I
    .restart local v9    # "totalContinuousChunk":I
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    :catch_a72
    move-exception v0

    move-object/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v9

    move-object/from16 v33, v10

    move-object v6, v0

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v4, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move v13, v3

    move-object/from16 v3, v22

    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "chunkIndex":I
    .end local v9    # "totalContinuousChunk":I
    .end local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v32    # "totalContinuousChunk":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    goto/16 :goto_1abc

    .line 3181
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v32    # "totalContinuousChunk":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "chunkIndex":I
    .restart local v9    # "totalContinuousChunk":I
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    :catchall_a8d
    move-exception v0

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v33, v10

    move-object v6, v0

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move-object/from16 v50, v22

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move v13, v3

    move-wide/from16 v3, v19

    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "chunkIndex":I
    .end local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    goto/16 :goto_1912

    .line 3175
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "chunkIndex":I
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    :catch_aa8
    move-exception v0

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v33, v10

    move-object v6, v0

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v4, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move v13, v3

    move-object/from16 v3, v22

    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "chunkIndex":I
    .end local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    goto/16 :goto_1abc

    .line 2918
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "chunkIndex":I
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v11    # "headBytes":[B
    .restart local v29    # "requestLine":Ljava/lang/String;
    :cond_ac1
    move-object/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v33, v10

    .line 2940
    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "chunkIndex":I
    .end local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    move-object/from16 v4, v22

    .end local v22    # "chunkLengths":[J
    .restart local v4    # "chunkLengths":[J
    :goto_ac9
    :try_start_ac9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->t1:J

    .line 2942
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, v11}, Ljava/io/OutputStream;->write([B)V

    .line 2943
    const/4 v5, 0x0

    .line 2945
    .local v5, "len":I
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->in:Ljava/io/InputStream;

    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiratUtil;->readResponseHeaders(Ljava/io/InputStream;)Lcom/android/okhttp/Response$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v6

    .line 2946
    .local v6, "rsp":Lcom/android/okhttp/Response;
    invoke-virtual {v6}, Lcom/android/okhttp/Response;->code()I

    move-result v7

    .line 2951
    .local v7, "rspCode":I
    invoke-virtual {v6}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v8

    move-object/from16 v32, v11

    .end local v11    # "headBytes":[B
    .local v32, "headBytes":[B
    const-wide/16 v10, -0x1

    invoke-static {v8, v10, v11}, Lcom/android/okhttp/internal/http/MultiratUtil;->getFullContentLength(Lcom/android/okhttp/Headers;J)J

    move-result-wide v10

    .line 2952
    .local v10, "fullSize":J
    invoke-static {v6}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v34

    move-wide/from16 v36, v34

    .line 2953
    .local v36, "conLen":J
    const/16 v8, 0xce

    if-eq v7, v8, :cond_b15

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_afe

    goto :goto_b15

    :cond_afe
    move-object/from16 v50, v4

    move/from16 v34, v5

    move-object/from16 v22, v6

    move/from16 v41, v7

    move/from16 v43, v9

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move-wide/from16 v39, v36

    move v13, v3

    move-wide/from16 v37, v10

    move-object/from16 v36, v12

    goto/16 :goto_174f

    :cond_b15
    :goto_b15
    move v8, v5

    move-object/from16 v22, v6

    move-wide/from16 v5, v36

    .end local v6    # "rsp":Lcom/android/okhttp/Response;
    .end local v36    # "conLen":J
    .local v5, "conLen":J
    .local v8, "len":I
    .local v22, "rsp":Lcom/android/okhttp/Response;
    cmp-long v34, v5, v13

    if-nez v34, :cond_173c

    move/from16 v34, v8

    .end local v8    # "len":I
    .local v34, "len":I
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mFullConSize:J
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v35
    :try_end_b26
    .catch Ljava/lang/InterruptedException; {:try_start_ac9 .. :try_end_b26} :catch_1831
    .catchall {:try_start_ac9 .. :try_end_b26} :catchall_181a

    cmp-long v8, v10, v35

    if-eqz v8, :cond_b3d

    move-object/from16 v50, v4

    move-wide/from16 v39, v5

    move/from16 v41, v7

    move/from16 v43, v9

    move-wide/from16 v37, v10

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move v13, v3

    goto/16 :goto_174f

    .line 2972
    :cond_b3d
    if-eqz v2, :cond_c3c

    .line 2973
    const/4 v2, 0x0

    .line 2974
    :try_start_b40
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_b96

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8
    :try_end_b4a
    .catch Ljava/lang/InterruptedException; {:try_start_b40 .. :try_end_b4a} :catch_c26
    .catchall {:try_start_b40 .. :try_end_b4a} :catchall_c0f

    move/from16 v35, v2

    .end local v2    # "bFirstBlockRsp":Z
    .local v35, "bFirstBlockRsp":Z
    :try_start_b4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b51
    .catch Ljava/lang/InterruptedException; {:try_start_b4c .. :try_end_b51} :catch_b80
    .catchall {:try_start_b4c .. :try_end_b51} :catchall_b69

    move-object/from16 v36, v12

    .end local v12    # "blockInfo":[J
    .local v36, "blockInfo":[J
    :try_start_b53
    const-string v12, "move to RR_SUCCESS from "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_b9a

    .line 3181
    .end local v5    # "conLen":J
    .end local v7    # "rspCode":I
    .end local v10    # "fullSize":J
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v34    # "len":I
    .end local v36    # "blockInfo":[J
    .restart local v12    # "blockInfo":[J
    :catchall_b69
    move-exception v0

    move-object/from16 v36, v12

    move-object v6, v0

    move-object/from16 v50, v4

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move v13, v3

    move-wide/from16 v3, v19

    .end local v12    # "blockInfo":[J
    .restart local v36    # "blockInfo":[J
    goto/16 :goto_1912

    .line 3175
    .end local v36    # "blockInfo":[J
    .restart local v12    # "blockInfo":[J
    :catch_b80
    move-exception v0

    move-object/from16 v36, v12

    move-object v6, v0

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v8, v31

    move/from16 v2, v35

    move v13, v3

    move-object v3, v4

    move/from16 v4, v23

    .end local v12    # "blockInfo":[J
    .restart local v36    # "blockInfo":[J
    goto/16 :goto_1abc

    .line 2974
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .restart local v2    # "bFirstBlockRsp":Z
    .restart local v5    # "conLen":J
    .restart local v7    # "rspCode":I
    .restart local v10    # "fullSize":J
    .restart local v12    # "blockInfo":[J
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .restart local v34    # "len":I
    :cond_b96
    move/from16 v35, v2

    move-object/from16 v36, v12

    .line 2975
    .end local v2    # "bFirstBlockRsp":Z
    .end local v12    # "blockInfo":[J
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v36    # "blockInfo":[J
    :goto_b9a
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v2

    monitor-enter v2
    :try_end_ba1
    .catch Ljava/lang/InterruptedException; {:try_start_b53 .. :try_end_ba1} :catch_bfb
    .catchall {:try_start_b53 .. :try_end_ba1} :catchall_be6

    .line 2976
    :try_start_ba1
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v8

    const/4 v12, 0x1

    if-ne v8, v12, :cond_bb6

    .line 2977
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 2978
    monitor-exit v2

    move-wide/from16 v3, v19

    move-wide/from16 v5, v27

    move/from16 v2, v35

    goto/16 :goto_1b00

    .line 2980
    :cond_bb6
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v8

    if-nez v8, :cond_bc5

    .line 2981
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v12, 0x3

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v8, v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    goto :goto_bdd

    .line 2983
    :cond_bc5
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v8

    const/4 v12, 0x3

    if-ne v8, v12, :cond_bdd

    .line 2984
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v12, 0x4

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v8, v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 2985
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 2987
    :cond_bdd
    :goto_bdd
    monitor-exit v2

    move/from16 v2, v35

    goto/16 :goto_c3e

    :catchall_be2
    move-exception v0

    move-object v8, v0

    monitor-exit v2
    :try_end_be5
    .catchall {:try_start_ba1 .. :try_end_be5} :catchall_be2

    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v9    # "totalContinuousChunk":I
    .end local v13    # "bytesToRead":J
    .end local v15    # "redirectedUri":Ljava/net/URI;
    .end local v19    # "iRealBlockSize":J
    .end local v21    # "otherSocketId":I
    .end local v23    # "buf_offset":I
    .end local v24    # "buf_ret":I
    .end local v25    # "totallen":J
    .end local v27    # "finalIdleWaitTime":J
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :try_start_be5
    throw v8
    :try_end_be6
    .catch Ljava/lang/InterruptedException; {:try_start_be5 .. :try_end_be6} :catch_bfb
    .catchall {:try_start_be5 .. :try_end_be6} :catchall_be6

    .line 3181
    .end local v5    # "conLen":J
    .end local v7    # "rspCode":I
    .end local v10    # "fullSize":J
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v34    # "len":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v9    # "totalContinuousChunk":I
    .restart local v13    # "bytesToRead":J
    .restart local v15    # "redirectedUri":Ljava/net/URI;
    .restart local v19    # "iRealBlockSize":J
    .restart local v21    # "otherSocketId":I
    .restart local v23    # "buf_offset":I
    .restart local v24    # "buf_ret":I
    .restart local v25    # "totallen":J
    .restart local v27    # "finalIdleWaitTime":J
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v36    # "blockInfo":[J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :catchall_be6
    move-exception v0

    move-object v6, v0

    move-object/from16 v50, v4

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move v13, v3

    move-wide/from16 v3, v19

    goto/16 :goto_1912

    .line 3175
    :catch_bfb
    move-exception v0

    move-object v6, v0

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v8, v31

    move/from16 v2, v35

    move v13, v3

    move-object v3, v4

    move/from16 v4, v23

    goto/16 :goto_1abc

    .line 3181
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .restart local v2    # "bFirstBlockRsp":Z
    .restart local v12    # "blockInfo":[J
    :catchall_c0f
    move-exception v0

    move/from16 v35, v2

    move-object/from16 v36, v12

    move-object v6, v0

    move-object/from16 v50, v4

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move v13, v3

    move-wide/from16 v3, v19

    .end local v2    # "bFirstBlockRsp":Z
    .end local v12    # "blockInfo":[J
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v36    # "blockInfo":[J
    goto/16 :goto_1912

    .line 3175
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .restart local v2    # "bFirstBlockRsp":Z
    .restart local v12    # "blockInfo":[J
    :catch_c26
    move-exception v0

    move/from16 v35, v2

    move-object/from16 v36, v12

    move-object v6, v0

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v8, v31

    move v13, v3

    move-object v3, v4

    move/from16 v4, v23

    .end local v2    # "bFirstBlockRsp":Z
    .end local v12    # "blockInfo":[J
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v36    # "blockInfo":[J
    goto/16 :goto_1abc

    .line 2972
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .restart local v2    # "bFirstBlockRsp":Z
    .restart local v5    # "conLen":J
    .restart local v7    # "rspCode":I
    .restart local v10    # "fullSize":J
    .restart local v12    # "blockInfo":[J
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .restart local v34    # "len":I
    :cond_c3c
    move-object/from16 v36, v12

    .line 2990
    .end local v12    # "blockInfo":[J
    .restart local v36    # "blockInfo":[J
    :goto_c3e
    move-wide/from16 v37, v10

    .end local v10    # "fullSize":J
    .local v37, "fullSize":J
    :try_start_c40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->t2:J

    .line 2991
    move-wide/from16 v39, v5

    .end local v5    # "conLen":J
    .local v39, "conLen":J
    iget-wide v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->t1:J

    sub-long/2addr v10, v5

    .line 2992
    .local v10, "tmpH":J
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->headerTime:[J

    iget v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    aput-wide v10, v5, v6

    .line 2993
    sget-boolean v5, Lcom/android/okhttp/internal/http/HttpEngine;->HTTPTIMER:Z
    :try_end_c59
    .catch Ljava/lang/InterruptedException; {:try_start_c40 .. :try_end_c59} :catch_1723
    .catchall {:try_start_c40 .. :try_end_c59} :catchall_170c

    if-eqz v5, :cond_ca8

    .line 2994
    :try_start_c5b
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->timer:[J

    const/4 v6, 0x1

    aget-wide v41, v5, v6

    add-long v41, v41, v10

    aput-wide v41, v5, v6

    .line 2995
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_ca8

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "time used for read range rsp header:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_c82
    .catch Ljava/lang/InterruptedException; {:try_start_c5b .. :try_end_c82} :catch_c96
    .catchall {:try_start_c5b .. :try_end_c82} :catchall_c83

    goto :goto_ca8

    .line 3181
    .end local v7    # "rspCode":I
    .end local v10    # "tmpH":J
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v34    # "len":I
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    :catchall_c83
    move-exception v0

    move-object v6, v0

    move-object/from16 v50, v4

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move v13, v3

    move-wide/from16 v3, v19

    goto/16 :goto_1912

    .line 3175
    :catch_c96
    move-exception v0

    move-object v6, v0

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v8, v31

    move v13, v3

    move-object v3, v4

    move/from16 v4, v23

    goto/16 :goto_1abc

    .line 2998
    .restart local v7    # "rspCode":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .restart local v34    # "len":I
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    :cond_ca8
    :goto_ca8
    :try_start_ca8
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_caa
    .catch Ljava/lang/InterruptedException; {:try_start_ca8 .. :try_end_caa} :catch_1723
    .catchall {:try_start_ca8 .. :try_end_caa} :catchall_170c

    if-eqz v5, :cond_cce

    :try_start_cac
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start to read body for block["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], bytes to read: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_cce
    .catch Ljava/lang/InterruptedException; {:try_start_cac .. :try_end_cce} :catch_c96
    .catchall {:try_start_cac .. :try_end_cce} :catchall_c83

    .line 3000
    :cond_cce
    :try_start_cce
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->dbuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    monitor-enter v5
    :try_end_cd1
    .catch Ljava/lang/InterruptedException; {:try_start_cce .. :try_end_cd1} :catch_1723
    .catchall {:try_start_cce .. :try_end_cd1} :catchall_170c

    .line 3001
    :try_start_cd1
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->dbuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->startReceiveData()V

    .line 3002
    monitor-exit v5
    :try_end_cd7
    .catchall {:try_start_cd1 .. :try_end_cd7} :catchall_16d6

    .line 3003
    const/4 v5, 0x0

    .line 3004
    .local v5, "listId":I
    const/4 v6, 0x0

    .line 3007
    .local v6, "dataRead":I
    :try_start_cd9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10
    :try_end_cdd
    .catch Ljava/lang/InterruptedException; {:try_start_cd9 .. :try_end_cdd} :catch_1723
    .catchall {:try_start_cd9 .. :try_end_cdd} :catchall_170c

    move/from16 v35, v2

    move v12, v6

    move/from16 v41, v7

    move-wide/from16 v7, v25

    move/from16 v2, v31

    move-wide/from16 v62, v19

    move/from16 v19, v5

    move-wide/from16 v5, v62

    .line 3008
    .end local v6    # "dataRead":I
    .end local v25    # "totallen":J
    .end local v31    # "chunkIndex":I
    .local v2, "chunkIndex":I
    .local v5, "iRealBlockSize":J
    .local v7, "totallen":J
    .local v10, "chunkStartTime":J
    .local v12, "dataRead":I
    .local v19, "listId":I
    .restart local v35    # "bFirstBlockRsp":Z
    .local v41, "rspCode":I
    :goto_cec
    cmp-long v20, v7, v13

    if-gez v20, :cond_15f2

    move-object/from16 v42, v15

    .end local v15    # "redirectedUri":Ljava/net/URI;
    .local v42, "redirectedUri":Ljava/net/URI;
    :try_start_cf2
    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v15, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z
    :try_end_cf6
    .catch Ljava/lang/InterruptedException; {:try_start_cf2 .. :try_end_cf6} :catch_15d5
    .catchall {:try_start_cf2 .. :try_end_cf6} :catchall_15b9

    if-nez v15, :cond_15a6

    .line 3010
    const/4 v15, 0x0

    .line 3013
    .local v15, "bsize":I
    if-nez v4, :cond_d32

    .line 3014
    move/from16 v43, v9

    move-wide/from16 v44, v10

    .end local v9    # "totalContinuousChunk":I
    .end local v10    # "chunkStartTime":J
    .local v43, "totalContinuousChunk":I
    .local v44, "chunkStartTime":J
    sub-long v9, v13, v7

    :try_start_d01
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9
    :try_end_d05
    .catch Ljava/lang/InterruptedException; {:try_start_d01 .. :try_end_d05} :catch_d1e
    .catchall {:try_start_d01 .. :try_end_d05} :catchall_d09

    long-to-int v9, v9

    move-wide/from16 v25, v7

    .end local v15    # "bsize":I
    .local v9, "bsize":I
    goto :goto_d41

    .line 3181
    .end local v9    # "bsize":I
    .end local v12    # "dataRead":I
    .end local v19    # "listId":I
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v34    # "len":I
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    :catchall_d09
    move-exception v0

    move/from16 v31, v2

    move-object/from16 v50, v4

    move-wide/from16 v46, v13

    move/from16 v2, v35

    move/from16 v9, v43

    move v13, v3

    move-wide v3, v5

    move-wide v14, v7

    move/from16 v8, v23

    move/from16 v5, v24

    move-object v6, v0

    goto/16 :goto_1912

    .line 3175
    :catch_d1e
    move-exception v0

    move-wide/from16 v19, v5

    move-wide/from16 v46, v13

    move/from16 v5, v24

    move/from16 v9, v43

    move-object v6, v0

    move v13, v3

    move-object v3, v4

    move-wide v14, v7

    move/from16 v4, v23

    move v8, v2

    move/from16 v2, v35

    goto/16 :goto_1abc

    .line 3016
    .end local v43    # "totalContinuousChunk":I
    .local v9, "totalContinuousChunk":I
    .restart local v10    # "chunkStartTime":J
    .restart local v12    # "dataRead":I
    .restart local v15    # "bsize":I
    .restart local v19    # "listId":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .restart local v34    # "len":I
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    :cond_d32
    move/from16 v43, v9

    move-wide/from16 v44, v10

    .end local v9    # "totalContinuousChunk":I
    .end local v10    # "chunkStartTime":J
    .restart local v43    # "totalContinuousChunk":I
    .restart local v44    # "chunkStartTime":J
    :try_start_d36
    aget-wide v9, v4, v2
    :try_end_d38
    .catch Ljava/lang/InterruptedException; {:try_start_d36 .. :try_end_d38} :catch_1589
    .catchall {:try_start_d36 .. :try_end_d38} :catchall_156d

    move-wide/from16 v25, v7

    .end local v7    # "totallen":J
    .restart local v25    # "totallen":J
    int-to-long v7, v12

    sub-long/2addr v9, v7

    :try_start_d3c
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v9, v7

    .line 3018
    .end local v15    # "bsize":I
    .local v9, "bsize":I
    :goto_d41
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_d43
    .catch Ljava/lang/InterruptedException; {:try_start_d3c .. :try_end_d43} :catch_1552
    .catchall {:try_start_d3c .. :try_end_d43} :catchall_1538

    if-eqz v7, :cond_d8b

    :try_start_d45
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RangeRequest alloc memory for new block size: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_d5f
    .catch Ljava/lang/InterruptedException; {:try_start_d45 .. :try_end_d5f} :catch_d76
    .catchall {:try_start_d45 .. :try_end_d5f} :catchall_d60

    goto :goto_d8b

    .line 3181
    .end local v9    # "bsize":I
    .end local v12    # "dataRead":I
    .end local v19    # "listId":I
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v34    # "len":I
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    :catchall_d60
    move-exception v0

    move/from16 v31, v2

    move-object/from16 v50, v4

    move-wide/from16 v46, v13

    move/from16 v8, v23

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move/from16 v9, v43

    move v13, v3

    move-wide v3, v5

    move/from16 v5, v24

    move-object v6, v0

    goto/16 :goto_1912

    .line 3175
    :catch_d76
    move-exception v0

    move v8, v2

    move-wide/from16 v19, v5

    move-wide/from16 v46, v13

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move/from16 v9, v43

    move-object v6, v0

    move v13, v3

    move-object v3, v4

    move/from16 v4, v23

    goto/16 :goto_1abc

    .line 3019
    .restart local v9    # "bsize":I
    .restart local v12    # "dataRead":I
    .restart local v19    # "listId":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .restart local v34    # "len":I
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v44    # "chunkStartTime":J
    :cond_d8b
    :goto_d8b
    :try_start_d8b
    new-array v7, v9, [B

    .line 3020
    .local v7, "buf":[B
    sget v8, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MAX_BUFFERLEN:I
    :try_end_d8f
    .catch Ljava/lang/InterruptedException; {:try_start_d8b .. :try_end_d8f} :catch_1552
    .catchall {:try_start_d8b .. :try_end_d8f} :catchall_1538

    int-to-long v10, v8

    move-wide/from16 v46, v13

    const/4 v8, 0x1

    move v14, v12

    .end local v12    # "dataRead":I
    .end local v13    # "bytesToRead":J
    .local v14, "dataRead":I
    .local v46, "bytesToRead":J
    shl-long v12, v5, v8

    :try_start_d96
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    :try_end_d98
    .catch Ljava/lang/InterruptedException; {:try_start_d96 .. :try_end_d98} :catch_151f
    .catchall {:try_start_d96 .. :try_end_d98} :catchall_1507

    move-wide/from16 v48, v5

    .end local v5    # "iRealBlockSize":J
    .local v48, "iRealBlockSize":J
    :try_start_d9a
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v5

    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5
    :try_end_da6
    .catch Ljava/lang/InterruptedException; {:try_start_d9a .. :try_end_da6} :catch_14f0
    .catchall {:try_start_d9a .. :try_end_da6} :catchall_14da

    .line 3021
    .end local v48    # "iRealBlockSize":J
    .restart local v5    # "iRealBlockSize":J
    const/4 v8, 0x0

    .line 3022
    .end local v23    # "buf_offset":I
    .local v8, "buf_offset":I
    const/4 v10, 0x0

    .line 3025
    .end local v24    # "buf_ret":I
    .local v10, "buf_ret":I
    :try_start_da8
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v11, v11, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;

    monitor-enter v11
    :try_end_dad
    .catchall {:try_start_da8 .. :try_end_dad} :catchall_1466

    .line 3026
    :goto_dad
    :try_start_dad
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v12, v12, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppReading:Z
    :try_end_db1
    .catchall {:try_start_dad .. :try_end_db1} :catchall_1449

    if-nez v12, :cond_e1a

    :try_start_db3
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v12, v12, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v12, :cond_e1a

    .line 3027
    sget-boolean v12, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_dbb
    .catchall {:try_start_db3 .. :try_end_dbb} :catchall_e0a

    if-eqz v12, :cond_dd9

    :try_start_dbd
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v12

    const-string v13, "APP not reading, waiting"

    invoke-virtual {v12, v13}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_dc8
    .catchall {:try_start_dbd .. :try_end_dc8} :catchall_dc9

    goto :goto_dd9

    .line 3035
    :catchall_dc9
    move-exception v0

    move v13, v3

    move-object/from16 v50, v4

    move-wide/from16 v48, v5

    move/from16 v51, v9

    move/from16 v20, v10

    move/from16 v12, v19

    move v10, v2

    move-object v2, v0

    goto/16 :goto_1457

    .line 3029
    :cond_dd9
    :goto_dd9
    :try_start_dd9
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v12, v12, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;
    :try_end_ddd
    .catchall {:try_start_dd9 .. :try_end_ddd} :catchall_dea

    move-wide/from16 v48, v5

    const-wide/16 v5, 0x3e8

    .end local v5    # "iRealBlockSize":J
    .restart local v48    # "iRealBlockSize":J
    :try_start_de1
    invoke-virtual {v12, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_de4
    .catchall {:try_start_de1 .. :try_end_de4} :catchall_de7

    .line 3033
    :cond_de4
    :goto_de4
    move-wide/from16 v5, v48

    goto :goto_dad

    .line 3031
    :catchall_de7
    move-exception v0

    move-object v5, v0

    goto :goto_dee

    .end local v48    # "iRealBlockSize":J
    .restart local v5    # "iRealBlockSize":J
    :catchall_dea
    move-exception v0

    move-wide/from16 v48, v5

    move-object v5, v0

    .line 3032
    .local v5, "e":Ljava/lang/Throwable;
    .restart local v48    # "iRealBlockSize":J
    :goto_dee
    :try_start_dee
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_de4

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V
    :try_end_dfb
    .catchall {:try_start_dee .. :try_end_dfb} :catchall_dfc

    goto :goto_de4

    .line 3035
    .end local v5    # "e":Ljava/lang/Throwable;
    :catchall_dfc
    move-exception v0

    move v13, v3

    move-object/from16 v50, v4

    move/from16 v51, v9

    move/from16 v20, v10

    move/from16 v12, v19

    move v10, v2

    move-object v2, v0

    goto/16 :goto_1457

    .end local v48    # "iRealBlockSize":J
    .local v5, "iRealBlockSize":J
    :catchall_e0a
    move-exception v0

    move-wide/from16 v48, v5

    move v13, v3

    move-object/from16 v50, v4

    move/from16 v51, v9

    move/from16 v20, v10

    move/from16 v12, v19

    move v10, v2

    move-object v2, v0

    .end local v5    # "iRealBlockSize":J
    .restart local v48    # "iRealBlockSize":J
    goto/16 :goto_1457

    .line 3026
    .end local v48    # "iRealBlockSize":J
    .restart local v5    # "iRealBlockSize":J
    :cond_e1a
    move-wide/from16 v48, v5

    .line 3035
    .end local v5    # "iRealBlockSize":J
    .restart local v48    # "iRealBlockSize":J
    :try_start_e1c
    monitor-exit v11
    :try_end_e1d
    .catchall {:try_start_e1c .. :try_end_e1d} :catchall_143c

    .line 3038
    int-to-long v5, v8

    .line 3039
    .local v5, "prevOffset":J
    :try_start_e1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 3040
    .local v11, "blockStartTime":J
    move-wide/from16 v23, v11

    .line 3041
    .local v23, "prevTime":J
    :goto_e24
    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->in:Ljava/io/InputStream;

    array-length v15, v7

    sub-int/2addr v15, v8

    invoke-virtual {v13, v7, v8, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v13
    :try_end_e2c
    .catchall {:try_start_e1e .. :try_end_e2c} :catchall_1428

    move v15, v13

    .end local v34    # "len":I
    .local v15, "len":I
    if-lez v13, :cond_f2a

    .line 3042
    move v13, v9

    move/from16 v20, v10

    .end local v9    # "bsize":I
    .end local v10    # "buf_ret":I
    .local v13, "bsize":I
    .local v20, "buf_ret":I
    int-to-long v9, v15

    add-long v25, v25, v9

    .line 3043
    :try_start_e35
    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->totalReadSize:J
    :try_end_e37
    .catchall {:try_start_e35 .. :try_end_e37} :catchall_f18

    move/from16 v31, v2

    move/from16 v50, v3

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .restart local v31    # "chunkIndex":I
    .local v50, "currentBlockNumber":I
    int-to-long v2, v15

    add-long/2addr v9, v2

    :try_start_e3d
    iput-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->totalReadSize:J
    :try_end_e3f
    .catchall {:try_start_e3d .. :try_end_e3f} :catchall_f04

    .line 3044
    add-int/2addr v8, v15

    .line 3045
    add-int/2addr v14, v15

    .line 3048
    :try_start_e41
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->toBeReadLen:[J

    iget v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    aget-wide v9, v2, v3
    :try_end_e4d
    .catchall {:try_start_e41 .. :try_end_e4d} :catchall_ef0

    move/from16 v51, v13

    move/from16 v34, v14

    .end local v13    # "bsize":I
    .end local v14    # "dataRead":I
    .local v34, "dataRead":I
    .local v51, "bsize":I
    int-to-long v13, v15

    sub-long/2addr v9, v13

    :try_start_e53
    aput-wide v9, v2, v3

    .line 3049
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3050
    .local v2, "curTime":J
    int-to-long v9, v8

    .line 3051
    .local v9, "curOffset":J
    sub-long v13, v2, v44

    .line 3052
    .local v13, "diffTime":J
    sub-long v52, v2, v23

    .line 3053
    .local v52, "offsetTime":J
    sub-long v54, v9, v5

    .line 3054
    .local v54, "diffOffset":J
    move-wide/from16 v56, v5

    .end local v5    # "prevOffset":J
    .local v56, "prevOffset":J
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget v5, v5, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_BYTES_TO_CALC_SPEED:I

    int-to-long v5, v5

    cmp-long v5, v25, v5

    if-gez v5, :cond_e8f

    sget v5, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_BYTES_TO_CALC_INIT_SPEED:I

    int-to-long v5, v5

    cmp-long v5, v25, v5

    if-ltz v5, :cond_e84

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 3055
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v5

    iget v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getSpeed(I)J

    move-result-wide v5

    const-wide/16 v58, 0x0

    cmp-long v5, v5, v58

    if-eqz v5, :cond_e8b

    :cond_e84
    sget v5, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_MILS_TO_CALC_SPEED:I

    int-to-long v5, v5

    cmp-long v5, v13, v5

    if-ltz v5, :cond_e8c

    :cond_e8b
    goto :goto_e8f

    :cond_e8c
    move-wide/from16 v58, v13

    goto :goto_ebb

    .line 3058
    :cond_e8f
    :goto_e8f
    sget v5, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MINSIZEFORSPEED:I

    int-to-long v5, v5

    cmp-long v5, v54, v5

    if-ltz v5, :cond_e9c

    const-wide/16 v5, 0x5

    cmp-long v5, v52, v5

    if-gez v5, :cond_ea2

    :cond_e9c
    const-wide/16 v5, 0x1e

    cmp-long v5, v52, v5

    if-ltz v5, :cond_eb9

    .line 3059
    :cond_ea2
    const-wide/16 v5, 0x8

    mul-long v5, v5, v25

    div-long/2addr v5, v13

    .line 3060
    .local v5, "tmpSpeed":J
    move-wide/from16 v58, v13

    .end local v13    # "diffTime":J
    .local v58, "diffTime":J
    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v13

    iget v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v13, v14, v5, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->setSpeed(IJ)V

    .line 3061
    move-wide v13, v9

    .line 3062
    .end local v56    # "prevOffset":J
    .local v13, "prevOffset":J
    move-wide/from16 v23, v2

    move-wide v5, v13

    goto :goto_ebd

    .line 3058
    .end local v5    # "tmpSpeed":J
    .end local v58    # "diffTime":J
    .local v13, "diffTime":J
    .restart local v56    # "prevOffset":J
    :cond_eb9
    move-wide/from16 v58, v13

    .line 3066
    .end local v13    # "diffTime":J
    .restart local v58    # "diffTime":J
    :goto_ebb
    move-wide/from16 v5, v56

    .end local v56    # "prevOffset":J
    .local v5, "prevOffset":J
    :goto_ebd
    sub-long v13, v2, v11

    const-wide/16 v16, 0x3e8

    cmp-long v13, v13, v16

    if-lez v13, :cond_ed2

    .line 3067
    new-array v13, v8, [B

    .line 3068
    .local v13, "tmpBuf":[B
    const/4 v14, 0x0

    invoke-static {v7, v14, v13, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_ecb
    .catchall {:try_start_e53 .. :try_end_ecb} :catchall_ee0

    .line 3069
    move-object v7, v13

    .line 3071
    move-wide/from16 v2, v25

    move/from16 v14, v34

    goto/16 :goto_f36

    .line 3073
    .end local v2    # "curTime":J
    .end local v9    # "curOffset":J
    .end local v13    # "tmpBuf":[B
    .end local v52    # "offsetTime":J
    .end local v54    # "diffOffset":J
    .end local v58    # "diffTime":J
    :cond_ed2
    move/from16 v10, v20

    move/from16 v2, v31

    move/from16 v14, v34

    move/from16 v3, v50

    move/from16 v9, v51

    move/from16 v34, v15

    goto/16 :goto_e24

    .line 3076
    .end local v5    # "prevOffset":J
    .end local v11    # "blockStartTime":J
    .end local v23    # "prevTime":J
    :catchall_ee0
    move-exception v0

    move-object v3, v0

    move v2, v15

    move/from16 v12, v19

    move-wide/from16 v14, v25

    move/from16 v10, v31

    move/from16 v13, v50

    move-object/from16 v50, v4

    move v4, v8

    goto/16 :goto_147b

    .end local v34    # "dataRead":I
    .end local v51    # "bsize":I
    .local v13, "bsize":I
    .restart local v14    # "dataRead":I
    :catchall_ef0
    move-exception v0

    move/from16 v51, v13

    move/from16 v34, v14

    move-object v3, v0

    move v2, v15

    move/from16 v12, v19

    move-wide/from16 v14, v25

    move/from16 v10, v31

    move/from16 v13, v50

    move-object/from16 v50, v4

    move v4, v8

    .end local v13    # "bsize":I
    .end local v14    # "dataRead":I
    .restart local v34    # "dataRead":I
    .restart local v51    # "bsize":I
    goto/16 :goto_147b

    .end local v34    # "dataRead":I
    .end local v51    # "bsize":I
    .restart local v13    # "bsize":I
    .restart local v14    # "dataRead":I
    :catchall_f04
    move-exception v0

    move/from16 v51, v13

    move-object v3, v0

    move/from16 v34, v14

    move v2, v15

    move/from16 v12, v19

    move-wide/from16 v14, v25

    move/from16 v10, v31

    move/from16 v13, v50

    move-object/from16 v50, v4

    move v4, v8

    .end local v13    # "bsize":I
    .restart local v51    # "bsize":I
    goto/16 :goto_147b

    .end local v31    # "chunkIndex":I
    .end local v50    # "currentBlockNumber":I
    .end local v51    # "bsize":I
    .local v2, "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v13    # "bsize":I
    :catchall_f18
    move-exception v0

    move/from16 v51, v13

    move v10, v2

    move v13, v3

    move-object/from16 v50, v4

    move v4, v8

    move/from16 v34, v14

    move v2, v15

    move/from16 v12, v19

    move-wide/from16 v14, v25

    move-object v3, v0

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v13    # "bsize":I
    .restart local v31    # "chunkIndex":I
    .restart local v50    # "currentBlockNumber":I
    .restart local v51    # "bsize":I
    goto/16 :goto_147b

    .line 3041
    .end local v20    # "buf_ret":I
    .end local v31    # "chunkIndex":I
    .end local v50    # "currentBlockNumber":I
    .end local v51    # "bsize":I
    .restart local v2    # "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v5    # "prevOffset":J
    .local v9, "bsize":I
    .restart local v10    # "buf_ret":I
    .restart local v11    # "blockStartTime":J
    .restart local v23    # "prevTime":J
    :cond_f2a
    move/from16 v31, v2

    move/from16 v50, v3

    move-wide/from16 v56, v5

    move/from16 v51, v9

    move/from16 v20, v10

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v5    # "prevOffset":J
    .end local v9    # "bsize":I
    .end local v10    # "buf_ret":I
    .restart local v20    # "buf_ret":I
    .restart local v31    # "chunkIndex":I
    .restart local v50    # "currentBlockNumber":I
    .restart local v51    # "bsize":I
    .restart local v56    # "prevOffset":J
    move-wide/from16 v2, v25

    .line 3086
    .end local v11    # "blockStartTime":J
    .end local v23    # "prevTime":J
    .end local v25    # "totallen":J
    .end local v56    # "prevOffset":J
    .local v2, "totallen":J
    :goto_f36
    nop

    .line 3089
    :try_start_f37
    array-length v5, v7
    :try_end_f38
    .catch Ljava/lang/InterruptedException; {:try_start_f37 .. :try_end_f38} :catch_140e
    .catchall {:try_start_f37 .. :try_end_f38} :catchall_13f9

    if-ne v8, v5, :cond_130b

    .line 3090
    const-wide/16 v5, 0x0

    .line 3091
    .local v5, "tmp":J
    :try_start_f3c
    sget-boolean v9, Lcom/android/okhttp/internal/http/HttpEngine;->HTTPTIMER:Z
    :try_end_f3e
    .catch Ljava/lang/InterruptedException; {:try_start_f3c .. :try_end_f3e} :catch_12f1
    .catchall {:try_start_f3c .. :try_end_f3e} :catchall_12dc

    if-eqz v9, :cond_f6a

    :try_start_f40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_f44
    .catch Ljava/lang/InterruptedException; {:try_start_f40 .. :try_end_f44} :catch_f57
    .catchall {:try_start_f40 .. :try_end_f44} :catchall_f46

    move-wide v5, v9

    goto :goto_f6a

    .line 3181
    .end local v5    # "tmp":J
    .end local v7    # "buf":[B
    .end local v14    # "dataRead":I
    .end local v15    # "len":I
    .end local v19    # "listId":I
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    .end local v51    # "bsize":I
    :catchall_f46
    move-exception v0

    move-object v6, v0

    move-wide v14, v2

    move/from16 v5, v20

    move/from16 v2, v35

    move/from16 v9, v43

    move/from16 v13, v50

    move-object/from16 v50, v4

    move-wide/from16 v3, v48

    goto/16 :goto_1912

    .line 3175
    :catch_f57
    move-exception v0

    move-object v6, v0

    move-wide v14, v2

    move-object v3, v4

    move v4, v8

    move/from16 v5, v20

    move/from16 v8, v31

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move/from16 v13, v50

    goto/16 :goto_1abc

    .line 3092
    .restart local v5    # "tmp":J
    .restart local v7    # "buf":[B
    .restart local v14    # "dataRead":I
    .restart local v15    # "len":I
    .restart local v19    # "listId":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v44    # "chunkStartTime":J
    .restart local v51    # "bsize":I
    :cond_f6a
    :goto_f6a
    :try_start_f6a
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->dbuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    monitor-enter v9
    :try_end_f6d
    .catch Ljava/lang/InterruptedException; {:try_start_f6a .. :try_end_f6d} :catch_12f1
    .catchall {:try_start_f6a .. :try_end_f6d} :catchall_12dc

    .line 3093
    :try_start_f6d
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->dbuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    iget v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    array-length v12, v7

    invoke-virtual {v10, v11, v7, v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->push(I[BI)J

    move-result-wide v10
    :try_end_f76
    .catchall {:try_start_f6d .. :try_end_f76} :catchall_12a6

    long-to-int v10, v10

    .line 3094
    .end local v20    # "buf_ret":I
    .restart local v10    # "buf_ret":I
    if-gez v10, :cond_100f

    .line 3095
    :try_start_f79
    sget-boolean v11, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v11, :cond_fc9

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This block is already read by another socket, this socket is slow: block["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f8d
    .catchall {:try_start_f79 .. :try_end_f8d} :catchall_ffd

    move/from16 v13, v50

    .end local v50    # "currentBlockNumber":I
    .local v13, "currentBlockNumber":I
    :try_start_f8f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_f92
    .catchall {:try_start_f8f .. :try_end_f92} :catchall_fb9

    move/from16 v20, v10

    .end local v10    # "buf_ret":I
    .restart local v20    # "buf_ret":I
    :try_start_f94
    const-string v10, "], socket["

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_faa
    .catchall {:try_start_f94 .. :try_end_faa} :catchall_fab

    goto :goto_fcd

    .line 3104
    :catchall_fab
    move-exception v0

    move-object/from16 v50, v4

    move/from16 v23, v8

    move/from16 v12, v19

    move/from16 v10, v31

    move-object v4, v0

    move-object/from16 v19, v7

    goto/16 :goto_12b4

    .end local v20    # "buf_ret":I
    .restart local v10    # "buf_ret":I
    :catchall_fb9
    move-exception v0

    move/from16 v20, v10

    move-object/from16 v50, v4

    move/from16 v23, v8

    move/from16 v12, v19

    move/from16 v10, v31

    move-object v4, v0

    move-object/from16 v19, v7

    .end local v10    # "buf_ret":I
    .restart local v20    # "buf_ret":I
    goto/16 :goto_12b4

    .line 3095
    .end local v13    # "currentBlockNumber":I
    .end local v20    # "buf_ret":I
    .restart local v10    # "buf_ret":I
    .restart local v50    # "currentBlockNumber":I
    :cond_fc9
    move/from16 v20, v10

    move/from16 v13, v50

    .line 3096
    .end local v10    # "buf_ret":I
    .end local v50    # "currentBlockNumber":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v20    # "buf_ret":I
    :goto_fcd
    int-to-long v10, v8

    sub-long/2addr v2, v10

    .line 3097
    :try_start_fcf
    iget-wide v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->totalReadSize:J
    :try_end_fd1
    .catchall {:try_start_fcf .. :try_end_fd1} :catchall_fed

    move-wide/from16 v23, v2

    .end local v2    # "totallen":J
    .local v23, "totallen":J
    int-to-long v2, v8

    sub-long/2addr v10, v2

    :try_start_fd5
    iput-wide v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    .line 3098
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    .end local v4    # "chunkLengths":[J
    .end local v5    # "tmp":J
    .end local v7    # "buf":[B
    .end local v8    # "buf_offset":I
    .end local v13    # "currentBlockNumber":I
    .end local v14    # "dataRead":I
    .end local v15    # "len":I
    .end local v19    # "listId":I
    .end local v20    # "buf_ret":I
    .end local v21    # "otherSocketId":I
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v23    # "totallen":J
    .end local v27    # "finalIdleWaitTime":J
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v32    # "headBytes":[B
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v44    # "chunkStartTime":J
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v51    # "bsize":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    throw v2
    :try_end_fdd
    .catchall {:try_start_fd5 .. :try_end_fdd} :catchall_fdd

    .line 3104
    .restart local v4    # "chunkLengths":[J
    .restart local v5    # "tmp":J
    .restart local v7    # "buf":[B
    .restart local v8    # "buf_offset":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v14    # "dataRead":I
    .restart local v15    # "len":I
    .restart local v19    # "listId":I
    .restart local v20    # "buf_ret":I
    .restart local v21    # "otherSocketId":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v23    # "totallen":J
    .restart local v27    # "finalIdleWaitTime":J
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v32    # "headBytes":[B
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v36    # "blockInfo":[J
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v44    # "chunkStartTime":J
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v51    # "bsize":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :catchall_fdd
    move-exception v0

    move-object/from16 v50, v4

    move/from16 v12, v19

    move-wide/from16 v2, v23

    move/from16 v10, v31

    move-object v4, v0

    move-object/from16 v19, v7

    move/from16 v23, v8

    goto/16 :goto_12b4

    .end local v23    # "totallen":J
    .restart local v2    # "totallen":J
    :catchall_fed
    move-exception v0

    move-wide/from16 v23, v2

    move-object/from16 v50, v4

    move/from16 v12, v19

    move/from16 v10, v31

    move-object v4, v0

    move-object/from16 v19, v7

    move/from16 v23, v8

    .end local v2    # "totallen":J
    .restart local v23    # "totallen":J
    goto/16 :goto_12b4

    .end local v13    # "currentBlockNumber":I
    .end local v20    # "buf_ret":I
    .end local v23    # "totallen":J
    .restart local v2    # "totallen":J
    .restart local v10    # "buf_ret":I
    .restart local v50    # "currentBlockNumber":I
    :catchall_ffd
    move-exception v0

    move/from16 v20, v10

    move/from16 v13, v50

    move-object/from16 v50, v4

    move/from16 v23, v8

    move/from16 v12, v19

    move/from16 v10, v31

    move-object v4, v0

    move-object/from16 v19, v7

    .end local v10    # "buf_ret":I
    .end local v50    # "currentBlockNumber":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v20    # "buf_ret":I
    goto/16 :goto_12b4

    .line 3101
    .end local v13    # "currentBlockNumber":I
    .end local v20    # "buf_ret":I
    .restart local v10    # "buf_ret":I
    .restart local v50    # "currentBlockNumber":I
    :cond_100f
    move/from16 v20, v10

    move/from16 v13, v50

    .end local v10    # "buf_ret":I
    .end local v50    # "currentBlockNumber":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v20    # "buf_ret":I
    :try_start_1013
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->dbuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V
    :try_end_1018
    .catchall {:try_start_1013 .. :try_end_1018} :catchall_1019

    goto :goto_101a

    .line 3103
    :catchall_1019
    move-exception v0

    :goto_101a
    nop

    .line 3104
    :try_start_101b
    monitor-exit v9
    :try_end_101c
    .catchall {:try_start_101b .. :try_end_101c} :catchall_1299

    .line 3105
    :try_start_101c
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_101e
    .catch Ljava/lang/InterruptedException; {:try_start_101c .. :try_end_101e} :catch_1281
    .catchall {:try_start_101c .. :try_end_101e} :catchall_126e

    if-eqz v9, :cond_1072

    :try_start_1020
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RangeRequest response buffer["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v11, v13, v31

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v19, 0x1

    move/from16 v12, v19

    .end local v19    # "listId":I
    .local v11, "listId":I
    .local v12, "listId":I
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v12    # "listId":I
    const-string v12, "] inserted: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v7

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_1051
    .catch Ljava/lang/InterruptedException; {:try_start_1020 .. :try_end_1051} :catch_1061
    .catchall {:try_start_1020 .. :try_end_1051} :catchall_1052

    goto :goto_1075

    .line 3181
    .end local v5    # "tmp":J
    .end local v7    # "buf":[B
    .end local v11    # "listId":I
    .end local v14    # "dataRead":I
    .end local v15    # "len":I
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    .end local v51    # "bsize":I
    :catchall_1052
    move-exception v0

    move-object v6, v0

    move-wide v14, v2

    move-object/from16 v50, v4

    move/from16 v5, v20

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    goto/16 :goto_1912

    .line 3175
    :catch_1061
    move-exception v0

    move-object v6, v0

    move-wide v14, v2

    move-object v3, v4

    move v4, v8

    move/from16 v5, v20

    move/from16 v8, v31

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    goto/16 :goto_1abc

    .line 3105
    .restart local v5    # "tmp":J
    .restart local v7    # "buf":[B
    .restart local v14    # "dataRead":I
    .restart local v15    # "len":I
    .restart local v19    # "listId":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v44    # "chunkStartTime":J
    .restart local v51    # "bsize":I
    :cond_1072
    move/from16 v12, v19

    .end local v19    # "listId":I
    .restart local v12    # "listId":I
    move v11, v12

    .line 3109
    .end local v12    # "listId":I
    .restart local v11    # "listId":I
    :goto_1075
    if-eqz v4, :cond_123a

    .line 3111
    int-to-long v9, v14

    :try_start_1078
    aget-wide v23, v4, v31
    :try_end_107a
    .catch Ljava/lang/InterruptedException; {:try_start_1078 .. :try_end_107a} :catch_1281
    .catchall {:try_start_1078 .. :try_end_107a} :catchall_126e

    cmp-long v9, v9, v23

    if-nez v9, :cond_1150

    add-int/lit8 v9, v43, -0x1

    move/from16 v10, v31

    .end local v31    # "chunkIndex":I
    .local v10, "chunkIndex":I
    if-ge v10, v9, :cond_1149

    .line 3112
    add-int/lit8 v9, v10, 0x1

    .line 3113
    .end local v10    # "chunkIndex":I
    .local v9, "chunkIndex":I
    add-int v10, v13, v9

    .line 3114
    .local v10, "blockNum":I
    move-object/from16 v19, v7

    move/from16 v23, v8

    .end local v7    # "buf":[B
    .end local v8    # "buf_offset":I
    .local v19, "buf":[B
    .local v23, "buf_offset":I
    int-to-long v7, v10

    :try_start_108d
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v24

    mul-long v7, v7, v24

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v24

    add-long v7, v7, v24

    .line 3116
    .local v7, "startIndex":J
    const/4 v14, 0x0

    .line 3117
    const/4 v11, 0x0

    .line 3121
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v12

    monitor-enter v12
    :try_end_10a6
    .catch Ljava/lang/InterruptedException; {:try_start_108d .. :try_end_10a6} :catch_1135
    .catchall {:try_start_108d .. :try_end_10a6} :catchall_1122

    .line 3122
    move/from16 v24, v11

    .end local v11    # "listId":I
    .local v24, "listId":I
    :try_start_10a8
    new-instance v11, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    :try_end_10aa
    .catchall {:try_start_10a8 .. :try_end_10aa} :catchall_10f4

    move/from16 v25, v14

    .end local v14    # "dataRead":I
    .local v25, "dataRead":I
    :try_start_10ac
    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    aget-wide v57, v4, v9

    new-instance v59, Ljava/util/LinkedList;

    invoke-direct/range {v59 .. v59}, Ljava/util/LinkedList;-><init>()V
    :try_end_10b5
    .catchall {:try_start_10ac .. :try_end_10b5} :catchall_10ef

    move-object/from16 v50, v4

    .end local v4    # "chunkLengths":[J
    .local v50, "chunkLengths":[J
    :try_start_10b7
    iget v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    const/16 v61, 0x1

    move-object/from16 v52, v11

    move-object/from16 v53, v14

    move-wide/from16 v54, v7

    move/from16 v56, v10

    move/from16 v60, v4

    invoke-direct/range {v52 .. v61}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;-><init>(Lcom/android/okhttp/internal/http/MultiSocketInputStream;JIJLjava/util/LinkedList;II)V

    iput-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->dbuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    .line 3125
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v10}, Ljava/lang/Integer;-><init>(I)V

    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->dbuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v4, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3126
    monitor-exit v12
    :try_end_10db
    .catchall {:try_start_10b7 .. :try_end_10db} :catchall_111f

    .line 3127
    :try_start_10db
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->dbuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    monitor-enter v4
    :try_end_10de
    .catch Ljava/lang/InterruptedException; {:try_start_10db .. :try_end_10de} :catch_110d
    .catchall {:try_start_10db .. :try_end_10de} :catchall_10fc

    .line 3128
    :try_start_10de
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->dbuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->startReceiveData()V

    .line 3129
    monitor-exit v4

    move v8, v9

    move/from16 v11, v24

    move/from16 v14, v25

    goto/16 :goto_1159

    :catchall_10eb
    move-exception v0

    move-object v11, v0

    monitor-exit v4
    :try_end_10ee
    .catchall {:try_start_10de .. :try_end_10ee} :catchall_10eb

    .end local v2    # "totallen":J
    .end local v9    # "chunkIndex":I
    .end local v13    # "currentBlockNumber":I
    .end local v20    # "buf_ret":I
    .end local v21    # "otherSocketId":I
    .end local v23    # "buf_offset":I
    .end local v27    # "finalIdleWaitTime":J
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :try_start_10ee
    throw v11
    :try_end_10ef
    .catch Ljava/lang/InterruptedException; {:try_start_10ee .. :try_end_10ef} :catch_110d
    .catchall {:try_start_10ee .. :try_end_10ef} :catchall_10fc

    .line 3126
    .restart local v2    # "totallen":J
    .restart local v4    # "chunkLengths":[J
    .restart local v9    # "chunkIndex":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v20    # "buf_ret":I
    .restart local v21    # "otherSocketId":I
    .restart local v23    # "buf_offset":I
    .restart local v27    # "finalIdleWaitTime":J
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :catchall_10ef
    move-exception v0

    move-object/from16 v50, v4

    move-object v4, v0

    .end local v4    # "chunkLengths":[J
    .restart local v50    # "chunkLengths":[J
    goto :goto_10fa

    .end local v25    # "dataRead":I
    .end local v50    # "chunkLengths":[J
    .restart local v4    # "chunkLengths":[J
    .restart local v14    # "dataRead":I
    :catchall_10f4
    move-exception v0

    move-object/from16 v50, v4

    move/from16 v25, v14

    move-object v4, v0

    .end local v4    # "chunkLengths":[J
    .end local v14    # "dataRead":I
    .restart local v25    # "dataRead":I
    .restart local v50    # "chunkLengths":[J
    :goto_10fa
    :try_start_10fa
    monitor-exit v12
    :try_end_10fb
    .catchall {:try_start_10fa .. :try_end_10fb} :catchall_111f

    .end local v2    # "totallen":J
    .end local v9    # "chunkIndex":I
    .end local v13    # "currentBlockNumber":I
    .end local v20    # "buf_ret":I
    .end local v21    # "otherSocketId":I
    .end local v23    # "buf_offset":I
    .end local v27    # "finalIdleWaitTime":J
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :try_start_10fb
    throw v4
    :try_end_10fc
    .catch Ljava/lang/InterruptedException; {:try_start_10fb .. :try_end_10fc} :catch_110d
    .catchall {:try_start_10fb .. :try_end_10fc} :catchall_10fc

    .line 3181
    .end local v5    # "tmp":J
    .end local v7    # "startIndex":J
    .end local v10    # "blockNum":I
    .end local v15    # "len":I
    .end local v19    # "buf":[B
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v24    # "listId":I
    .end local v25    # "dataRead":I
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    .end local v51    # "bsize":I
    .restart local v2    # "totallen":J
    .restart local v9    # "chunkIndex":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v20    # "buf_ret":I
    .restart local v21    # "otherSocketId":I
    .restart local v23    # "buf_offset":I
    .restart local v27    # "finalIdleWaitTime":J
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :catchall_10fc
    move-exception v0

    move-object v6, v0

    move-wide v14, v2

    move/from16 v31, v9

    move/from16 v5, v20

    move/from16 v8, v23

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    goto/16 :goto_1912

    .line 3175
    :catch_110d
    move-exception v0

    move-object v6, v0

    move-wide v14, v2

    move v8, v9

    move/from16 v5, v20

    move/from16 v4, v23

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    goto/16 :goto_1abc

    .line 3126
    .restart local v5    # "tmp":J
    .restart local v7    # "startIndex":J
    .restart local v10    # "blockNum":I
    .restart local v15    # "len":I
    .restart local v19    # "buf":[B
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v24    # "listId":I
    .restart local v25    # "dataRead":I
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v44    # "chunkStartTime":J
    .restart local v51    # "bsize":I
    :catchall_111f
    move-exception v0

    move-object v4, v0

    goto :goto_10fa

    .line 3181
    .end local v5    # "tmp":J
    .end local v7    # "startIndex":J
    .end local v10    # "blockNum":I
    .end local v15    # "len":I
    .end local v19    # "buf":[B
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v24    # "listId":I
    .end local v25    # "dataRead":I
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    .end local v50    # "chunkLengths":[J
    .end local v51    # "bsize":I
    .restart local v4    # "chunkLengths":[J
    :catchall_1122
    move-exception v0

    move-object/from16 v50, v4

    move-object v6, v0

    move-wide v14, v2

    move/from16 v31, v9

    move/from16 v5, v20

    move/from16 v8, v23

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    .end local v4    # "chunkLengths":[J
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1912

    .line 3175
    .end local v50    # "chunkLengths":[J
    .restart local v4    # "chunkLengths":[J
    :catch_1135
    move-exception v0

    move-object/from16 v50, v4

    move-object v6, v0

    move-wide v14, v2

    move v8, v9

    move/from16 v5, v20

    move/from16 v4, v23

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    .end local v4    # "chunkLengths":[J
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1abc

    .line 3111
    .end local v9    # "chunkIndex":I
    .end local v23    # "buf_offset":I
    .end local v50    # "chunkLengths":[J
    .restart local v4    # "chunkLengths":[J
    .restart local v5    # "tmp":J
    .local v7, "buf":[B
    .restart local v8    # "buf_offset":I
    .local v10, "chunkIndex":I
    .restart local v11    # "listId":I
    .restart local v14    # "dataRead":I
    .restart local v15    # "len":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v44    # "chunkStartTime":J
    .restart local v51    # "bsize":I
    :cond_1149
    move-object/from16 v50, v4

    move-object/from16 v19, v7

    move/from16 v23, v8

    .end local v4    # "chunkLengths":[J
    .end local v7    # "buf":[B
    .end local v8    # "buf_offset":I
    .restart local v19    # "buf":[B
    .restart local v23    # "buf_offset":I
    .restart local v50    # "chunkLengths":[J
    goto :goto_1158

    .end local v10    # "chunkIndex":I
    .end local v19    # "buf":[B
    .end local v23    # "buf_offset":I
    .end local v50    # "chunkLengths":[J
    .restart local v4    # "chunkLengths":[J
    .restart local v7    # "buf":[B
    .restart local v8    # "buf_offset":I
    .restart local v31    # "chunkIndex":I
    :cond_1150
    move-object/from16 v50, v4

    move-object/from16 v19, v7

    move/from16 v23, v8

    move/from16 v10, v31

    .line 3132
    .end local v4    # "chunkLengths":[J
    .end local v7    # "buf":[B
    .end local v8    # "buf_offset":I
    .end local v31    # "chunkIndex":I
    .restart local v10    # "chunkIndex":I
    .restart local v19    # "buf":[B
    .restart local v23    # "buf_offset":I
    .restart local v50    # "chunkLengths":[J
    :goto_1158
    move v8, v10

    .end local v10    # "chunkIndex":I
    .local v8, "chunkIndex":I
    :goto_1159
    :try_start_1159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 3138
    .local v9, "startChunkTime":J
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_1164
    .catch Ljava/lang/InterruptedException; {:try_start_1159 .. :try_end_1164} :catch_1227
    .catchall {:try_start_1159 .. :try_end_1164} :catchall_1214

    .line 3139
    :goto_1164
    :try_start_1164
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iMaxBlockNumber:I
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v12
    :try_end_1174
    .catchall {:try_start_1164 .. :try_end_1174} :catchall_11e5

    if-lt v7, v12, :cond_11a1

    .line 3141
    :try_start_1176
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v7

    sget v12, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_TIME_TILL_READ_FROM_COMMON_BUFFER:I
    :try_end_117e
    .catchall {:try_start_1176 .. :try_end_117e} :catchall_1188

    move/from16 v24, v11

    .end local v11    # "listId":I
    .restart local v24    # "listId":I
    int-to-long v11, v12

    :try_start_1181
    invoke-virtual {v7, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_1184
    .catchall {:try_start_1181 .. :try_end_1184} :catchall_1185

    goto :goto_1199

    .line 3142
    :catchall_1185
    move-exception v0

    move-object v7, v0

    goto :goto_118c

    .end local v24    # "listId":I
    .restart local v11    # "listId":I
    :catchall_1188
    move-exception v0

    move/from16 v24, v11

    move-object v7, v0

    .line 3143
    .end local v11    # "listId":I
    .local v7, "e":Ljava/lang/Throwable;
    .restart local v24    # "listId":I
    :goto_118c
    :try_start_118c
    sget-boolean v11, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v11, :cond_1199

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V
    :try_end_1199
    .catchall {:try_start_118c .. :try_end_1199} :catchall_119c

    .line 3144
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_1199
    :goto_1199
    move/from16 v11, v24

    goto :goto_1164

    .line 3155
    :catchall_119c
    move-exception v0

    move-object v7, v0

    move/from16 v25, v8

    goto :goto_11eb

    .line 3150
    .end local v24    # "listId":I
    .restart local v11    # "listId":I
    :cond_11a1
    move/from16 v24, v11

    .end local v11    # "listId":I
    .restart local v24    # "listId":I
    :try_start_11a3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    sget v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I
    :try_end_11aa
    .catchall {:try_start_11a3 .. :try_end_11aa} :catchall_11e0

    move/from16 v25, v8

    .end local v8    # "chunkIndex":I
    .local v25, "chunkIndex":I
    int-to-long v7, v7

    cmp-long v7, v11, v7

    if-lez v7, :cond_11d8

    :try_start_11b1
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 3151
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v11

    cmp-long v7, v7, v11

    if-gtz v7, :cond_11d8

    .line 3152
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_11d0

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    const-string v8, "RangeRequest wait time out"

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3153
    :cond_11d0
    new-instance v7, Ljava/io/IOException;

    const-string v8, "main thread is not reading!"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "totallen":J
    .end local v5    # "tmp":J
    .end local v9    # "startChunkTime":J
    .end local v13    # "currentBlockNumber":I
    .end local v14    # "dataRead":I
    .end local v15    # "len":I
    .end local v19    # "buf":[B
    .end local v20    # "buf_ret":I
    .end local v21    # "otherSocketId":I
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v23    # "buf_offset":I
    .end local v24    # "listId":I
    .end local v25    # "chunkIndex":I
    .end local v27    # "finalIdleWaitTime":J
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v32    # "headBytes":[B
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v44    # "chunkStartTime":J
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .end local v51    # "bsize":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    throw v7

    .line 3155
    .restart local v2    # "totallen":J
    .restart local v5    # "tmp":J
    .restart local v9    # "startChunkTime":J
    .restart local v13    # "currentBlockNumber":I
    .restart local v14    # "dataRead":I
    .restart local v15    # "len":I
    .restart local v19    # "buf":[B
    .restart local v20    # "buf_ret":I
    .restart local v21    # "otherSocketId":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v23    # "buf_offset":I
    .restart local v24    # "listId":I
    .restart local v25    # "chunkIndex":I
    .restart local v27    # "finalIdleWaitTime":J
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v32    # "headBytes":[B
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v36    # "blockInfo":[J
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v44    # "chunkStartTime":J
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    .restart local v51    # "bsize":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :cond_11d8
    monitor-exit v4

    move v12, v14

    move/from16 v11, v24

    move/from16 v10, v25

    goto/16 :goto_1243

    .end local v25    # "chunkIndex":I
    .restart local v8    # "chunkIndex":I
    :catchall_11e0
    move-exception v0

    move/from16 v25, v8

    move-object v7, v0

    .end local v8    # "chunkIndex":I
    .restart local v25    # "chunkIndex":I
    goto :goto_11eb

    .end local v24    # "listId":I
    .end local v25    # "chunkIndex":I
    .restart local v8    # "chunkIndex":I
    .restart local v11    # "listId":I
    :catchall_11e5
    move-exception v0

    move/from16 v25, v8

    move/from16 v24, v11

    move-object v7, v0

    .end local v8    # "chunkIndex":I
    .end local v11    # "listId":I
    .restart local v24    # "listId":I
    .restart local v25    # "chunkIndex":I
    :goto_11eb
    monitor-exit v4
    :try_end_11ec
    .catchall {:try_start_11b1 .. :try_end_11ec} :catchall_1211

    .end local v2    # "totallen":J
    .end local v13    # "currentBlockNumber":I
    .end local v20    # "buf_ret":I
    .end local v21    # "otherSocketId":I
    .end local v23    # "buf_offset":I
    .end local v25    # "chunkIndex":I
    .end local v27    # "finalIdleWaitTime":J
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :try_start_11ec
    throw v7
    :try_end_11ed
    .catch Ljava/lang/InterruptedException; {:try_start_11ec .. :try_end_11ed} :catch_11fe
    .catchall {:try_start_11ec .. :try_end_11ed} :catchall_11ed

    .line 3181
    .end local v5    # "tmp":J
    .end local v9    # "startChunkTime":J
    .end local v14    # "dataRead":I
    .end local v15    # "len":I
    .end local v19    # "buf":[B
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v24    # "listId":I
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    .end local v51    # "bsize":I
    .restart local v2    # "totallen":J
    .restart local v13    # "currentBlockNumber":I
    .restart local v20    # "buf_ret":I
    .restart local v21    # "otherSocketId":I
    .restart local v23    # "buf_offset":I
    .restart local v25    # "chunkIndex":I
    .restart local v27    # "finalIdleWaitTime":J
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :catchall_11ed
    move-exception v0

    move-object v6, v0

    move-wide v14, v2

    move/from16 v5, v20

    move/from16 v8, v23

    move/from16 v31, v25

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    goto/16 :goto_1912

    .line 3175
    :catch_11fe
    move-exception v0

    move-object v6, v0

    move-wide v14, v2

    move/from16 v5, v20

    move/from16 v4, v23

    move/from16 v8, v25

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    goto/16 :goto_1abc

    .line 3155
    .restart local v5    # "tmp":J
    .restart local v9    # "startChunkTime":J
    .restart local v14    # "dataRead":I
    .restart local v15    # "len":I
    .restart local v19    # "buf":[B
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v24    # "listId":I
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v44    # "chunkStartTime":J
    .restart local v51    # "bsize":I
    :catchall_1211
    move-exception v0

    move-object v7, v0

    goto :goto_11eb

    .line 3181
    .end local v5    # "tmp":J
    .end local v9    # "startChunkTime":J
    .end local v14    # "dataRead":I
    .end local v15    # "len":I
    .end local v19    # "buf":[B
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v24    # "listId":I
    .end local v25    # "chunkIndex":I
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    .end local v51    # "bsize":I
    .restart local v8    # "chunkIndex":I
    :catchall_1214
    move-exception v0

    move/from16 v25, v8

    move-object v6, v0

    move-wide v14, v2

    move/from16 v5, v20

    move/from16 v8, v23

    move/from16 v31, v25

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    .end local v8    # "chunkIndex":I
    .restart local v25    # "chunkIndex":I
    goto/16 :goto_1912

    .line 3175
    .end local v25    # "chunkIndex":I
    .restart local v8    # "chunkIndex":I
    :catch_1227
    move-exception v0

    move/from16 v25, v8

    move-object v6, v0

    move-wide v14, v2

    move/from16 v5, v20

    move/from16 v4, v23

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    .end local v8    # "chunkIndex":I
    .restart local v25    # "chunkIndex":I
    goto/16 :goto_1abc

    .line 3109
    .end local v23    # "buf_offset":I
    .end local v25    # "chunkIndex":I
    .end local v50    # "chunkLengths":[J
    .restart local v4    # "chunkLengths":[J
    .restart local v5    # "tmp":J
    .local v7, "buf":[B
    .local v8, "buf_offset":I
    .restart local v11    # "listId":I
    .restart local v14    # "dataRead":I
    .restart local v15    # "len":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v31    # "chunkIndex":I
    .restart local v32    # "headBytes":[B
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v44    # "chunkStartTime":J
    .restart local v51    # "bsize":I
    :cond_123a
    move-object/from16 v50, v4

    move-object/from16 v19, v7

    move/from16 v23, v8

    move/from16 v10, v31

    .end local v4    # "chunkLengths":[J
    .end local v7    # "buf":[B
    .end local v8    # "buf_offset":I
    .end local v31    # "chunkIndex":I
    .restart local v10    # "chunkIndex":I
    .restart local v19    # "buf":[B
    .restart local v23    # "buf_offset":I
    .restart local v50    # "chunkLengths":[J
    move v12, v14

    .line 3157
    .end local v14    # "dataRead":I
    .local v12, "dataRead":I
    :goto_1243
    :try_start_1243
    sget-boolean v4, Lcom/android/okhttp/internal/http/HttpEngine;->HTTPTIMER:Z

    if-eqz v4, :cond_1256

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->timer:[J

    const/4 v7, 0x3

    aget-wide v8, v4, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v5

    add-long v8, v8, v24

    aput-wide v8, v4, v7
    :try_end_1256
    .catch Ljava/lang/InterruptedException; {:try_start_1243 .. :try_end_1256} :catch_12c7
    .catchall {:try_start_1243 .. :try_end_1256} :catchall_12b6

    .line 3158
    .end local v5    # "tmp":J
    :cond_1256
    nop

    .line 3167
    .end local v19    # "buf":[B
    .end local v51    # "bsize":I
    move-wide v7, v2

    move v2, v10

    move/from16 v19, v11

    move v3, v13

    move/from16 v34, v15

    move/from16 v24, v20

    move-object/from16 v15, v42

    move/from16 v9, v43

    move-wide/from16 v10, v44

    move-wide/from16 v13, v46

    move-wide/from16 v5, v48

    move-object/from16 v4, v50

    goto/16 :goto_cec

    .line 3181
    .end local v10    # "chunkIndex":I
    .end local v11    # "listId":I
    .end local v12    # "dataRead":I
    .end local v15    # "len":I
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v23    # "buf_offset":I
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    .end local v50    # "chunkLengths":[J
    .restart local v4    # "chunkLengths":[J
    .restart local v8    # "buf_offset":I
    .restart local v31    # "chunkIndex":I
    :catchall_126e
    move-exception v0

    move-object/from16 v50, v4

    move/from16 v23, v8

    move/from16 v10, v31

    move-object v6, v0

    move-wide v14, v2

    move/from16 v5, v20

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    .end local v4    # "chunkLengths":[J
    .end local v8    # "buf_offset":I
    .end local v31    # "chunkIndex":I
    .restart local v10    # "chunkIndex":I
    .restart local v23    # "buf_offset":I
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1912

    .line 3175
    .end local v10    # "chunkIndex":I
    .end local v23    # "buf_offset":I
    .end local v50    # "chunkLengths":[J
    .restart local v4    # "chunkLengths":[J
    .restart local v8    # "buf_offset":I
    .restart local v31    # "chunkIndex":I
    :catch_1281
    move-exception v0

    move-object/from16 v50, v4

    move/from16 v23, v8

    move/from16 v10, v31

    move-object v6, v0

    move-wide v14, v2

    move v8, v10

    move/from16 v5, v20

    move/from16 v4, v23

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    .end local v4    # "chunkLengths":[J
    .end local v8    # "buf_offset":I
    .end local v31    # "chunkIndex":I
    .restart local v10    # "chunkIndex":I
    .restart local v23    # "buf_offset":I
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1abc

    .line 3104
    .end local v10    # "chunkIndex":I
    .end local v23    # "buf_offset":I
    .end local v50    # "chunkLengths":[J
    .restart local v4    # "chunkLengths":[J
    .restart local v5    # "tmp":J
    .restart local v7    # "buf":[B
    .restart local v8    # "buf_offset":I
    .restart local v14    # "dataRead":I
    .restart local v15    # "len":I
    .local v19, "listId":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v31    # "chunkIndex":I
    .restart local v32    # "headBytes":[B
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v44    # "chunkStartTime":J
    .restart local v51    # "bsize":I
    :catchall_1299
    move-exception v0

    move-object/from16 v50, v4

    move/from16 v23, v8

    move/from16 v12, v19

    move/from16 v10, v31

    move-object/from16 v19, v7

    move-object v4, v0

    .end local v4    # "chunkLengths":[J
    .end local v7    # "buf":[B
    .end local v8    # "buf_offset":I
    .end local v31    # "chunkIndex":I
    .restart local v10    # "chunkIndex":I
    .local v12, "listId":I
    .local v19, "buf":[B
    .restart local v23    # "buf_offset":I
    .restart local v50    # "chunkLengths":[J
    goto :goto_12b4

    .end local v10    # "chunkIndex":I
    .end local v12    # "listId":I
    .end local v13    # "currentBlockNumber":I
    .end local v23    # "buf_offset":I
    .restart local v4    # "chunkLengths":[J
    .restart local v7    # "buf":[B
    .restart local v8    # "buf_offset":I
    .local v19, "listId":I
    .restart local v31    # "chunkIndex":I
    .local v50, "currentBlockNumber":I
    :catchall_12a6
    move-exception v0

    move/from16 v23, v8

    move/from16 v12, v19

    move/from16 v10, v31

    move/from16 v13, v50

    move-object/from16 v50, v4

    move-object/from16 v19, v7

    move-object v4, v0

    .end local v4    # "chunkLengths":[J
    .end local v7    # "buf":[B
    .end local v8    # "buf_offset":I
    .end local v31    # "chunkIndex":I
    .restart local v10    # "chunkIndex":I
    .restart local v12    # "listId":I
    .restart local v13    # "currentBlockNumber":I
    .local v19, "buf":[B
    .restart local v23    # "buf_offset":I
    .local v50, "chunkLengths":[J
    :goto_12b4
    :try_start_12b4
    monitor-exit v9
    :try_end_12b5
    .catchall {:try_start_12b4 .. :try_end_12b5} :catchall_12d9

    .end local v2    # "totallen":J
    .end local v10    # "chunkIndex":I
    .end local v13    # "currentBlockNumber":I
    .end local v20    # "buf_ret":I
    .end local v21    # "otherSocketId":I
    .end local v23    # "buf_offset":I
    .end local v27    # "finalIdleWaitTime":J
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :try_start_12b5
    throw v4
    :try_end_12b6
    .catch Ljava/lang/InterruptedException; {:try_start_12b5 .. :try_end_12b6} :catch_12c7
    .catchall {:try_start_12b5 .. :try_end_12b6} :catchall_12b6

    .line 3181
    .end local v5    # "tmp":J
    .end local v12    # "listId":I
    .end local v14    # "dataRead":I
    .end local v15    # "len":I
    .end local v19    # "buf":[B
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    .end local v51    # "bsize":I
    .restart local v2    # "totallen":J
    .restart local v10    # "chunkIndex":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v20    # "buf_ret":I
    .restart local v21    # "otherSocketId":I
    .restart local v23    # "buf_offset":I
    .restart local v27    # "finalIdleWaitTime":J
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :catchall_12b6
    move-exception v0

    move-object v6, v0

    move-wide v14, v2

    move/from16 v31, v10

    move/from16 v5, v20

    move/from16 v8, v23

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    goto/16 :goto_1912

    .line 3175
    :catch_12c7
    move-exception v0

    move-object v6, v0

    move-wide v14, v2

    move v8, v10

    move/from16 v5, v20

    move/from16 v4, v23

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    goto/16 :goto_1abc

    .line 3104
    .restart local v5    # "tmp":J
    .restart local v12    # "listId":I
    .restart local v14    # "dataRead":I
    .restart local v15    # "len":I
    .restart local v19    # "buf":[B
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v44    # "chunkStartTime":J
    .restart local v51    # "bsize":I
    :catchall_12d9
    move-exception v0

    move-object v4, v0

    goto :goto_12b4

    .line 3181
    .end local v5    # "tmp":J
    .end local v10    # "chunkIndex":I
    .end local v12    # "listId":I
    .end local v13    # "currentBlockNumber":I
    .end local v14    # "dataRead":I
    .end local v15    # "len":I
    .end local v19    # "buf":[B
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v23    # "buf_offset":I
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    .end local v51    # "bsize":I
    .restart local v4    # "chunkLengths":[J
    .restart local v8    # "buf_offset":I
    .restart local v31    # "chunkIndex":I
    .local v50, "currentBlockNumber":I
    :catchall_12dc
    move-exception v0

    move/from16 v23, v8

    move/from16 v10, v31

    move/from16 v13, v50

    move-object/from16 v50, v4

    move-object v6, v0

    move-wide v14, v2

    move/from16 v5, v20

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    .end local v4    # "chunkLengths":[J
    .end local v8    # "buf_offset":I
    .end local v31    # "chunkIndex":I
    .restart local v10    # "chunkIndex":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v23    # "buf_offset":I
    .local v50, "chunkLengths":[J
    goto/16 :goto_1912

    .line 3175
    .end local v10    # "chunkIndex":I
    .end local v13    # "currentBlockNumber":I
    .end local v23    # "buf_offset":I
    .restart local v4    # "chunkLengths":[J
    .restart local v8    # "buf_offset":I
    .restart local v31    # "chunkIndex":I
    .local v50, "currentBlockNumber":I
    :catch_12f1
    move-exception v0

    move/from16 v23, v8

    move/from16 v10, v31

    move/from16 v13, v50

    move-object/from16 v50, v4

    move-object v6, v0

    move-wide v14, v2

    move v8, v10

    move/from16 v5, v20

    move/from16 v4, v23

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    .end local v4    # "chunkLengths":[J
    .end local v8    # "buf_offset":I
    .end local v31    # "chunkIndex":I
    .restart local v10    # "chunkIndex":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v23    # "buf_offset":I
    .local v50, "chunkLengths":[J
    goto/16 :goto_1abc

    .line 3159
    .end local v10    # "chunkIndex":I
    .end local v13    # "currentBlockNumber":I
    .end local v23    # "buf_offset":I
    .restart local v4    # "chunkLengths":[J
    .restart local v7    # "buf":[B
    .restart local v8    # "buf_offset":I
    .restart local v14    # "dataRead":I
    .restart local v15    # "len":I
    .local v19, "listId":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v31    # "chunkIndex":I
    .restart local v32    # "headBytes":[B
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v44    # "chunkStartTime":J
    .local v50, "currentBlockNumber":I
    .restart local v51    # "bsize":I
    :cond_130b
    move/from16 v23, v8

    move/from16 v12, v19

    move/from16 v10, v31

    move/from16 v13, v50

    move-object/from16 v50, v4

    move-object/from16 v19, v7

    .end local v4    # "chunkLengths":[J
    .end local v7    # "buf":[B
    .end local v8    # "buf_offset":I
    .end local v31    # "chunkIndex":I
    .restart local v10    # "chunkIndex":I
    .restart local v12    # "listId":I
    .restart local v13    # "currentBlockNumber":I
    .local v19, "buf":[B
    .restart local v23    # "buf_offset":I
    .local v50, "chunkLengths":[J
    const/4 v4, -0x1

    if-ne v15, v4, :cond_138b

    cmp-long v4, v2, v46

    if-gez v4, :cond_138b

    .line 3160
    :try_start_131e
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_1347

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RangeRequest read body Exception: totallen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", bytesToRead= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_133a
    .catch Ljava/lang/InterruptedException; {:try_start_131e .. :try_end_133a} :catch_1379
    .catchall {:try_start_131e .. :try_end_133a} :catchall_1368

    move-wide/from16 v6, v46

    .end local v46    # "bytesToRead":J
    .local v6, "bytesToRead":J
    :try_start_133c
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_1349

    .end local v6    # "bytesToRead":J
    .restart local v46    # "bytesToRead":J
    :cond_1347
    move-wide/from16 v6, v46

    .line 3161
    .end local v46    # "bytesToRead":J
    .restart local v6    # "bytesToRead":J
    :goto_1349
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RangeRequest read body Exception: totallen="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", bytesToRead= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "totallen":J
    .end local v6    # "bytesToRead":J
    .end local v10    # "chunkIndex":I
    .end local v13    # "currentBlockNumber":I
    .end local v20    # "buf_ret":I
    .end local v21    # "otherSocketId":I
    .end local v23    # "buf_offset":I
    .end local v27    # "finalIdleWaitTime":J
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    throw v4

    .line 3181
    .end local v12    # "listId":I
    .end local v14    # "dataRead":I
    .end local v15    # "len":I
    .end local v19    # "buf":[B
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    .end local v51    # "bsize":I
    .restart local v2    # "totallen":J
    .restart local v10    # "chunkIndex":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v20    # "buf_ret":I
    .restart local v21    # "otherSocketId":I
    .restart local v23    # "buf_offset":I
    .restart local v27    # "finalIdleWaitTime":J
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :catchall_1368
    move-exception v0

    move-object v6, v0

    move-wide v14, v2

    move/from16 v31, v10

    move/from16 v5, v20

    move/from16 v8, v23

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    .end local v46    # "bytesToRead":J
    .restart local v6    # "bytesToRead":J
    goto/16 :goto_1912

    .line 3175
    .end local v6    # "bytesToRead":J
    .restart local v46    # "bytesToRead":J
    :catch_1379
    move-exception v0

    move-object v6, v0

    move-wide v14, v2

    move v8, v10

    move/from16 v5, v20

    move/from16 v4, v23

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    .end local v46    # "bytesToRead":J
    .restart local v6    # "bytesToRead":J
    goto/16 :goto_1abc

    .line 3159
    .end local v6    # "bytesToRead":J
    .restart local v12    # "listId":I
    .restart local v14    # "dataRead":I
    .restart local v15    # "len":I
    .restart local v19    # "buf":[B
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v44    # "chunkStartTime":J
    .restart local v46    # "bytesToRead":J
    .restart local v51    # "bsize":I
    :cond_138b
    move-wide/from16 v6, v46

    .line 3164
    .end local v46    # "bytesToRead":J
    .restart local v6    # "bytesToRead":J
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_13b3

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RangeRequest read body Exception2: totallen="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", bytesToRead= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3165
    :cond_13b3
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RangeRequest read body Exception2: totallen="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", bytesToRead= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "totallen":J
    .end local v6    # "bytesToRead":J
    .end local v10    # "chunkIndex":I
    .end local v13    # "currentBlockNumber":I
    .end local v20    # "buf_ret":I
    .end local v21    # "otherSocketId":I
    .end local v23    # "buf_offset":I
    .end local v27    # "finalIdleWaitTime":J
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    throw v4
    :try_end_13d2
    .catch Ljava/lang/InterruptedException; {:try_start_133c .. :try_end_13d2} :catch_13e5
    .catchall {:try_start_133c .. :try_end_13d2} :catchall_13d2

    .line 3181
    .end local v12    # "listId":I
    .end local v14    # "dataRead":I
    .end local v15    # "len":I
    .end local v19    # "buf":[B
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    .end local v51    # "bsize":I
    .restart local v2    # "totallen":J
    .restart local v6    # "bytesToRead":J
    .restart local v10    # "chunkIndex":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v20    # "buf_ret":I
    .restart local v21    # "otherSocketId":I
    .restart local v23    # "buf_offset":I
    .restart local v27    # "finalIdleWaitTime":J
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :catchall_13d2
    move-exception v0

    move-wide v14, v2

    move-wide/from16 v46, v6

    move/from16 v31, v10

    move/from16 v5, v20

    move/from16 v8, v23

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    move-object v6, v0

    goto/16 :goto_1912

    .line 3175
    :catch_13e5
    move-exception v0

    move-wide v14, v2

    move-wide/from16 v46, v6

    move v8, v10

    move/from16 v5, v20

    move/from16 v4, v23

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    move-object v6, v0

    goto/16 :goto_1abc

    .line 3181
    .end local v6    # "bytesToRead":J
    .end local v10    # "chunkIndex":I
    .end local v13    # "currentBlockNumber":I
    .end local v23    # "buf_offset":I
    .restart local v4    # "chunkLengths":[J
    .restart local v8    # "buf_offset":I
    .restart local v31    # "chunkIndex":I
    .restart local v46    # "bytesToRead":J
    .local v50, "currentBlockNumber":I
    :catchall_13f9
    move-exception v0

    move/from16 v23, v8

    move/from16 v10, v31

    move/from16 v13, v50

    move-object/from16 v50, v4

    move-object v6, v0

    move-wide v14, v2

    move/from16 v5, v20

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    .end local v4    # "chunkLengths":[J
    .end local v8    # "buf_offset":I
    .end local v31    # "chunkIndex":I
    .end local v46    # "bytesToRead":J
    .restart local v6    # "bytesToRead":J
    .restart local v10    # "chunkIndex":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v23    # "buf_offset":I
    .local v50, "chunkLengths":[J
    goto/16 :goto_1912

    .line 3175
    .end local v6    # "bytesToRead":J
    .end local v10    # "chunkIndex":I
    .end local v13    # "currentBlockNumber":I
    .end local v23    # "buf_offset":I
    .restart local v4    # "chunkLengths":[J
    .restart local v8    # "buf_offset":I
    .restart local v31    # "chunkIndex":I
    .restart local v46    # "bytesToRead":J
    .local v50, "currentBlockNumber":I
    :catch_140e
    move-exception v0

    move/from16 v23, v8

    move/from16 v10, v31

    move/from16 v13, v50

    move-object/from16 v50, v4

    move-object v6, v0

    move-wide v14, v2

    move v8, v10

    move/from16 v5, v20

    move/from16 v4, v23

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    .end local v4    # "chunkLengths":[J
    .end local v8    # "buf_offset":I
    .end local v31    # "chunkIndex":I
    .end local v46    # "bytesToRead":J
    .restart local v6    # "bytesToRead":J
    .restart local v10    # "chunkIndex":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v23    # "buf_offset":I
    .local v50, "chunkLengths":[J
    goto/16 :goto_1abc

    .line 3076
    .end local v6    # "bytesToRead":J
    .end local v13    # "currentBlockNumber":I
    .end local v20    # "buf_ret":I
    .end local v23    # "buf_offset":I
    .end local v50    # "chunkLengths":[J
    .local v2, "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v7    # "buf":[B
    .restart local v8    # "buf_offset":I
    .local v9, "bsize":I
    .local v10, "buf_ret":I
    .restart local v14    # "dataRead":I
    .local v19, "listId":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .local v25, "totallen":J
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .local v34, "len":I
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v44    # "chunkStartTime":J
    .restart local v46    # "bytesToRead":J
    :catchall_1428
    move-exception v0

    move v13, v3

    move-object/from16 v50, v4

    move/from16 v51, v9

    move/from16 v20, v10

    move/from16 v12, v19

    move v10, v2

    move-object v3, v0

    move v4, v8

    move/from16 v2, v34

    move/from16 v34, v14

    move-wide/from16 v14, v25

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v9    # "bsize":I
    .end local v19    # "listId":I
    .local v10, "chunkIndex":I
    .restart local v12    # "listId":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v20    # "buf_ret":I
    .restart local v50    # "chunkLengths":[J
    .restart local v51    # "bsize":I
    goto :goto_147b

    .line 3035
    .end local v12    # "listId":I
    .end local v13    # "currentBlockNumber":I
    .end local v20    # "buf_ret":I
    .end local v50    # "chunkLengths":[J
    .end local v51    # "bsize":I
    .restart local v2    # "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v9    # "bsize":I
    .local v10, "buf_ret":I
    .restart local v19    # "listId":I
    :catchall_143c
    move-exception v0

    move v13, v3

    move-object/from16 v50, v4

    move/from16 v51, v9

    move/from16 v20, v10

    move/from16 v12, v19

    move v10, v2

    move-object v2, v0

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v9    # "bsize":I
    .end local v19    # "listId":I
    .local v10, "chunkIndex":I
    .restart local v12    # "listId":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v20    # "buf_ret":I
    .restart local v50    # "chunkLengths":[J
    .restart local v51    # "bsize":I
    goto :goto_1457

    .end local v12    # "listId":I
    .end local v13    # "currentBlockNumber":I
    .end local v20    # "buf_ret":I
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .end local v51    # "bsize":I
    .restart local v2    # "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .local v5, "iRealBlockSize":J
    .restart local v9    # "bsize":I
    .local v10, "buf_ret":I
    .restart local v19    # "listId":I
    :catchall_1449
    move-exception v0

    move v13, v3

    move-object/from16 v50, v4

    move-wide/from16 v48, v5

    move/from16 v51, v9

    move/from16 v20, v10

    move/from16 v12, v19

    move v10, v2

    move-object v2, v0

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v5    # "iRealBlockSize":J
    .end local v9    # "bsize":I
    .end local v19    # "listId":I
    .local v10, "chunkIndex":I
    .restart local v12    # "listId":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v20    # "buf_ret":I
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    .restart local v51    # "bsize":I
    :goto_1457
    :try_start_1457
    monitor-exit v11
    :try_end_1458
    .catchall {:try_start_1457 .. :try_end_1458} :catchall_1463

    .end local v7    # "buf":[B
    .end local v8    # "buf_offset":I
    .end local v10    # "chunkIndex":I
    .end local v12    # "listId":I
    .end local v13    # "currentBlockNumber":I
    .end local v14    # "dataRead":I
    .end local v20    # "buf_ret":I
    .end local v21    # "otherSocketId":I
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v25    # "totallen":J
    .end local v27    # "finalIdleWaitTime":J
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v32    # "headBytes":[B
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v34    # "len":I
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v44    # "chunkStartTime":J
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .end local v51    # "bsize":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :try_start_1458
    throw v2
    :try_end_1459
    .catchall {:try_start_1458 .. :try_end_1459} :catchall_1459

    .line 3076
    .restart local v7    # "buf":[B
    .restart local v8    # "buf_offset":I
    .restart local v10    # "chunkIndex":I
    .restart local v12    # "listId":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v14    # "dataRead":I
    .restart local v20    # "buf_ret":I
    .restart local v21    # "otherSocketId":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v25    # "totallen":J
    .restart local v27    # "finalIdleWaitTime":J
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v32    # "headBytes":[B
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v34    # "len":I
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v36    # "blockInfo":[J
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v44    # "chunkStartTime":J
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    .restart local v51    # "bsize":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :catchall_1459
    move-exception v0

    move-object v3, v0

    move v4, v8

    move/from16 v2, v34

    move/from16 v34, v14

    move-wide/from16 v14, v25

    goto :goto_147b

    .line 3035
    :catchall_1463
    move-exception v0

    move-object v2, v0

    goto :goto_1457

    .line 3076
    .end local v12    # "listId":I
    .end local v13    # "currentBlockNumber":I
    .end local v20    # "buf_ret":I
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .end local v51    # "bsize":I
    .restart local v2    # "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v5    # "iRealBlockSize":J
    .restart local v9    # "bsize":I
    .local v10, "buf_ret":I
    .restart local v19    # "listId":I
    :catchall_1466
    move-exception v0

    move v13, v3

    move-object/from16 v50, v4

    move-wide/from16 v48, v5

    move/from16 v51, v9

    move/from16 v20, v10

    move/from16 v12, v19

    move v10, v2

    move-object v3, v0

    move v4, v8

    move/from16 v2, v34

    move/from16 v34, v14

    move-wide/from16 v14, v25

    .line 3077
    .end local v5    # "iRealBlockSize":J
    .end local v8    # "buf_offset":I
    .end local v9    # "bsize":I
    .end local v19    # "listId":I
    .end local v25    # "totallen":J
    .local v2, "len":I
    .local v3, "ex":Ljava/lang/Throwable;
    .local v4, "buf_offset":I
    .local v10, "chunkIndex":I
    .restart local v12    # "listId":I
    .restart local v13    # "currentBlockNumber":I
    .local v14, "totallen":J
    .restart local v20    # "buf_ret":I
    .local v34, "dataRead":I
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    .restart local v51    # "bsize":I
    :goto_147b
    :try_start_147b
    iget-boolean v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->bHandover:Z

    if-eqz v5, :cond_14ba

    .line 3078
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_14ac

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This block shall be read by another socket, this socket is slow: block["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], socket["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3079
    :cond_14ac
    int-to-long v5, v4

    sub-long/2addr v14, v5

    .line 3080
    iget-wide v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    int-to-long v8, v4

    sub-long/2addr v5, v8

    iput-wide v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    .line 3081
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    .end local v4    # "buf_offset":I
    .end local v10    # "chunkIndex":I
    .end local v13    # "currentBlockNumber":I
    .end local v14    # "totallen":J
    .end local v20    # "buf_ret":I
    .end local v21    # "otherSocketId":I
    .end local v27    # "finalIdleWaitTime":J
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    throw v5

    .line 3084
    .restart local v4    # "buf_offset":I
    .restart local v10    # "chunkIndex":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v14    # "totallen":J
    .restart local v20    # "buf_ret":I
    .restart local v21    # "otherSocketId":I
    .restart local v27    # "finalIdleWaitTime":J
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :cond_14ba
    nop

    .end local v4    # "buf_offset":I
    .end local v10    # "chunkIndex":I
    .end local v13    # "currentBlockNumber":I
    .end local v14    # "totallen":J
    .end local v20    # "buf_ret":I
    .end local v21    # "otherSocketId":I
    .end local v27    # "finalIdleWaitTime":J
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    throw v3
    :try_end_14bc
    .catch Ljava/lang/InterruptedException; {:try_start_147b .. :try_end_14bc} :catch_14cb
    .catchall {:try_start_147b .. :try_end_14bc} :catchall_14bc

    .line 3181
    .end local v2    # "len":I
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v7    # "buf":[B
    .end local v12    # "listId":I
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v34    # "dataRead":I
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    .end local v51    # "bsize":I
    .restart local v4    # "buf_offset":I
    .restart local v10    # "chunkIndex":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v14    # "totallen":J
    .restart local v20    # "buf_ret":I
    .restart local v21    # "otherSocketId":I
    .restart local v27    # "finalIdleWaitTime":J
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :catchall_14bc
    move-exception v0

    move-object v6, v0

    move v8, v4

    move/from16 v31, v10

    move/from16 v5, v20

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    goto/16 :goto_1912

    .line 3175
    :catch_14cb
    move-exception v0

    move-object v6, v0

    move v8, v10

    move/from16 v5, v20

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    goto/16 :goto_1abc

    .line 3181
    .end local v10    # "chunkIndex":I
    .end local v13    # "currentBlockNumber":I
    .end local v14    # "totallen":J
    .end local v20    # "buf_ret":I
    .end local v50    # "chunkLengths":[J
    .local v2, "chunkIndex":I
    .local v3, "currentBlockNumber":I
    .local v4, "chunkLengths":[J
    .restart local v23    # "buf_offset":I
    .local v24, "buf_ret":I
    .restart local v25    # "totallen":J
    :catchall_14da
    move-exception v0

    move v10, v2

    move v13, v3

    move-object/from16 v50, v4

    move-object v6, v0

    move/from16 v31, v10

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .restart local v10    # "chunkIndex":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1912

    .line 3175
    .end local v10    # "chunkIndex":I
    .end local v13    # "currentBlockNumber":I
    .end local v50    # "chunkLengths":[J
    .restart local v2    # "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    :catch_14f0
    move-exception v0

    move v10, v2

    move v13, v3

    move-object/from16 v50, v4

    move-object v6, v0

    move v8, v10

    move/from16 v4, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .restart local v10    # "chunkIndex":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1abc

    .line 3181
    .end local v10    # "chunkIndex":I
    .end local v13    # "currentBlockNumber":I
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .restart local v2    # "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v5    # "iRealBlockSize":J
    :catchall_1507
    move-exception v0

    move v10, v2

    move v13, v3

    move-object/from16 v50, v4

    move-wide/from16 v48, v5

    move-object v6, v0

    move/from16 v31, v10

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v5    # "iRealBlockSize":J
    .restart local v10    # "chunkIndex":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1912

    .line 3175
    .end local v10    # "chunkIndex":I
    .end local v13    # "currentBlockNumber":I
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .restart local v2    # "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v5    # "iRealBlockSize":J
    :catch_151f
    move-exception v0

    move v10, v2

    move v13, v3

    move-object/from16 v50, v4

    move-wide/from16 v48, v5

    move-object v6, v0

    move v8, v10

    move/from16 v4, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v5    # "iRealBlockSize":J
    .restart local v10    # "chunkIndex":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1abc

    .line 3181
    .end local v10    # "chunkIndex":I
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .restart local v2    # "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v5    # "iRealBlockSize":J
    .local v13, "bytesToRead":J
    :catchall_1538
    move-exception v0

    move v10, v2

    move-object/from16 v50, v4

    move-wide/from16 v48, v5

    move-wide/from16 v46, v13

    move v13, v3

    move-object v6, v0

    move/from16 v31, v10

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v5    # "iRealBlockSize":J
    .restart local v10    # "chunkIndex":I
    .local v13, "currentBlockNumber":I
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1912

    .line 3175
    .end local v10    # "chunkIndex":I
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .restart local v2    # "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v5    # "iRealBlockSize":J
    .local v13, "bytesToRead":J
    :catch_1552
    move-exception v0

    move v10, v2

    move-object/from16 v50, v4

    move-wide/from16 v48, v5

    move-wide/from16 v46, v13

    move v13, v3

    move-object v6, v0

    move v8, v10

    move/from16 v4, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v5    # "iRealBlockSize":J
    .restart local v10    # "chunkIndex":I
    .local v13, "currentBlockNumber":I
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1abc

    .line 3181
    .end local v10    # "chunkIndex":I
    .end local v25    # "totallen":J
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .restart local v2    # "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v5    # "iRealBlockSize":J
    .local v7, "totallen":J
    .local v13, "bytesToRead":J
    :catchall_156d
    move-exception v0

    move v10, v2

    move-object/from16 v50, v4

    move-wide/from16 v48, v5

    move-wide/from16 v25, v7

    move-wide/from16 v46, v13

    move v13, v3

    move-object v6, v0

    move/from16 v31, v10

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v5    # "iRealBlockSize":J
    .end local v7    # "totallen":J
    .restart local v10    # "chunkIndex":I
    .local v13, "currentBlockNumber":I
    .restart local v25    # "totallen":J
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1912

    .line 3175
    .end local v10    # "chunkIndex":I
    .end local v25    # "totallen":J
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .restart local v2    # "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v5    # "iRealBlockSize":J
    .restart local v7    # "totallen":J
    .local v13, "bytesToRead":J
    :catch_1589
    move-exception v0

    move v10, v2

    move-object/from16 v50, v4

    move-wide/from16 v48, v5

    move-wide/from16 v25, v7

    move-wide/from16 v46, v13

    move v13, v3

    move-object v6, v0

    move v8, v10

    move/from16 v4, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v5    # "iRealBlockSize":J
    .end local v7    # "totallen":J
    .restart local v10    # "chunkIndex":I
    .local v13, "currentBlockNumber":I
    .restart local v25    # "totallen":J
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1abc

    .line 3008
    .end local v25    # "totallen":J
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .restart local v2    # "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v5    # "iRealBlockSize":J
    .restart local v7    # "totallen":J
    .local v9, "totalContinuousChunk":I
    .local v10, "chunkStartTime":J
    .local v12, "dataRead":I
    .local v13, "bytesToRead":J
    .restart local v19    # "listId":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .local v34, "len":I
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    :cond_15a6
    move-object/from16 v50, v4

    move-wide/from16 v48, v5

    move-wide/from16 v25, v7

    move/from16 v43, v9

    move-wide/from16 v44, v10

    move-wide/from16 v46, v13

    move v10, v2

    move v13, v3

    move v14, v12

    move/from16 v12, v19

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v5    # "iRealBlockSize":J
    .end local v7    # "totallen":J
    .end local v9    # "totalContinuousChunk":I
    .end local v19    # "listId":I
    .local v10, "chunkIndex":I
    .local v12, "listId":I
    .local v13, "currentBlockNumber":I
    .local v14, "dataRead":I
    .restart local v25    # "totallen":J
    .restart local v43    # "totalContinuousChunk":I
    .restart local v44    # "chunkStartTime":J
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1605

    .line 3181
    .end local v10    # "chunkIndex":I
    .end local v12    # "listId":I
    .end local v14    # "dataRead":I
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v25    # "totallen":J
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v34    # "len":I
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v43    # "totalContinuousChunk":I
    .end local v44    # "chunkStartTime":J
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .restart local v2    # "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v5    # "iRealBlockSize":J
    .restart local v7    # "totallen":J
    .restart local v9    # "totalContinuousChunk":I
    .local v13, "bytesToRead":J
    :catchall_15b9
    move-exception v0

    move v10, v2

    move-object/from16 v50, v4

    move-wide/from16 v48, v5

    move-wide/from16 v25, v7

    move/from16 v43, v9

    move-wide/from16 v46, v13

    move v13, v3

    move-object v6, v0

    move/from16 v31, v10

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move-wide/from16 v3, v48

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v5    # "iRealBlockSize":J
    .end local v7    # "totallen":J
    .end local v9    # "totalContinuousChunk":I
    .restart local v10    # "chunkIndex":I
    .local v13, "currentBlockNumber":I
    .restart local v25    # "totallen":J
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1912

    .line 3175
    .end local v10    # "chunkIndex":I
    .end local v25    # "totallen":J
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .restart local v2    # "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v5    # "iRealBlockSize":J
    .restart local v7    # "totallen":J
    .restart local v9    # "totalContinuousChunk":I
    .local v13, "bytesToRead":J
    :catch_15d5
    move-exception v0

    move v10, v2

    move-object/from16 v50, v4

    move-wide/from16 v48, v5

    move-wide/from16 v25, v7

    move/from16 v43, v9

    move-wide/from16 v46, v13

    move v13, v3

    move-object v6, v0

    move v8, v10

    move/from16 v4, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v5    # "iRealBlockSize":J
    .end local v7    # "totallen":J
    .end local v9    # "totalContinuousChunk":I
    .restart local v10    # "chunkIndex":I
    .local v13, "currentBlockNumber":I
    .restart local v25    # "totallen":J
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1abc

    .line 3008
    .end local v25    # "totallen":J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .restart local v2    # "chunkIndex":I
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v5    # "iRealBlockSize":J
    .restart local v7    # "totallen":J
    .restart local v9    # "totalContinuousChunk":I
    .local v10, "chunkStartTime":J
    .local v12, "dataRead":I
    .local v13, "bytesToRead":J
    .local v15, "redirectedUri":Ljava/net/URI;
    .restart local v19    # "listId":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .restart local v34    # "len":I
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    :cond_15f2
    move-object/from16 v50, v4

    move-wide/from16 v48, v5

    move-wide/from16 v25, v7

    move/from16 v43, v9

    move-wide/from16 v44, v10

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move v10, v2

    move v13, v3

    move v14, v12

    move/from16 v12, v19

    .line 3168
    .end local v2    # "chunkIndex":I
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v5    # "iRealBlockSize":J
    .end local v7    # "totallen":J
    .end local v9    # "totalContinuousChunk":I
    .end local v15    # "redirectedUri":Ljava/net/URI;
    .end local v19    # "listId":I
    .local v10, "chunkIndex":I
    .local v12, "listId":I
    .local v13, "currentBlockNumber":I
    .restart local v14    # "dataRead":I
    .restart local v25    # "totallen":J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v44    # "chunkStartTime":J
    .restart local v46    # "bytesToRead":J
    .restart local v48    # "iRealBlockSize":J
    .restart local v50    # "chunkLengths":[J
    :goto_1605
    :try_start_1605
    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->HTTPTIMER:Z
    :try_end_1607
    .catch Ljava/lang/InterruptedException; {:try_start_1605 .. :try_end_1607} :catch_16c2
    .catchall {:try_start_1605 .. :try_end_1607} :catchall_16af

    if-eqz v2, :cond_1663

    .line 3169
    :try_start_1609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->t1:J

    .line 3170
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->timer:[J

    const/4 v5, 0x2

    aget-wide v6, v4, v5

    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->t2:J

    sub-long/2addr v2, v8

    add-long/2addr v6, v2

    aput-wide v6, v4, v5

    .line 3171
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_1663

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time used for read range rsp body:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->t1:J

    iget-wide v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->t2:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_163d
    .catch Ljava/lang/InterruptedException; {:try_start_1609 .. :try_end_163d} :catch_1650
    .catchall {:try_start_1609 .. :try_end_163d} :catchall_163e

    goto :goto_1663

    .line 3181
    .end local v12    # "listId":I
    .end local v14    # "dataRead":I
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v34    # "len":I
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    :catchall_163e
    move-exception v0

    move-object v6, v0

    move/from16 v31, v10

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    goto/16 :goto_1912

    .line 3175
    :catch_1650
    move-exception v0

    move-object v6, v0

    move v8, v10

    move/from16 v4, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    goto/16 :goto_1abc

    .line 3173
    .restart local v12    # "listId":I
    .restart local v14    # "dataRead":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .restart local v34    # "len":I
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v44    # "chunkStartTime":J
    :cond_1663
    :goto_1663
    :try_start_1663
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_16a7

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish to read body, bytes read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1677
    .catch Ljava/lang/InterruptedException; {:try_start_1663 .. :try_end_1677} :catch_16c2
    .catchall {:try_start_1663 .. :try_end_1677} :catchall_16af

    move-wide/from16 v4, v25

    .end local v25    # "totallen":J
    .local v4, "totallen":J
    :try_start_1679
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_1683
    .catch Ljava/lang/InterruptedException; {:try_start_1679 .. :try_end_1683} :catch_1695
    .catchall {:try_start_1679 .. :try_end_1683} :catchall_1684

    goto :goto_16a9

    .line 3181
    .end local v12    # "listId":I
    .end local v14    # "dataRead":I
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v34    # "len":I
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    :catchall_1684
    move-exception v0

    move-object v6, v0

    move-wide v14, v4

    move/from16 v31, v10

    move/from16 v8, v23

    move/from16 v5, v24

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    goto/16 :goto_1912

    .line 3175
    :catch_1695
    move-exception v0

    move-object v6, v0

    move-wide v14, v4

    move v8, v10

    move/from16 v4, v23

    move/from16 v5, v24

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    goto/16 :goto_1abc

    .line 3173
    .end local v4    # "totallen":J
    .restart local v12    # "listId":I
    .restart local v14    # "dataRead":I
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v25    # "totallen":J
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .restart local v34    # "len":I
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v44    # "chunkStartTime":J
    :cond_16a7
    move-wide/from16 v4, v25

    .line 3252
    .end local v12    # "listId":I
    .end local v14    # "dataRead":I
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v25    # "totallen":J
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v34    # "len":I
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v44    # "chunkStartTime":J
    .restart local v4    # "totallen":J
    :goto_16a9
    move/from16 v2, v35

    move-wide/from16 v3, v48

    goto/16 :goto_1ad0

    .line 3181
    .end local v4    # "totallen":J
    .restart local v25    # "totallen":J
    :catchall_16af
    move-exception v0

    move-wide/from16 v4, v25

    move-object v6, v0

    move-wide v14, v4

    move/from16 v31, v10

    move/from16 v8, v23

    move/from16 v5, v24

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v3, v48

    .end local v25    # "totallen":J
    .restart local v4    # "totallen":J
    goto/16 :goto_1912

    .line 3175
    .end local v4    # "totallen":J
    .restart local v25    # "totallen":J
    :catch_16c2
    move-exception v0

    move-wide/from16 v4, v25

    move-object v6, v0

    move-wide v14, v4

    move v8, v10

    move/from16 v4, v23

    move/from16 v5, v24

    move/from16 v2, v35

    move/from16 v9, v43

    move-wide/from16 v19, v48

    move-object/from16 v3, v50

    .end local v25    # "totallen":J
    .restart local v4    # "totallen":J
    goto/16 :goto_1abc

    .line 3002
    .end local v10    # "chunkIndex":I
    .end local v35    # "bFirstBlockRsp":Z
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v48    # "iRealBlockSize":J
    .end local v50    # "chunkLengths":[J
    .local v2, "bFirstBlockRsp":Z
    .restart local v3    # "currentBlockNumber":I
    .local v4, "chunkLengths":[J
    .local v7, "rspCode":I
    .restart local v9    # "totalContinuousChunk":I
    .local v13, "bytesToRead":J
    .restart local v15    # "redirectedUri":Ljava/net/URI;
    .local v19, "iRealBlockSize":J
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v25    # "totallen":J
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v31    # "chunkIndex":I
    .restart local v32    # "headBytes":[B
    .restart local v34    # "len":I
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    :catchall_16d6
    move-exception v0

    move/from16 v35, v2

    move-object/from16 v50, v4

    move/from16 v41, v7

    move/from16 v43, v9

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move v13, v3

    move-object v2, v0

    .end local v2    # "bFirstBlockRsp":Z
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v7    # "rspCode":I
    .end local v9    # "totalContinuousChunk":I
    .end local v15    # "redirectedUri":Ljava/net/URI;
    .local v13, "currentBlockNumber":I
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v41    # "rspCode":I
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v50    # "chunkLengths":[J
    :goto_16e5
    :try_start_16e5
    monitor-exit v5
    :try_end_16e6
    .catchall {:try_start_16e5 .. :try_end_16e6} :catchall_1709

    .end local v13    # "currentBlockNumber":I
    .end local v19    # "iRealBlockSize":J
    .end local v21    # "otherSocketId":I
    .end local v23    # "buf_offset":I
    .end local v24    # "buf_ret":I
    .end local v25    # "totallen":J
    .end local v27    # "finalIdleWaitTime":J
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v50    # "chunkLengths":[J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :try_start_16e6
    throw v2
    :try_end_16e7
    .catch Ljava/lang/InterruptedException; {:try_start_16e6 .. :try_end_16e7} :catch_16f7
    .catchall {:try_start_16e6 .. :try_end_16e7} :catchall_16e7

    .line 3181
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v34    # "len":I
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v19    # "iRealBlockSize":J
    .restart local v21    # "otherSocketId":I
    .restart local v23    # "buf_offset":I
    .restart local v24    # "buf_ret":I
    .restart local v25    # "totallen":J
    .restart local v27    # "finalIdleWaitTime":J
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v50    # "chunkLengths":[J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :catchall_16e7
    move-exception v0

    move-object v6, v0

    move-wide/from16 v3, v19

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v2, v35

    move/from16 v9, v43

    goto/16 :goto_1912

    .line 3175
    :catch_16f7
    move-exception v0

    move-object v6, v0

    move/from16 v4, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v8, v31

    move/from16 v2, v35

    move/from16 v9, v43

    move-object/from16 v3, v50

    goto/16 :goto_1abc

    .line 3002
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    .restart local v34    # "len":I
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    :catchall_1709
    move-exception v0

    move-object v2, v0

    goto :goto_16e5

    .line 3181
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v34    # "len":I
    .end local v35    # "bFirstBlockRsp":Z
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v50    # "chunkLengths":[J
    .restart local v2    # "bFirstBlockRsp":Z
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v9    # "totalContinuousChunk":I
    .local v13, "bytesToRead":J
    .restart local v15    # "redirectedUri":Ljava/net/URI;
    :catchall_170c
    move-exception v0

    move/from16 v35, v2

    move-object/from16 v50, v4

    move/from16 v43, v9

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move v13, v3

    move-object v6, v0

    move-wide/from16 v3, v19

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    .end local v2    # "bFirstBlockRsp":Z
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v9    # "totalContinuousChunk":I
    .end local v15    # "redirectedUri":Ljava/net/URI;
    .local v13, "currentBlockNumber":I
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1912

    .line 3175
    .end local v35    # "bFirstBlockRsp":Z
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v50    # "chunkLengths":[J
    .restart local v2    # "bFirstBlockRsp":Z
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v9    # "totalContinuousChunk":I
    .local v13, "bytesToRead":J
    .restart local v15    # "redirectedUri":Ljava/net/URI;
    :catch_1723
    move-exception v0

    move/from16 v35, v2

    move-object/from16 v50, v4

    move/from16 v43, v9

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move v13, v3

    move-object v6, v0

    move/from16 v4, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v8, v31

    move-object/from16 v3, v50

    .end local v2    # "bFirstBlockRsp":Z
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v9    # "totalContinuousChunk":I
    .end local v15    # "redirectedUri":Ljava/net/URI;
    .local v13, "currentBlockNumber":I
    .restart local v35    # "bFirstBlockRsp":Z
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1abc

    .line 2953
    .end local v35    # "bFirstBlockRsp":Z
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v50    # "chunkLengths":[J
    .restart local v2    # "bFirstBlockRsp":Z
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .local v5, "conLen":J
    .restart local v7    # "rspCode":I
    .local v8, "len":I
    .restart local v9    # "totalContinuousChunk":I
    .local v10, "fullSize":J
    .local v12, "blockInfo":[J
    .local v13, "bytesToRead":J
    .restart local v15    # "redirectedUri":Ljava/net/URI;
    .restart local v22    # "rsp":Lcom/android/okhttp/Response;
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    :cond_173c
    move-object/from16 v50, v4

    move-wide/from16 v39, v5

    move/from16 v41, v7

    move/from16 v34, v8

    move/from16 v43, v9

    move-wide/from16 v37, v10

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move v13, v3

    .line 2954
    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v5    # "conLen":J
    .end local v7    # "rspCode":I
    .end local v8    # "len":I
    .end local v9    # "totalContinuousChunk":I
    .end local v10    # "fullSize":J
    .end local v12    # "blockInfo":[J
    .end local v15    # "redirectedUri":Ljava/net/URI;
    .local v13, "currentBlockNumber":I
    .restart local v34    # "len":I
    .restart local v36    # "blockInfo":[J
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v50    # "chunkLengths":[J
    :goto_174f
    :try_start_174f
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_1784

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response code is not 206 or 200 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v41

    .end local v41    # "rspCode":I
    .local v5, "rspCode":I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " or length is not expected: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, v39

    .end local v39    # "conLen":J
    .local v6, "conLen":J
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " or full lengthis not expected: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v37

    .end local v37    # "fullSize":J
    .local v8, "fullSize":J
    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_178a

    .end local v5    # "rspCode":I
    .end local v6    # "conLen":J
    .end local v8    # "fullSize":J
    .restart local v37    # "fullSize":J
    .restart local v39    # "conLen":J
    .restart local v41    # "rspCode":I
    :cond_1784
    move-wide/from16 v8, v37

    move-wide/from16 v6, v39

    move/from16 v5, v41

    .line 2957
    .end local v37    # "fullSize":J
    .end local v39    # "conLen":J
    .end local v41    # "rspCode":I
    .restart local v5    # "rspCode":I
    .restart local v6    # "conLen":J
    .restart local v8    # "fullSize":J
    :goto_178a
    if-eqz v2, :cond_17e5

    .line 2958
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_17b0

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "move to RR_FAILED from "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2959
    :cond_17b0
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v3

    monitor-enter v3
    :try_end_17b7
    .catch Ljava/lang/InterruptedException; {:try_start_174f .. :try_end_17b7} :catch_180a
    .catchall {:try_start_174f .. :try_end_17b7} :catchall_17fc

    .line 2960
    :try_start_17b7
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v4

    if-eqz v4, :cond_17c8

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v4

    const/4 v10, 0x3

    if-ne v4, v10, :cond_17d7

    .line 2961
    :cond_17c8
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v10, 0x1

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v4, v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 2962
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 2964
    :cond_17d7
    monitor-exit v3
    :try_end_17d8
    .catchall {:try_start_17b7 .. :try_end_17d8} :catchall_17e1

    .line 2965
    :try_start_17d8
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V
    :try_end_17db
    .catch Ljava/lang/InterruptedException; {:try_start_17d8 .. :try_end_17db} :catch_180a
    .catchall {:try_start_17d8 .. :try_end_17db} :catchall_17fc

    .line 2966
    move-wide/from16 v3, v19

    move-wide/from16 v5, v27

    goto/16 :goto_1b00

    .line 2964
    :catchall_17e1
    move-exception v0

    move-object v4, v0

    :try_start_17e3
    monitor-exit v3
    :try_end_17e4
    .catchall {:try_start_17e3 .. :try_end_17e4} :catchall_17e1

    .end local v2    # "bFirstBlockRsp":Z
    .end local v13    # "currentBlockNumber":I
    .end local v19    # "iRealBlockSize":J
    .end local v21    # "otherSocketId":I
    .end local v23    # "buf_offset":I
    .end local v24    # "buf_ret":I
    .end local v25    # "totallen":J
    .end local v27    # "finalIdleWaitTime":J
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v50    # "chunkLengths":[J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :try_start_17e4
    throw v4

    .line 2969
    .restart local v2    # "bFirstBlockRsp":Z
    .restart local v13    # "currentBlockNumber":I
    .restart local v19    # "iRealBlockSize":J
    .restart local v21    # "otherSocketId":I
    .restart local v23    # "buf_offset":I
    .restart local v24    # "buf_ret":I
    .restart local v25    # "totallen":J
    .restart local v27    # "finalIdleWaitTime":J
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v50    # "chunkLengths":[J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :cond_17e5
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "response code is not 206 or 200 : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bFirstBlockRsp":Z
    .end local v13    # "currentBlockNumber":I
    .end local v19    # "iRealBlockSize":J
    .end local v21    # "otherSocketId":I
    .end local v23    # "buf_offset":I
    .end local v24    # "buf_ret":I
    .end local v25    # "totallen":J
    .end local v27    # "finalIdleWaitTime":J
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v50    # "chunkLengths":[J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    throw v3
    :try_end_17fc
    .catch Ljava/lang/InterruptedException; {:try_start_17e4 .. :try_end_17fc} :catch_180a
    .catchall {:try_start_17e4 .. :try_end_17fc} :catchall_17fc

    .line 3181
    .end local v5    # "rspCode":I
    .end local v6    # "conLen":J
    .end local v8    # "fullSize":J
    .end local v22    # "rsp":Lcom/android/okhttp/Response;
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .end local v34    # "len":I
    .restart local v2    # "bFirstBlockRsp":Z
    .restart local v13    # "currentBlockNumber":I
    .restart local v19    # "iRealBlockSize":J
    .restart local v21    # "otherSocketId":I
    .restart local v23    # "buf_offset":I
    .restart local v24    # "buf_ret":I
    .restart local v25    # "totallen":J
    .restart local v27    # "finalIdleWaitTime":J
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v50    # "chunkLengths":[J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :catchall_17fc
    move-exception v0

    move-object v6, v0

    move-wide/from16 v3, v19

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v9, v43

    goto/16 :goto_1912

    .line 3175
    :catch_180a
    move-exception v0

    move-object v6, v0

    move/from16 v4, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v8, v31

    move/from16 v9, v43

    move-object/from16 v3, v50

    goto/16 :goto_1abc

    .line 3181
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v50    # "chunkLengths":[J
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v9    # "totalContinuousChunk":I
    .restart local v12    # "blockInfo":[J
    .local v13, "bytesToRead":J
    .restart local v15    # "redirectedUri":Ljava/net/URI;
    :catchall_181a
    move-exception v0

    move-object/from16 v50, v4

    move/from16 v43, v9

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move v13, v3

    move-object v6, v0

    move-wide/from16 v3, v19

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v9    # "totalContinuousChunk":I
    .end local v12    # "blockInfo":[J
    .end local v15    # "redirectedUri":Ljava/net/URI;
    .local v13, "currentBlockNumber":I
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1912

    .line 3175
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v50    # "chunkLengths":[J
    .restart local v3    # "currentBlockNumber":I
    .restart local v4    # "chunkLengths":[J
    .restart local v9    # "totalContinuousChunk":I
    .restart local v12    # "blockInfo":[J
    .local v13, "bytesToRead":J
    .restart local v15    # "redirectedUri":Ljava/net/URI;
    :catch_1831
    move-exception v0

    move-object/from16 v50, v4

    move/from16 v43, v9

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move v13, v3

    move-object v6, v0

    move/from16 v4, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v8, v31

    move-object/from16 v3, v50

    .end local v3    # "currentBlockNumber":I
    .end local v4    # "chunkLengths":[J
    .end local v9    # "totalContinuousChunk":I
    .end local v12    # "blockInfo":[J
    .end local v15    # "redirectedUri":Ljava/net/URI;
    .local v13, "currentBlockNumber":I
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v43    # "totalContinuousChunk":I
    .restart local v46    # "bytesToRead":J
    .restart local v50    # "chunkLengths":[J
    goto/16 :goto_1abc

    .line 3181
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v43    # "totalContinuousChunk":I
    .end local v46    # "bytesToRead":J
    .end local v50    # "chunkLengths":[J
    .restart local v3    # "currentBlockNumber":I
    .local v7, "requestHeaders":Lcom/android/okhttp/Request;
    .local v8, "chunkIndex":I
    .restart local v9    # "totalContinuousChunk":I
    .local v10, "range":Ljava/lang/StringBuffer;
    .restart local v12    # "blockInfo":[J
    .local v13, "bytesToRead":J
    .restart local v15    # "redirectedUri":Ljava/net/URI;
    .local v22, "chunkLengths":[J
    :catchall_184a
    move-exception v0

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v33, v10

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move v13, v3

    move-object v6, v0

    move-wide/from16 v3, v19

    move-object/from16 v50, v22

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    .end local v3    # "currentBlockNumber":I
    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "chunkIndex":I
    .end local v10    # "range":Ljava/lang/StringBuffer;
    .end local v12    # "blockInfo":[J
    .end local v15    # "redirectedUri":Ljava/net/URI;
    .local v13, "currentBlockNumber":I
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v46    # "bytesToRead":J
    goto/16 :goto_1912

    .line 3175
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v46    # "bytesToRead":J
    .restart local v3    # "currentBlockNumber":I
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "chunkIndex":I
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v12    # "blockInfo":[J
    .local v13, "bytesToRead":J
    .restart local v15    # "redirectedUri":Ljava/net/URI;
    :catch_1865
    move-exception v0

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v33, v10

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move v13, v3

    move-object v6, v0

    move-object/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    .end local v3    # "currentBlockNumber":I
    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "chunkIndex":I
    .end local v10    # "range":Ljava/lang/StringBuffer;
    .end local v12    # "blockInfo":[J
    .end local v15    # "redirectedUri":Ljava/net/URI;
    .local v13, "currentBlockNumber":I
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v46    # "bytesToRead":J
    goto/16 :goto_1abc

    .line 2914
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v46    # "bytesToRead":J
    .restart local v3    # "currentBlockNumber":I
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "chunkIndex":I
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    .local v11, "headBytes":[B
    .restart local v12    # "blockInfo":[J
    .local v13, "bytesToRead":J
    .restart local v15    # "redirectedUri":Ljava/net/URI;
    .restart local v29    # "requestLine":Ljava/lang/String;
    :catchall_187e
    move-exception v0

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v33, v10

    move-object/from16 v32, v11

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move v13, v3

    move-object v3, v0

    .end local v3    # "currentBlockNumber":I
    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "chunkIndex":I
    .end local v10    # "range":Ljava/lang/StringBuffer;
    .end local v11    # "headBytes":[B
    .end local v12    # "blockInfo":[J
    .end local v15    # "redirectedUri":Ljava/net/URI;
    .local v13, "currentBlockNumber":I
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v32    # "headBytes":[B
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v46    # "bytesToRead":J
    goto :goto_18a3

    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v32    # "headBytes":[B
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v46    # "bytesToRead":J
    .restart local v3    # "currentBlockNumber":I
    .local v6, "requestLine":Ljava/lang/String;
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "chunkIndex":I
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v11    # "headBytes":[B
    .restart local v12    # "blockInfo":[J
    .local v13, "bytesToRead":J
    .restart local v15    # "redirectedUri":Ljava/net/URI;
    :catchall_1890
    move-exception v0

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v33, v10

    move-object/from16 v32, v11

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move v13, v3

    move-object v3, v0

    .end local v3    # "currentBlockNumber":I
    .end local v6    # "requestLine":Ljava/lang/String;
    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "chunkIndex":I
    .end local v10    # "range":Ljava/lang/StringBuffer;
    .end local v11    # "headBytes":[B
    .end local v12    # "blockInfo":[J
    .end local v15    # "redirectedUri":Ljava/net/URI;
    .local v13, "currentBlockNumber":I
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v32    # "headBytes":[B
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v46    # "bytesToRead":J
    :goto_18a3
    :try_start_18a3
    monitor-exit v4
    :try_end_18a4
    .catchall {:try_start_18a3 .. :try_end_18a4} :catchall_18c1

    .end local v2    # "bFirstBlockRsp":Z
    .end local v9    # "totalContinuousChunk":I
    .end local v13    # "currentBlockNumber":I
    .end local v19    # "iRealBlockSize":J
    .end local v21    # "otherSocketId":I
    .end local v22    # "chunkLengths":[J
    .end local v23    # "buf_offset":I
    .end local v24    # "buf_ret":I
    .end local v25    # "totallen":J
    .end local v27    # "finalIdleWaitTime":J
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v46    # "bytesToRead":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :try_start_18a4
    throw v3
    :try_end_18a5
    .catch Ljava/lang/InterruptedException; {:try_start_18a4 .. :try_end_18a5} :catch_18b3
    .catchall {:try_start_18a4 .. :try_end_18a5} :catchall_18a5

    .line 3181
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v32    # "headBytes":[B
    .restart local v2    # "bFirstBlockRsp":Z
    .restart local v9    # "totalContinuousChunk":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v19    # "iRealBlockSize":J
    .restart local v21    # "otherSocketId":I
    .restart local v22    # "chunkLengths":[J
    .restart local v23    # "buf_offset":I
    .restart local v24    # "buf_ret":I
    .restart local v25    # "totallen":J
    .restart local v27    # "finalIdleWaitTime":J
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v46    # "bytesToRead":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    :catchall_18a5
    move-exception v0

    move-object v6, v0

    move-wide/from16 v3, v19

    move-object/from16 v50, v22

    move/from16 v8, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    goto/16 :goto_1912

    .line 3175
    :catch_18b3
    move-exception v0

    move-object v6, v0

    move-object/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v24

    move-wide/from16 v14, v25

    move/from16 v8, v31

    goto/16 :goto_1abc

    .line 2914
    .restart local v29    # "requestLine":Ljava/lang/String;
    .restart local v32    # "headBytes":[B
    :catchall_18c1
    move-exception v0

    move-object v3, v0

    goto :goto_18a3

    .line 3181
    .end local v24    # "buf_ret":I
    .end local v29    # "requestLine":Ljava/lang/String;
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v32    # "headBytes":[B
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v46    # "bytesToRead":J
    .restart local v3    # "currentBlockNumber":I
    .local v5, "buf_ret":I
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "chunkIndex":I
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v12    # "blockInfo":[J
    .local v13, "bytesToRead":J
    .restart local v15    # "redirectedUri":Ljava/net/URI;
    :catchall_18c4
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v33, v10

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move v13, v3

    move-object v6, v0

    move-wide/from16 v3, v19

    move-object/from16 v50, v22

    move/from16 v8, v23

    move-wide/from16 v14, v25

    .end local v3    # "currentBlockNumber":I
    .end local v5    # "buf_ret":I
    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "chunkIndex":I
    .end local v10    # "range":Ljava/lang/StringBuffer;
    .end local v12    # "blockInfo":[J
    .end local v15    # "redirectedUri":Ljava/net/URI;
    .local v13, "currentBlockNumber":I
    .restart local v24    # "buf_ret":I
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v46    # "bytesToRead":J
    goto :goto_1912

    .line 3175
    .end local v24    # "buf_ret":I
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v46    # "bytesToRead":J
    .restart local v3    # "currentBlockNumber":I
    .restart local v5    # "buf_ret":I
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "chunkIndex":I
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v12    # "blockInfo":[J
    .local v13, "bytesToRead":J
    .restart local v15    # "redirectedUri":Ljava/net/URI;
    :catch_18de
    move-exception v0

    move/from16 v24, v5

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v33, v10

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move v13, v3

    move-object v6, v0

    move-object/from16 v3, v22

    move/from16 v4, v23

    move-wide/from16 v14, v25

    .end local v3    # "currentBlockNumber":I
    .end local v5    # "buf_ret":I
    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "chunkIndex":I
    .end local v10    # "range":Ljava/lang/StringBuffer;
    .end local v12    # "blockInfo":[J
    .end local v15    # "redirectedUri":Ljava/net/URI;
    .local v13, "currentBlockNumber":I
    .restart local v24    # "buf_ret":I
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v46    # "bytesToRead":J
    goto/16 :goto_1abc

    .line 3181
    .end local v23    # "buf_offset":I
    .end local v24    # "buf_ret":I
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v46    # "bytesToRead":J
    .restart local v3    # "currentBlockNumber":I
    .local v4, "buf_offset":I
    .restart local v5    # "buf_ret":I
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "chunkIndex":I
    .restart local v10    # "range":Ljava/lang/StringBuffer;
    .restart local v12    # "blockInfo":[J
    .local v13, "bytesToRead":J
    .restart local v15    # "redirectedUri":Ljava/net/URI;
    :catchall_18f7
    move-exception v0

    move/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v33, v10

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move v13, v3

    move-object v6, v0

    move-wide/from16 v3, v19

    move-object/from16 v50, v22

    move/from16 v8, v23

    move-wide/from16 v14, v25

    .line 3182
    .end local v4    # "buf_offset":I
    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v10    # "range":Ljava/lang/StringBuffer;
    .end local v12    # "blockInfo":[J
    .end local v15    # "redirectedUri":Ljava/net/URI;
    .end local v19    # "iRealBlockSize":J
    .end local v22    # "chunkLengths":[J
    .end local v25    # "totallen":J
    .local v3, "iRealBlockSize":J
    .local v6, "e":Ljava/lang/Throwable;
    .local v8, "buf_offset":I
    .local v13, "currentBlockNumber":I
    .local v14, "totallen":J
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v46    # "bytesToRead":J
    .restart local v50    # "chunkLengths":[J
    :goto_1912
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_1934

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reading thread blocked by some Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3183
    :cond_1934
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_1941

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 3186
    :cond_1941
    iget v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->rrExceptionCount:I

    const/4 v10, 0x1

    add-int/2addr v7, v10

    iput v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->rrExceptionCount:I

    .line 3189
    if-eqz v2, :cond_19da

    .line 3190
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v7

    monitor-enter v7

    .line 3191
    :try_start_1950
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_199c

    iget v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_199c

    .line 3192
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_196d

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    const-string v11, "move to RR_SUCCESS2 in first block exception"

    invoke-virtual {v10, v11}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3193
    :cond_196d
    if-lez v9, :cond_197d

    .line 3194
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v10

    add-int v11, v13, v31

    iget v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v10, v11, v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->block(II)V

    goto :goto_1988

    .line 3196
    :cond_197d
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v10

    iget v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v10, v13, v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->block(II)V

    .line 3198
    :goto_1988
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v11, 0x4

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v10, v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 3199
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 3200
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3201
    monitor-exit v7

    goto :goto_19d2

    .line 3203
    :cond_199c
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v10

    if-eqz v10, :cond_19b0

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_19ae

    goto :goto_19b0

    .line 3210
    :cond_19ae
    monitor-exit v7

    goto :goto_19da

    .line 3204
    :cond_19b0
    :goto_19b0
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_19bf

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    const-string v11, "move to RR_FAILED  in first block exception"

    invoke-virtual {v10, v11}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3205
    :cond_19bf
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v11, 0x1

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v10, v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 3206
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 3207
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3208
    monitor-exit v7

    .line 3254
    .end local v5    # "buf_ret":I
    .end local v6    # "e":Ljava/lang/Throwable;
    .end local v8    # "buf_offset":I
    .end local v9    # "totalContinuousChunk":I
    .end local v13    # "currentBlockNumber":I
    .end local v14    # "totallen":J
    .end local v21    # "otherSocketId":I
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v46    # "bytesToRead":J
    .end local v50    # "chunkLengths":[J
    :goto_19d2
    move-wide/from16 v5, v27

    goto/16 :goto_1b00

    .line 3210
    .restart local v5    # "buf_ret":I
    .restart local v6    # "e":Ljava/lang/Throwable;
    .restart local v8    # "buf_offset":I
    .restart local v9    # "totalContinuousChunk":I
    .restart local v13    # "currentBlockNumber":I
    .restart local v14    # "totallen":J
    .restart local v21    # "otherSocketId":I
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v31    # "chunkIndex":I
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v46    # "bytesToRead":J
    .restart local v50    # "chunkLengths":[J
    :catchall_19d6
    move-exception v0

    move-object v10, v0

    monitor-exit v7
    :try_end_19d9
    .catchall {:try_start_1950 .. :try_end_19d9} :catchall_19d6

    throw v10

    .line 3214
    :cond_19da
    :goto_19da
    instance-of v7, v6, Ljava/lang/OutOfMemoryError;

    if-eqz v7, :cond_1a2f

    .line 3215
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 3216
    :try_start_19e5
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3217
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v10

    iget v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v12

    rem-int/2addr v11, v12

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3218
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .local v10, "i":I
    :goto_1a08
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v11

    array-length v11, v11

    if-ge v10, v11, :cond_1a22

    .line 3219
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v11

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3218
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a08

    .line 3221
    .end local v10    # "i":I
    :cond_1a22
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3222
    monitor-exit v7

    move v7, v2

    move-wide/from16 v18, v3

    goto/16 :goto_1aa1

    :catchall_1a2b
    move-exception v0

    move-object v10, v0

    monitor-exit v7
    :try_end_1a2e
    .catchall {:try_start_19e5 .. :try_end_1a2e} :catchall_1a2b

    throw v10

    .line 3226
    :cond_1a2f
    if-gtz v5, :cond_1a3d

    .line 3227
    int-to-long v10, v8

    sub-long/2addr v14, v10

    .line 3228
    iget-wide v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    move v7, v2

    move-wide/from16 v18, v3

    .end local v2    # "bFirstBlockRsp":Z
    .end local v3    # "iRealBlockSize":J
    .local v7, "bFirstBlockRsp":Z
    .local v18, "iRealBlockSize":J
    int-to-long v2, v8

    sub-long/2addr v10, v2

    iput-wide v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    goto :goto_1a40

    .line 3226
    .end local v7    # "bFirstBlockRsp":Z
    .end local v18    # "iRealBlockSize":J
    .restart local v2    # "bFirstBlockRsp":Z
    .restart local v3    # "iRealBlockSize":J
    :cond_1a3d
    move v7, v2

    move-wide/from16 v18, v3

    .line 3230
    .end local v2    # "bFirstBlockRsp":Z
    .end local v3    # "iRealBlockSize":J
    .restart local v7    # "bFirstBlockRsp":Z
    .restart local v18    # "iRealBlockSize":J
    :goto_1a40
    cmp-long v2, v14, v46

    if-gez v2, :cond_1a92

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v2, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v2, :cond_1a92

    .line 3231
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v2

    monitor-enter v2

    .line 3235
    if-lez v9, :cond_1a61

    .line 3236
    :try_start_1a53
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v3

    add-int v4, v13, v31

    iget v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v4, v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->block(II)V

    goto :goto_1a6c

    .line 3238
    :cond_1a61
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v3

    iget v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v3, v13, v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->block(II)V

    .line 3240
    :goto_1a6c
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 3241
    monitor-exit v2
    :try_end_1a76
    .catchall {:try_start_1a53 .. :try_end_1a76} :catchall_1a8e

    .line 3243
    if-lez v9, :cond_1a8a

    .line 3244
    add-int/lit8 v2, v31, 0x1

    .local v2, "i":I
    :goto_1a7a
    if-ge v2, v9, :cond_1a8a

    .line 3245
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v3

    add-int v4, v13, v2

    const/4 v10, 0x0

    aput-byte v10, v3, v4

    .line 3244
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a7a

    .line 3248
    .end local v2    # "i":I
    :cond_1a8a
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    goto :goto_1a92

    .line 3241
    :catchall_1a8e
    move-exception v0

    move-object v3, v0

    :try_start_1a90
    monitor-exit v2
    :try_end_1a91
    .catchall {:try_start_1a90 .. :try_end_1a91} :catchall_1a8e

    throw v3

    .line 3250
    :cond_1a92
    :goto_1a92
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_1aa1

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    const-string v3, "Checking the block is moved to blocked state"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3253
    .end local v5    # "buf_ret":I
    .end local v6    # "e":Ljava/lang/Throwable;
    .end local v8    # "buf_offset":I
    .end local v9    # "totalContinuousChunk":I
    .end local v13    # "currentBlockNumber":I
    .end local v14    # "totallen":J
    .end local v21    # "otherSocketId":I
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v31    # "chunkIndex":I
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v46    # "bytesToRead":J
    .end local v50    # "chunkLengths":[J
    :cond_1aa1
    :goto_1aa1
    move v2, v7

    move-wide/from16 v3, v18

    goto :goto_1ad0

    .line 3175
    .end local v18    # "iRealBlockSize":J
    .local v2, "bFirstBlockRsp":Z
    .local v3, "currentBlockNumber":I
    .restart local v4    # "buf_offset":I
    .restart local v5    # "buf_ret":I
    .local v7, "requestHeaders":Lcom/android/okhttp/Request;
    .local v8, "chunkIndex":I
    .restart local v9    # "totalContinuousChunk":I
    .local v10, "range":Ljava/lang/StringBuffer;
    .restart local v12    # "blockInfo":[J
    .local v13, "bytesToRead":J
    .restart local v15    # "redirectedUri":Ljava/net/URI;
    .restart local v19    # "iRealBlockSize":J
    .restart local v21    # "otherSocketId":I
    .restart local v22    # "chunkLengths":[J
    .restart local v25    # "totallen":J
    :catch_1aa5
    move-exception v0

    move/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v33, v10

    move-object/from16 v36, v12

    move-wide/from16 v46, v13

    move-object/from16 v42, v15

    move v13, v3

    move-object v6, v0

    move-object/from16 v3, v22

    move-wide/from16 v14, v25

    .line 3176
    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v10    # "range":Ljava/lang/StringBuffer;
    .end local v12    # "blockInfo":[J
    .end local v15    # "redirectedUri":Ljava/net/URI;
    .end local v22    # "chunkLengths":[J
    .end local v25    # "totallen":J
    .local v3, "chunkLengths":[J
    .local v6, "ex":Ljava/lang/InterruptedException;
    .local v13, "currentBlockNumber":I
    .restart local v14    # "totallen":J
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v33    # "range":Ljava/lang/StringBuffer;
    .restart local v36    # "blockInfo":[J
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v46    # "bytesToRead":J
    :goto_1abc
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_1acb

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    const-string v10, "in InterruptedException, handle handover"

    invoke-virtual {v7, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3179
    :cond_1acb
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 3252
    .end local v6    # "ex":Ljava/lang/InterruptedException;
    move-wide/from16 v3, v19

    .line 3253
    .end local v4    # "buf_offset":I
    .end local v5    # "buf_ret":I
    .end local v8    # "chunkIndex":I
    .end local v9    # "totalContinuousChunk":I
    .end local v13    # "currentBlockNumber":I
    .end local v14    # "totallen":J
    .end local v19    # "iRealBlockSize":J
    .end local v21    # "otherSocketId":I
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v33    # "range":Ljava/lang/StringBuffer;
    .end local v36    # "blockInfo":[J
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .end local v46    # "bytesToRead":J
    .local v3, "iRealBlockSize":J
    :goto_1ad0
    move-wide/from16 v5, v27

    goto/16 :goto_a7

    .line 2868
    .end local v3    # "iRealBlockSize":J
    .end local v27    # "finalIdleWaitTime":J
    .local v4, "redirectedUri":Ljava/net/URI;
    .local v5, "finalIdleWaitTime":J
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .local v8, "startWaitFinishTime":J
    .restart local v12    # "blockInfo":[J
    .restart local v19    # "iRealBlockSize":J
    .restart local v21    # "otherSocketId":I
    .local v23, "bytesToRead":J
    .restart local v25    # "totallen":J
    :cond_1ad4
    move-object/from16 v42, v4

    move-object/from16 v30, v7

    .line 2869
    .end local v4    # "redirectedUri":Ljava/net/URI;
    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v42    # "redirectedUri":Ljava/net/URI;
    :goto_1ad8
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_1afe

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    const-string v4, "finish to wait for other thread exit for download finished"

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_1afe

    .line 2752
    .end local v12    # "blockInfo":[J
    .end local v19    # "iRealBlockSize":J
    .end local v21    # "otherSocketId":I
    .end local v23    # "bytesToRead":J
    .end local v25    # "totallen":J
    .end local v30    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v42    # "redirectedUri":Ljava/net/URI;
    .restart local v3    # "iRealBlockSize":J
    .local v8, "otherSocketId":I
    :catchall_1ae8
    move-exception v0

    move-wide/from16 v19, v3

    move/from16 v21, v8

    move-object v3, v0

    .end local v3    # "iRealBlockSize":J
    .end local v8    # "otherSocketId":I
    .restart local v19    # "iRealBlockSize":J
    .restart local v21    # "otherSocketId":I
    :goto_1aee
    :try_start_1aee
    monitor-exit v9
    :try_end_1aef
    .catchall {:try_start_1aee .. :try_end_1aef} :catchall_1af0

    throw v3

    :catchall_1af0
    move-exception v0

    move-object v3, v0

    goto :goto_1aee

    .line 2695
    .end local v19    # "iRealBlockSize":J
    .end local v21    # "otherSocketId":I
    .restart local v3    # "iRealBlockSize":J
    :catchall_1af3
    move-exception v0

    move-wide/from16 v19, v3

    move-object v3, v0

    .end local v3    # "iRealBlockSize":J
    .restart local v19    # "iRealBlockSize":J
    :goto_1af7
    :try_start_1af7
    monitor-exit v7
    :try_end_1af8
    .catchall {:try_start_1af7 .. :try_end_1af8} :catchall_1af9

    throw v3

    :catchall_1af9
    move-exception v0

    move-object v3, v0

    goto :goto_1af7

    .line 2642
    .end local v19    # "iRealBlockSize":J
    .restart local v3    # "iRealBlockSize":J
    :cond_1afc
    move-wide/from16 v19, v3

    .line 3254
    .end local v3    # "iRealBlockSize":J
    .restart local v19    # "iRealBlockSize":J
    :cond_1afe
    :goto_1afe
    move-wide/from16 v3, v19

    .end local v19    # "iRealBlockSize":J
    .restart local v3    # "iRealBlockSize":J
    :goto_1b00
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->t0:J

    sub-long/2addr v7, v9

    sub-long/2addr v7, v5

    iput-wide v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->totalElapsedTime:J

    .line 3255
    sget-boolean v7, Lcom/android/okhttp/internal/http/HttpEngine;->HTTPTIMER:Z

    if-eqz v7, :cond_1b15

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->timer:[J

    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->totalElapsedTime:J

    const/4 v10, 0x0

    aput-wide v8, v7, v10

    .line 3256
    :cond_1b15
    sget-boolean v7, Lcom/android/okhttp/internal/http/HttpEngine;->HTTPTIMER:Z

    if-eqz v7, :cond_1b5e

    iget-wide v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    const-wide/16 v9, 0x64

    cmp-long v7, v7, v9

    if-lez v7, :cond_1b5e

    .line 3257
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->timer:[J

    const/4 v8, 0x2

    aget-wide v9, v7, v8

    const/4 v11, 0x3

    aget-wide v11, v7, v11

    sub-long/2addr v9, v11

    aput-wide v9, v7, v8

    .line 3258
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "\tHTTPTIMER"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3259
    .local v7, "timerStr":Ljava/lang/StringBuffer;
    iget v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->sockID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, "\t\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->totalReadSize:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 3260
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1b43
    const/4 v9, 0x5

    if-ge v8, v9, :cond_1b55

    .line 3261
    const-string v9, "\t"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->timer:[J

    aget-wide v9, v9, v8

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 3260
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b43

    .line 3263
    .end local v8    # "i":I
    :cond_1b55
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3265
    .end local v7    # "timerStr":Ljava/lang/StringBuffer;
    :cond_1b5e
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_1b6d

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    const-string v8, "download thread end"

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3266
    :cond_1b6d
    const/4 v7, 0x0

    .line 3267
    .local v7, "bSubmitHere":Z
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v8

    monitor-enter v8

    .line 3268
    :try_start_1b75
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->finishedThreadNum:I
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v9

    if-nez v9, :cond_1b7f

    const/4 v14, 0x1

    goto :goto_1b80

    :cond_1b7f
    const/4 v14, 0x0

    :goto_1b80
    move v7, v14

    .line 3269
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # operator++ for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->finishedThreadNum:I
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3208(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    .line 3270
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v9, :cond_1baa

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "total finished thread num = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->finishedThreadNum:I
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3271
    :cond_1baa
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 3272
    :goto_1bb3
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->finishedThreadNum:I
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v9

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v10
    :try_end_1bbf
    .catchall {:try_start_1b75 .. :try_end_1bbf} :catchall_1c37

    if-ge v9, v10, :cond_1bd3

    .line 3274
    :try_start_1bc1
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v9
    :try_end_1bc7
    .catchall {:try_start_1bc1 .. :try_end_1bc7} :catchall_1bcf

    const-wide/16 v10, 0x3e8

    :try_start_1bc9
    invoke-virtual {v9, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_1bcc
    .catchall {:try_start_1bc9 .. :try_end_1bcc} :catchall_1bcd

    goto :goto_1bd2

    .line 3276
    :catchall_1bcd
    move-exception v0

    goto :goto_1bd2

    :catchall_1bcf
    move-exception v0

    const-wide/16 v10, 0x3e8

    :goto_1bd2
    goto :goto_1bb3

    .line 3278
    :cond_1bd3
    :try_start_1bd3
    monitor-exit v8
    :try_end_1bd4
    .catchall {:try_start_1bd3 .. :try_end_1bd4} :catchall_1c37

    .line 3279
    if-eqz v7, :cond_1c02

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-boolean v8, v8, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->bIOExceptionDuringContinueChunk:Z

    if-nez v8, :cond_1c02

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iget-boolean v8, v8, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->bIOExceptionDuringContinueChunk:Z

    if-nez v8, :cond_1c02

    .line 3280
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_1bff

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8

    const-string v9, "submit statistics data to ConnectivityService"

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3281
    :cond_1bff
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->submitData()V

    .line 3284
    :cond_1c02
    # operator-- for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iCurrentMultiSocketNum:I
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1010()I

    .line 3285
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_1c27

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "now active multi socket instance is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iCurrentMultiSocketNum:I
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1000()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3287
    :cond_1c27
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_1c36

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8

    const-string v9, "download thread exit"

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3288
    :cond_1c36
    return-void

    .line 3278
    :catchall_1c37
    move-exception v0

    move-object v9, v0

    :try_start_1c39
    monitor-exit v8
    :try_end_1c3a
    .catchall {:try_start_1c39 .. :try_end_1c3a} :catchall_1c37

    throw v9
.end method

.class public final Lcom/android/okhttp/internal/framed/FramedStream;
.super Ljava/lang/Object;
.source "FramedStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;,
        Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;,
        Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field blacklist bytesLeftInWriteWindow:J

.field private final blacklist connection:Lcom/android/okhttp/internal/framed/FramedConnection;

.field private blacklist errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

.field private final blacklist id:I

.field private final blacklist readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

.field private final blacklist requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

.field private final blacklist source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

.field blacklist unacknowledgedBytesRead:J

.field private final blacklist writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 37
    return-void
.end method

.method constructor blacklist <init>(ILcom/android/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V
    .registers 11
    .param p1, "id"    # I
    .param p2, "connection"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p3, "outFinished"    # Z
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/okhttp/internal/framed/FramedConnection;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p5, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 68
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;-><init>(Lcom/android/okhttp/internal/framed/FramedStream;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    .line 69
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;-><init>(Lcom/android/okhttp/internal/framed/FramedStream;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 80
    if-eqz p2, :cond_55

    .line 81
    if-eqz p5, :cond_4d

    .line 82
    iput p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    .line 83
    iput-object p2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 84
    iget-object v1, p2, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    .line 85
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 86
    new-instance v1, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    iget-object v3, p2, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    .line 87
    invoke-virtual {v3, v2}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;-><init>(Lcom/android/okhttp/internal/framed/FramedStream;JLcom/android/okhttp/internal/framed/FramedStream$1;)V

    iput-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    .line 88
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;-><init>(Lcom/android/okhttp/internal/framed/FramedStream;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    .line 89
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    # setter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z
    invoke-static {v0, p4}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->access$102(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 90
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    # setter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {v0, p3}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$202(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;Z)Z

    .line 91
    iput-object p5, p0, Lcom/android/okhttp/internal/framed/FramedStream;->requestHeaders:Ljava/util/List;

    .line 92
    return-void

    .line 81
    :cond_4d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist access$1000(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->cancelStreamIfNecessary()V

    return-void
.end method

.method static synthetic blacklist access$1100(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedStream;

    .line 37
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method static synthetic blacklist access$1200(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->checkOutNotClosed()V

    return-void
.end method

.method static synthetic blacklist access$500(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedStream;

    .line 37
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/android/okhttp/internal/framed/FramedStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedStream;

    .line 37
    iget v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    return v0
.end method

.method static synthetic blacklist access$700(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedStream;

    .line 37
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method static synthetic blacklist access$800(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/ErrorCode;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedStream;

    .line 37
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    return-object v0
.end method

.method static synthetic blacklist access$900(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->waitForIo()V

    return-void
.end method

.method private blacklist cancelStreamIfNecessary()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    nop

    .line 453
    monitor-enter p0

    .line 454
    :try_start_2
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->access$100(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->access$300(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$200(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$400(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 455
    .local v0, "cancel":Z
    :goto_25
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v1

    .line 456
    .local v1, "open":Z
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_3c

    .line 457
    if-eqz v0, :cond_32

    .line 462
    sget-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/framed/FramedStream;->close(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    goto :goto_3b

    .line 463
    :cond_32
    if-nez v1, :cond_3b

    .line 464
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    .line 466
    :cond_3b
    :goto_3b
    return-void

    .line 456
    .end local v0    # "cancel":Z
    .end local v1    # "open":Z
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method private blacklist checkOutNotClosed()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$400(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 577
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$200(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 579
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_15

    .line 582
    return-void

    .line 580
    :cond_15
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_2e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_36
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist closeInternal(Lcom/android/okhttp/internal/framed/ErrorCode;)Z
    .registers 4
    .param p1, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 240
    nop

    .line 241
    monitor-enter p0

    .line 242
    :try_start_2
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 243
    monitor-exit p0

    return v1

    .line 245
    :cond_9
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->access$100(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$200(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 246
    monitor-exit p0

    return v1

    .line 248
    :cond_1b
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 250
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_2a

    .line 251
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    .line 252
    const/4 v0, 0x1

    return v0

    .line 250
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method private blacklist waitForIo()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 590
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_5

    .line 593
    nop

    .line 594
    return-void

    .line 591
    :catch_5
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
.end method


# virtual methods
.method blacklist addBytesToWriteWindow(J)V
    .registers 5
    .param p1, "delta"    # J

    .line 570
    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 571
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 572
    :cond_e
    return-void
.end method

.method public blacklist close(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 4
    .param p1, "rstStatusCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedStream;->closeInternal(Lcom/android/okhttp/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 222
    return-void

    .line 224
    :cond_7
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynReset(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 225
    return-void
.end method

.method public blacklist closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 4
    .param p1, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 232
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedStream;->closeInternal(Lcom/android/okhttp/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 233
    return-void

    .line 235
    :cond_7
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 236
    return-void
.end method

.method public blacklist getConnection()Lcom/android/okhttp/internal/framed/FramedConnection;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    return-object v0
.end method

.method public declared-synchronized blacklist getErrorCode()Lcom/android/okhttp/internal/framed/ErrorCode;
    .registers 2

    monitor-enter p0

    .line 156
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 156
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedStream;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    return v0
.end method

.method public blacklist getRequestHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->requestHeaders:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized blacklist getResponseHeaders()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 139
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->enter()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_42

    .line 141
    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_3b

    if-nez v0, :cond_14

    :try_start_a
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_14

    .line 142
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->waitForIo()V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_6

    .line 145
    :catchall_12
    move-exception v0

    goto :goto_3c

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 146
    nop

    .line 147
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_42

    monitor-exit p0

    return-object v0

    .line 148
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_22
    :try_start_22
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :catchall_3b
    move-exception v0

    :goto_3c
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 146
    throw v0
    :try_end_42
    .catchall {:try_start_22 .. :try_end_42} :catchall_42

    .line 138
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getSink()Lcom/android/okhttp/okio/Sink;
    .registers 3

    .line 208
    monitor-enter p0

    .line 209
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_14

    .line 210
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedStream;
    throw v0

    .line 212
    .restart local p0    # "this":Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_14
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    .line 213
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    return-object v0

    .line 212
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public blacklist getSource()Lcom/android/okhttp/okio/Source;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    return-object v0
.end method

.method public blacklist isLocallyInitiated()Z
    .registers 5

    .line 122
    iget v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 123
    .local v0, "streamIsClient":Z
    :goto_a
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-boolean v3, v3, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    if-ne v3, v0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1
.end method

.method public declared-synchronized blacklist isOpen()Z
    .registers 3

    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_31

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 110
    monitor-exit p0

    return v1

    .line 112
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->access$100(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->access$300(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_18
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    .line 113
    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$200(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    # getter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$400(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_28
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_31

    if-eqz v0, :cond_2e

    .line 115
    monitor-exit p0

    return v1

    .line 117
    .restart local p0    # "this":Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_2e
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 108
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedStream;
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist readTimeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method blacklist receiveData(Lcom/android/okhttp/okio/BufferedSource;I)V
    .registers 6
    .param p1, "in"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    nop

    .line 288
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->receive(Lcom/android/okhttp/okio/BufferedSource;J)V

    .line 289
    return-void
.end method

.method blacklist receiveFin()V
    .registers 4

    .line 292
    nop

    .line 294
    monitor-enter p0

    .line 295
    :try_start_2
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    const/4 v1, 0x1

    # setter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->finished:Z
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->access$102(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 296
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v0

    .line 297
    .local v0, "open":Z
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 298
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_1a

    .line 299
    if-nez v0, :cond_19

    .line 300
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    .line 302
    :cond_19
    return-void

    .line 298
    .end local v0    # "open":Z
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method blacklist receiveHeaders(Ljava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V
    .registers 7
    .param p2, "headersMode"    # Lcom/android/okhttp/internal/framed/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;",
            "Lcom/android/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 256
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    nop

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    const/4 v1, 0x1

    .line 259
    .local v1, "open":Z
    monitor-enter p0

    .line 260
    :try_start_4
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v2, :cond_1d

    .line 261
    invoke-virtual {p2}, Lcom/android/okhttp/internal/framed/HeadersMode;->failIfHeadersAbsent()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 262
    sget-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    move-object v0, v2

    goto :goto_36

    .line 264
    :cond_12
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 265
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v2

    move v1, v2

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_36

    .line 269
    :cond_1d
    invoke-virtual {p2}, Lcom/android/okhttp/internal/framed/HeadersMode;->failIfHeadersPresent()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 270
    sget-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->STREAM_IN_USE:Lcom/android/okhttp/internal/framed/ErrorCode;

    move-object v0, v2

    goto :goto_36

    .line 272
    :cond_27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v2, "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 274
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    iput-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 278
    .end local v2    # "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    :goto_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_47

    .line 279
    if-eqz v0, :cond_3d

    .line 280
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/framed/FramedStream;->closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    goto :goto_46

    .line 281
    :cond_3d
    if-nez v1, :cond_46

    .line 282
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    .line 284
    :cond_46
    :goto_46
    return-void

    .line 278
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2
.end method

.method declared-synchronized blacklist receiveRstStream(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 3
    .param p1, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    monitor-enter p0

    .line 305
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_a

    .line 306
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 309
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_a
    monitor-exit p0

    return-void

    .line 304
    .end local p1    # "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist reply(Ljava/util/List;Z)V
    .registers 6
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    .local p1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    nop

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "outFinished":Z
    monitor-enter p0

    .line 169
    if-eqz p1, :cond_2e

    .line 172
    :try_start_5
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v1, :cond_24

    .line 175
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 176
    if-nez p2, :cond_14

    .line 177
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    const/4 v2, 0x1

    # setter for: Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->finished:Z
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->access$202(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;Z)Z

    .line 178
    const/4 v0, 0x1

    .line 180
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_2c

    .line 181
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynReply(IZLjava/util/List;)V

    .line 183
    if-eqz v0, :cond_23

    .line 184
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->flush()V

    .line 186
    :cond_23
    return-void

    .line 173
    :cond_24
    :try_start_24
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "reply already sent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "outFinished":Z
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedStream;
    .end local p1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    .end local p2    # "out":Z
    throw v1

    .line 180
    .restart local v0    # "outFinished":Z
    .restart local p0    # "this":Lcom/android/okhttp/internal/framed/FramedStream;
    .restart local p1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    .restart local p2    # "out":Z
    :catchall_2c
    move-exception v1

    goto :goto_36

    .line 170
    :cond_2e
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "responseHeaders == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "outFinished":Z
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedStream;
    .end local p1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    .end local p2    # "out":Z
    throw v1

    .line 180
    .restart local v0    # "outFinished":Z
    .restart local p0    # "this":Lcom/android/okhttp/internal/framed/FramedStream;
    .restart local p1    # "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    .restart local p2    # "out":Z
    :goto_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_24 .. :try_end_37} :catchall_2c

    throw v1
.end method

.method public blacklist writeTimeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

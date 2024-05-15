.class public final Lcom/android/okhttp/internal/framed/FramedStream;
.super Ljava/lang/Object;
.source "FramedStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;,
        Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;,
        Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field private final connection:Lcom/android/okhttp/internal/framed/FramedConnection;

.field private errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

.field private final id:I

.field private final readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field final sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

.field private final source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

.field unacknowledgedBytesRead:J

.field private final writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedConnection;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedStream;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/ErrorCode;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedStream;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/internal/framed/FramedStream;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedStream;

    .prologue
    iget v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedStream;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/internal/framed/FramedStream;)Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedStream;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 1
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedStream;

    .prologue
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->cancelStreamIfNecessary()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 1
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedStream;

    .prologue
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->checkOutNotClosed()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/okhttp/internal/framed/FramedStream;)V
    .registers 1
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedStream;

    .prologue
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->waitForIo()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/okhttp/internal/framed/FramedStream;->-assertionsDisabled:Z

    .line 35
    return-void
.end method

.method constructor <init>(ILcom/android/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V
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
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/high16 v2, 0x10000

    const/4 v4, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->unacknowledgedBytesRead:J

    .line 66
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;-><init>(Lcom/android/okhttp/internal/framed/FramedStream;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    .line 67
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;-><init>(Lcom/android/okhttp/internal/framed/FramedStream;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    .line 74
    iput-object v4, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 78
    if-nez p2, :cond_25

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_25
    if-nez p5, :cond_30

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_30
    iput p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    .line 81
    iput-object p2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 83
    iget-object v0, p2, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    int-to-long v0, v0

    .line 82
    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 84
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    .line 85
    iget-object v1, p2, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v1

    int-to-long v2, v1

    .line 84
    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;-><init>(Lcom/android/okhttp/internal/framed/FramedStream;JLcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    .line 86
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;-><init>(Lcom/android/okhttp/internal/framed/FramedStream;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    .line 87
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0, p4}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->-set0(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 88
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0, p3}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->-set0(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;Z)Z

    .line 89
    iput-object p5, p0, Lcom/android/okhttp/internal/framed/FramedStream;->requestHeaders:Ljava/util/List;

    .line 90
    return-void
.end method

.method private cancelStreamIfNecessary()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    sget-boolean v2, Lcom/android/okhttp/internal/framed/FramedStream;->-assertionsDisabled:Z

    if-nez v2, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 451
    :cond_10
    monitor-enter p0

    .line 452
    :try_start_11
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->-get1(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->-get0(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->-get1(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->-get0(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    .line 453
    :goto_2f
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->isOpen()Z
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_40

    move-result v1

    .local v1, "open":Z
    monitor-exit p0

    .line 455
    if-eqz v0, :cond_43

    .line 460
    sget-object v2, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/framed/FramedStream;->close(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 464
    :cond_3b
    :goto_3b
    return-void

    .line 452
    .end local v1    # "open":Z
    :cond_3c
    const/4 v0, 0x1

    .local v0, "cancel":Z
    goto :goto_2f

    .end local v0    # "cancel":Z
    :cond_3e
    const/4 v0, 0x0

    .restart local v0    # "cancel":Z
    goto :goto_2f

    .line 451
    .end local v0    # "cancel":Z
    :catchall_40
    move-exception v2

    monitor-exit p0

    throw v2

    .line 461
    .restart local v1    # "open":Z
    :cond_43
    if-nez v1, :cond_3b

    .line 462
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v3, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    goto :goto_3b
.end method

.method private checkOutNotClosed()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->-get0(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 574
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_11
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->-get1(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 576
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_22
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    if-eqz v0, :cond_42

    .line 578
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_42
    return-void
.end method

.method private closeInternal(Lcom/android/okhttp/internal/framed/ErrorCode;)Z
    .registers 4
    .param p1, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    .prologue
    const/4 v1, 0x0

    .line 238
    sget-boolean v0, Lcom/android/okhttp/internal/framed/FramedStream;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 239
    :cond_11
    monitor-enter p0

    .line 240
    :try_start_12
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_39

    if-eqz v0, :cond_18

    monitor-exit p0

    .line 241
    return v1

    .line 243
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->-get1(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->-get1(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_39

    move-result v0

    if-eqz v0, :cond_2a

    monitor-exit p0

    .line 244
    return v1

    .line 246
    :cond_2a
    :try_start_2a
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 247
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->notifyAll()V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_39

    monitor-exit p0

    .line 249
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    .line 250
    const/4 v0, 0x1

    return v0

    .line 239
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private waitForIo()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 588
    :try_start_0
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 592
    return-void

    .line 589
    :catch_4
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .registers 6
    .param p1, "delta"    # J

    .prologue
    .line 568
    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    .line 569
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->notifyAll()V

    .line 570
    :cond_e
    return-void
.end method

.method public close(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 4
    .param p1, "rstStatusCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedStream;->closeInternal(Lcom/android/okhttp/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 220
    return-void

    .line 222
    :cond_7
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynReset(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 223
    return-void
.end method

.method public closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 4
    .param p1, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedStream;->closeInternal(Lcom/android/okhttp/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 231
    return-void

    .line 233
    :cond_7
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 234
    return-void
.end method

.method public getConnection()Lcom/android/okhttp/internal/framed/FramedConnection;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    return-object v0
.end method

.method public declared-synchronized getErrorCode()Lcom/android/okhttp/internal/framed/ErrorCode;
    .registers 2

    .prologue
    monitor-enter p0

    .line 154
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    return v0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->requestHeaders:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getResponseHeaders()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->enter()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_19

    .line 139
    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_1c

    .line 140
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->waitForIo()V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    goto :goto_6

    .line 142
    :catchall_12
    move-exception v0

    .line 143
    :try_start_13
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 142
    throw v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    .line 143
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 145
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_19

    monitor-exit p0

    return-object v0

    .line 146
    :cond_29
    :try_start_29
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_19
.end method

.method public getSink()Lcom/android/okhttp/okio/Sink;
    .registers 3

    .prologue
    .line 206
    monitor-enter p0

    .line 207
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->isLocallyInitiated()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_16

    .line 206
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_19
    monitor-exit p0

    .line 211
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    return-object v0
.end method

.method public getSource()Lcom/android/okhttp/okio/Source;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 120
    iget v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_f

    const/4 v0, 0x1

    .line 121
    .local v0, "streamIsClient":Z
    :goto_8
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-boolean v2, v2, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    if-ne v2, v0, :cond_11

    :goto_e
    return v1

    .line 120
    .end local v0    # "streamIsClient":Z
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "streamIsClient":Z
    goto :goto_8

    .line 121
    :cond_11
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public declared-synchronized isOpen()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 107
    :try_start_2
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_31

    if-eqz v0, :cond_8

    monitor-exit p0

    .line 108
    return v1

    .line 110
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->-get1(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->-get0(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 111
    :cond_18
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->-get1(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->-get0(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;)Z

    move-result v0

    .line 110
    if-eqz v0, :cond_2e

    .line 112
    :cond_28
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_31

    if-eqz v0, :cond_2e

    monitor-exit p0

    .line 113
    return v1

    .line 115
    :cond_2e
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTimeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

.method receiveData(Lcom/android/okhttp/okio/BufferedSource;I)V
    .registers 7
    .param p1, "in"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    sget-boolean v0, Lcom/android/okhttp/internal/framed/FramedStream;->-assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 286
    :cond_10
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->receive(Lcom/android/okhttp/okio/BufferedSource;J)V

    .line 287
    return-void
.end method

.method receiveFin()V
    .registers 4

    .prologue
    .line 290
    sget-boolean v1, Lcom/android/okhttp/internal/framed/FramedStream;->-assertionsDisabled:Z

    if-nez v1, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 292
    :cond_10
    monitor-enter p0

    .line 293
    :try_start_11
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->source:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;->-set0(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSource;Z)Z

    .line 294
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v0

    .line 295
    .local v0, "open":Z
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->notifyAll()V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_29

    monitor-exit p0

    .line 297
    if-nez v0, :cond_28

    .line 298
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    .line 300
    :cond_28
    return-void

    .line 292
    .end local v0    # "open":Z
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method receiveHeaders(Ljava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V
    .registers 8
    .param p2, "headersMode"    # Lcom/android/okhttp/internal/framed/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;",
            "Lcom/android/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    sget-boolean v3, Lcom/android/okhttp/internal/framed/FramedStream;->-assertionsDisabled:Z

    if-nez v3, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 255
    :cond_10
    const/4 v0, 0x0

    .line 256
    .local v0, "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    const/4 v2, 0x1

    .line 257
    .local v2, "open":Z
    monitor-enter p0

    .line 258
    :try_start_13
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-nez v3, :cond_33

    .line 259
    invoke-virtual {p2}, Lcom/android/okhttp/internal/framed/HeadersMode;->failIfHeadersAbsent()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 260
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_30

    .end local v0    # "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    .end local v2    # "open":Z
    :goto_1f
    monitor-exit p0

    .line 277
    if-eqz v0, :cond_4c

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/framed/FramedStream;->closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 282
    :cond_25
    :goto_25
    return-void

    .line 262
    .restart local v0    # "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    .restart local v2    # "open":Z
    :cond_26
    :try_start_26
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 263
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v2

    .line 264
    .local v2, "open":Z
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->notifyAll()V
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_30

    goto :goto_1f

    .line 257
    .end local v2    # "open":Z
    :catchall_30
    move-exception v3

    monitor-exit p0

    throw v3

    .line 267
    .local v2, "open":Z
    :cond_33
    :try_start_33
    invoke-virtual {p2}, Lcom/android/okhttp/internal/framed/HeadersMode;->failIfHeadersPresent()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 268
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->STREAM_IN_USE:Lcom/android/okhttp/internal/framed/ErrorCode;

    .local v0, "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    goto :goto_1f

    .line 270
    .local v0, "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    :cond_3c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v1, "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 273
    iput-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_30

    goto :goto_1f

    .line 279
    .end local v0    # "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    .end local v1    # "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    .end local v2    # "open":Z
    :cond_4c
    if-nez v2, :cond_25

    .line 280
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v4, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/framed/FramedConnection;->removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;

    goto :goto_25
.end method

.method declared-synchronized receiveRstStream(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 3
    .param p1, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    .prologue
    monitor-enter p0

    .line 303
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_a

    .line 304
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->errorCode:Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 305
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedStream;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    .line 307
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reply(Ljava/util/List;Z)V
    .registers 6
    .param p2, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    sget-boolean v1, Lcom/android/okhttp/internal/framed/FramedStream;->-assertionsDisabled:Z

    if-nez v1, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 165
    :cond_10
    const/4 v0, 0x0

    .line 166
    .local v0, "outFinished":Z
    monitor-enter p0

    .line 167
    if-nez p1, :cond_20

    .line 168
    :try_start_14
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "responseHeaders == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1d

    .line 166
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 170
    :cond_20
    :try_start_20
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    if-eqz v1, :cond_2d

    .line 171
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "reply already sent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_2d
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->responseHeaders:Ljava/util/List;

    .line 174
    if-nez p2, :cond_38

    .line 175
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->sink:Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;->-set0(Lcom/android/okhttp/internal/framed/FramedStream$FramedDataSink;Z)Z
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_1d

    .line 176
    const/4 v0, 0x1

    :cond_38
    monitor-exit p0

    .line 179
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget v2, p0, Lcom/android/okhttp/internal/framed/FramedStream;->id:I

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynReply(IZLjava/util/List;)V

    .line 181
    if-eqz v0, :cond_47

    .line 182
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedStream;->connection:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->flush()V

    .line 184
    :cond_47
    return-void
.end method

.method public writeTimeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout:Lcom/android/okhttp/internal/framed/FramedStream$StreamTimeout;

    return-object v0
.end method

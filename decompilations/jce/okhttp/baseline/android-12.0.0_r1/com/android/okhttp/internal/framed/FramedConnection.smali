.class public final Lcom/android/okhttp/internal/framed/FramedConnection;
.super Ljava/lang/Object;
.source "FramedConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/framed/FramedConnection$Listener;,
        Lcom/android/okhttp/internal/framed/FramedConnection$Reader;,
        Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final blacklist executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field blacklist bytesLeftInWriteWindow:J

.field final blacklist client:Z

.field private final blacklist currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

.field private final blacklist hostName:Ljava/lang/String;

.field private blacklist idleStartTimeNs:J

.field private blacklist lastGoodStreamId:I

.field private final blacklist listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

.field private blacklist nextPingId:I

.field private blacklist nextStreamId:I

.field blacklist okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

.field final blacklist peerSettings:Lcom/android/okhttp/internal/framed/Settings;

.field private blacklist pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/okhttp/internal/framed/Ping;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist protocol:Lcom/android/okhttp/Protocol;

.field private final blacklist pushExecutor:Ljava/util/concurrent/ExecutorService;

.field private final blacklist pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

.field final blacklist readerRunnable:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

.field private blacklist receivedInitialPeerSettings:Z

.field private blacklist shutdown:Z

.field final blacklist socket:Ljava/net/Socket;

.field private final blacklist streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/okhttp/internal/framed/FramedStream;",
            ">;"
        }
    .end annotation
.end field

.field blacklist unacknowledgedBytesRead:J

.field final blacklist variant:Lcom/android/okhttp/internal/framed/Variant;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 57
    nop

    .line 71
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v0, 0x1

    .line 73
    const-string v7, "OkHttp FramedConnection"

    invoke-static {v7, v0}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    .line 71
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)V
    .registers 20
    .param p1, "builder"    # Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    .line 91
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J

    .line 107
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 117
    new-instance v1, Lcom/android/okhttp/internal/framed/Settings;

    invoke-direct {v1}, Lcom/android/okhttp/internal/framed/Settings;-><init>()V

    iput-object v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    .line 123
    new-instance v1, Lcom/android/okhttp/internal/framed/Settings;

    invoke-direct {v1}, Lcom/android/okhttp/internal/framed/Settings;-><init>()V

    iput-object v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    .line 125
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    .line 838
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    .line 134
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->protocol:Lcom/android/okhttp/Protocol;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$000(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/Protocol;

    move-result-object v3

    iput-object v3, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->protocol:Lcom/android/okhttp/Protocol;

    .line 135
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$100(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/internal/framed/PushObserver;

    move-result-object v4

    iput-object v4, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

    .line 136
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    .line 137
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$300(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    move-result-object v5

    iput-object v5, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    .line 139
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_50

    move v5, v7

    goto :goto_51

    :cond_50
    move v5, v6

    :goto_51
    iput v5, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 140
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v5

    if-eqz v5, :cond_62

    sget-object v5, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v3, v5, :cond_62

    .line 141
    iget v5, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 144
    :cond_62
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v5

    if-eqz v5, :cond_69

    move v6, v7

    :cond_69
    iput v6, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextPingId:I

    .line 150
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$200(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v5

    const/4 v6, 0x7

    if-eqz v5, :cond_79

    .line 151
    iget-object v5, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/high16 v8, 0x1000000

    invoke-virtual {v5, v6, v2, v8}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    .line 154
    :cond_79
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->hostName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$400(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    .line 156
    sget-object v8, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    const/4 v9, 0x0

    if-ne v3, v8, :cond_b9

    .line 157
    new-instance v3, Lcom/android/okhttp/internal/framed/Http2;

    invoke-direct {v3}, Lcom/android/okhttp/internal/framed/Http2;-><init>()V

    iput-object v3, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->variant:Lcom/android/okhttp/internal/framed/Variant;

    .line 159
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v13, 0x3c

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v5, v8, v2

    .line 161
    const-string v5, "OkHttp %s Push Observer"

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v17

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 163
    const v3, 0xffff

    invoke-virtual {v1, v6, v2, v3}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    .line 164
    const/4 v3, 0x5

    const/16 v5, 0x4000

    invoke-virtual {v1, v3, v2, v5}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    goto :goto_c6

    .line 165
    :cond_b9
    sget-object v2, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    if-ne v3, v2, :cond_fb

    .line 166
    new-instance v2, Lcom/android/okhttp/internal/framed/Spdy3;

    invoke-direct {v2}, Lcom/android/okhttp/internal/framed/Spdy3;-><init>()V

    iput-object v2, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->variant:Lcom/android/okhttp/internal/framed/Variant;

    .line 167
    iput-object v9, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 171
    :goto_c6
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 172
    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$500(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    .line 173
    iget-object v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->variant:Lcom/android/okhttp/internal/framed/Variant;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->sink:Lcom/android/okhttp/okio/BufferedSink;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$600(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/okhttp/internal/framed/Variant;->newWriter(Lcom/android/okhttp/okio/BufferedSink;Z)Lcom/android/okhttp/internal/framed/FrameWriter;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    .line 175
    new-instance v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v2, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->variant:Lcom/android/okhttp/internal/framed/Variant;

    # getter for: Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->source:Lcom/android/okhttp/okio/BufferedSource;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->access$700(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Variant;->newReader(Lcom/android/okhttp/okio/BufferedSource;Z)Lcom/android/okhttp/internal/framed/FrameReader;

    move-result-object v2

    invoke-direct {v1, v0, v2, v9}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/FrameReader;Lcom/android/okhttp/internal/framed/FramedConnection$1;)V

    iput-object v1, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->readerRunnable:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    .line 176
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 177
    return-void

    .line 169
    :cond_fb
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;Lcom/android/okhttp/internal/framed/FramedConnection$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
    .param p2, "x1"    # Lcom/android/okhttp/internal/framed/FramedConnection$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)V

    return-void
.end method

.method static synthetic blacklist access$1100(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 57
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$1200(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .param p2, "x2"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->close(Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic blacklist access$1300(Lcom/android/okhttp/internal/framed/FramedConnection;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->pushedStream(I)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1400(Lcom/android/okhttp/internal/framed/FramedConnection;ILcom/android/okhttp/okio/BufferedSource;IZ)V
    .registers 5
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/framed/FramedConnection;->pushDataLater(ILcom/android/okhttp/okio/BufferedSource;IZ)V

    return-void
.end method

.method static synthetic blacklist access$1500(Lcom/android/okhttp/internal/framed/FramedConnection;ILjava/util/List;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic blacklist access$1600(Lcom/android/okhttp/internal/framed/FramedConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 57
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    return v0
.end method

.method static synthetic blacklist access$1602(Lcom/android/okhttp/internal/framed/FramedConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    return p1
.end method

.method static synthetic blacklist access$1700(Lcom/android/okhttp/internal/framed/FramedConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 57
    iget v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I

    return v0
.end method

.method static synthetic blacklist access$1702(Lcom/android/okhttp/internal/framed/FramedConnection;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I

    return p1
.end method

.method static synthetic blacklist access$1800(Lcom/android/okhttp/internal/framed/FramedConnection;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 57
    iget v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    return v0
.end method

.method static synthetic blacklist access$1900(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 57
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$2000(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/FramedConnection$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 57
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    return-object v0
.end method

.method static synthetic blacklist access$2100()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 57
    sget-object v0, Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic blacklist access$2200(Lcom/android/okhttp/internal/framed/FramedConnection;ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->pushResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic blacklist access$2300(Lcom/android/okhttp/internal/framed/FramedConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 57
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return v0
.end method

.method static synthetic blacklist access$2302(Lcom/android/okhttp/internal/framed/FramedConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return p1
.end method

.method static synthetic blacklist access$2400(Lcom/android/okhttp/internal/framed/FramedConnection;I)Lcom/android/okhttp/internal/framed/Ping;
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->removePing(I)Lcom/android/okhttp/internal/framed/Ping;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$2500(Lcom/android/okhttp/internal/framed/FramedConnection;ZIILcom/android/okhttp/internal/framed/Ping;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/okhttp/internal/framed/Ping;

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/framed/FramedConnection;->writePingLater(ZIILcom/android/okhttp/internal/framed/Ping;)V

    return-void
.end method

.method static synthetic blacklist access$2600(Lcom/android/okhttp/internal/framed/FramedConnection;ILjava/util/List;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method static synthetic blacklist access$2700(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/PushObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 57
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

    return-object v0
.end method

.method static synthetic blacklist access$2800(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 57
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic blacklist access$900(Lcom/android/okhttp/internal/framed/FramedConnection;ZIILcom/android/okhttp/internal/framed/Ping;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/okhttp/internal/framed/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/framed/FramedConnection;->writePing(ZIILcom/android/okhttp/internal/framed/Ping;)V

    return-void
.end method

.method private blacklist close(Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 11
    .param p1, "connectionCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .param p2, "streamCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    nop

    .line 457
    const/4 v0, 0x0

    .line 459
    .local v0, "thrown":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 462
    goto :goto_8

    .line 460
    :catch_6
    move-exception v1

    .line 461
    .local v1, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 464
    .end local v1    # "e":Ljava/io/IOException;
    :goto_8
    const/4 v1, 0x0

    .line 465
    .local v1, "streamsToClose":[Lcom/android/okhttp/internal/framed/FramedStream;
    const/4 v2, 0x0

    .line 466
    .local v2, "pingsToCancel":[Lcom/android/okhttp/internal/framed/Ping;
    monitor-enter p0

    .line 467
    :try_start_b
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_31

    .line 468
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/okhttp/internal/framed/FramedStream;

    move-object v1, v3

    .line 469
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 470
    invoke-direct {p0, v4}, Lcom/android/okhttp/internal/framed/FramedConnection;->setIdle(Z)V

    .line 472
    :cond_31
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v3, :cond_4b

    .line 473
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v5, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/okhttp/internal/framed/Ping;

    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/okhttp/internal/framed/Ping;

    move-object v2, v3

    .line 474
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    .line 476
    :cond_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_b .. :try_end_4c} :catchall_82

    .line 478
    if-eqz v1, :cond_5f

    .line 479
    array-length v3, v1

    move v5, v4

    :goto_50
    if-ge v5, v3, :cond_5f

    aget-object v6, v1, v5

    .line 481
    .local v6, "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :try_start_54
    invoke-virtual {v6, p2}, Lcom/android/okhttp/internal/framed/FramedStream;->close(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    .line 484
    goto :goto_5c

    .line 482
    :catch_58
    move-exception v7

    .line 483
    .local v7, "e":Ljava/io/IOException;
    if-eqz v0, :cond_5c

    move-object v0, v7

    .line 479
    .end local v6    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5c
    :goto_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    .line 488
    :cond_5f
    if-eqz v2, :cond_6c

    .line 489
    array-length v3, v2

    :goto_62
    if-ge v4, v3, :cond_6c

    aget-object v5, v2, v4

    .line 490
    .local v5, "ping":Lcom/android/okhttp/internal/framed/Ping;
    invoke-virtual {v5}, Lcom/android/okhttp/internal/framed/Ping;->cancel()V

    .line 489
    .end local v5    # "ping":Lcom/android/okhttp/internal/framed/Ping;
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 496
    :cond_6c
    :try_start_6c
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v3}, Lcom/android/okhttp/internal/framed/FrameWriter;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_71} :catch_72

    .line 499
    goto :goto_76

    .line 497
    :catch_72
    move-exception v3

    .line 498
    .local v3, "e":Ljava/io/IOException;
    if-nez v0, :cond_76

    move-object v0, v3

    .line 503
    .end local v3    # "e":Ljava/io/IOException;
    :cond_76
    :goto_76
    :try_start_76
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7b} :catch_7c

    .line 506
    goto :goto_7e

    .line 504
    :catch_7c
    move-exception v3

    .line 505
    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v3

    .line 508
    .end local v3    # "e":Ljava/io/IOException;
    :goto_7e
    if-nez v0, :cond_81

    .line 509
    return-void

    .line 508
    :cond_81
    throw v0

    .line 476
    :catchall_82
    move-exception v3

    :try_start_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v3
.end method

.method private blacklist newStream(ILjava/util/List;ZZ)Lcom/android/okhttp/internal/framed/FramedStream;
    .registers 21
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .param p4, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;ZZ)",
            "Lcom/android/okhttp/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    move-object/from16 v7, p0

    move/from16 v14, p1

    xor-int/lit8 v4, p3, 0x1

    .line 257
    .local v4, "outFinished":Z
    xor-int/lit8 v5, p4, 0x1

    .line 261
    .local v5, "inFinished":Z
    iget-object v15, v7, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    monitor-enter v15

    .line 262
    :try_start_b
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_78

    .line 263
    :try_start_c
    iget-boolean v0, v7, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-nez v0, :cond_67

    .line 266
    iget v0, v7, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    move v13, v0

    .line 267
    .local v13, "streamId":I
    add-int/lit8 v0, v0, 0x2

    iput v0, v7, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 268
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedStream;

    move-object v1, v0

    move v2, v13

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/okhttp/internal/framed/FramedStream;-><init>(ILcom/android/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V

    .line 269
    .local v0, "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 270
    iget-object v1, v7, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const/4 v1, 0x0

    invoke-direct {v7, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->setIdle(Z)V

    .line 273
    :cond_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_71

    .line 274
    if-nez v14, :cond_48

    .line 275
    :try_start_38
    iget-object v8, v7, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    move v9, v4

    move v10, v5

    move v11, v13

    move/from16 v12, p1

    move v1, v13

    .end local v13    # "streamId":I
    .local v1, "streamId":I
    move-object/from16 v13, p2

    invoke-interface/range {v8 .. v13}, Lcom/android/okhttp/internal/framed/FrameWriter;->synStream(ZZIILjava/util/List;)V

    move-object/from16 v3, p2

    goto :goto_54

    .line 277
    .end local v1    # "streamId":I
    .restart local v13    # "streamId":I
    :cond_48
    move v1, v13

    .end local v13    # "streamId":I
    .restart local v1    # "streamId":I
    iget-boolean v2, v7, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    if-nez v2, :cond_5d

    .line 280
    iget-object v2, v7, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;
    :try_end_4f
    .catchall {:try_start_38 .. :try_end_4f} :catchall_78

    move-object/from16 v3, p2

    :try_start_51
    invoke-interface {v2, v14, v1, v3}, Lcom/android/okhttp/internal/framed/FrameWriter;->pushPromise(IILjava/util/List;)V

    .line 282
    :goto_54
    monitor-exit v15
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_7d

    .line 284
    if-nez p3, :cond_5c

    .line 285
    iget-object v2, v7, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v2}, Lcom/android/okhttp/internal/framed/FrameWriter;->flush()V

    .line 288
    :cond_5c
    return-object v0

    .line 278
    :cond_5d
    move-object/from16 v3, p2

    :try_start_5f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "outFinished":Z
    .end local v5    # "inFinished":Z
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .end local p1    # "associatedStreamId":I
    .end local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    .end local p3    # "out":Z
    .end local p4    # "in":Z
    throw v2
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_7d

    .line 264
    .end local v0    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    .end local v1    # "streamId":I
    .restart local v4    # "outFinished":Z
    .restart local v5    # "inFinished":Z
    .restart local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .restart local p1    # "associatedStreamId":I
    .restart local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    .restart local p3    # "out":Z
    .restart local p4    # "in":Z
    :cond_67
    move-object/from16 v3, p2

    :try_start_69
    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v4    # "outFinished":Z
    .end local v5    # "inFinished":Z
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .end local p1    # "associatedStreamId":I
    .end local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    .end local p3    # "out":Z
    .end local p4    # "in":Z
    throw v0

    .line 273
    .restart local v4    # "outFinished":Z
    .restart local v5    # "inFinished":Z
    .restart local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .restart local p1    # "associatedStreamId":I
    .restart local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    .restart local p3    # "out":Z
    .restart local p4    # "in":Z
    :catchall_71
    move-exception v0

    move-object/from16 v3, p2

    :goto_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_69 .. :try_end_75} :catchall_76

    .end local v4    # "outFinished":Z
    .end local v5    # "inFinished":Z
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .end local p1    # "associatedStreamId":I
    .end local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    .end local p3    # "out":Z
    .end local p4    # "in":Z
    :try_start_75
    throw v0

    .restart local v4    # "outFinished":Z
    .restart local v5    # "inFinished":Z
    .restart local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .restart local p1    # "associatedStreamId":I
    .restart local p2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    .restart local p3    # "out":Z
    .restart local p4    # "in":Z
    :catchall_76
    move-exception v0

    goto :goto_74

    .line 282
    :catchall_78
    move-exception v0

    move-object/from16 v3, p2

    :goto_7b
    monitor-exit v15
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_7d

    throw v0

    :catchall_7d
    move-exception v0

    goto :goto_7b
.end method

.method private blacklist pushDataLater(ILcom/android/okhttp/okio/BufferedSource;IZ)V
    .registers 16
    .param p1, "streamId"    # I
    .param p2, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 888
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 889
    .local v0, "buffer":Lcom/android/okhttp/okio/Buffer;
    int-to-long v1, p3

    invoke-interface {p2, v1, v2}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V

    .line 890
    int-to-long v1, p3

    invoke-interface {p2, v0, v1, v2}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    .line 891
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v1

    int-to-long v3, p3

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    .line 892
    iget-object v9, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/android/okhttp/internal/framed/FramedConnection$6;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v3, "OkHttp %s Push Data[%s]"

    move-object v1, v10

    move-object v2, p0

    move v5, p1

    move-object v6, v0

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/okhttp/internal/framed/FramedConnection$6;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/okio/Buffer;IZ)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 906
    return-void

    .line 891
    :cond_38
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist pushHeadersLater(ILjava/util/List;Z)V
    .registers 13
    .param p1, "streamId"    # I
    .param p3, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .line 866
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/android/okhttp/internal/framed/FramedConnection$5;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Headers[%s]"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/okhttp/internal/framed/FramedConnection$5;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 880
    return-void
.end method

.method private blacklist pushRequestLater(ILjava/util/List;)V
    .registers 11
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 841
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 842
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 843
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 844
    monitor-exit p0

    return-void

    .line 846
    :cond_14
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 847
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3e

    .line 848
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/android/okhttp/internal/framed/FramedConnection$4;

    const-string v3, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/okhttp/internal/framed/FramedConnection$4;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 862
    return-void

    .line 847
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method private blacklist pushResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 11
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 909
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/android/okhttp/internal/framed/FramedConnection$7;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/okhttp/internal/framed/FramedConnection$7;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 917
    return-void
.end method

.method private blacklist pushedStream(I)Z
    .registers 4
    .param p1, "streamId"    # I

    .line 834
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v0, v1, :cond_e

    if-eqz p1, :cond_e

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private declared-synchronized blacklist removePing(I)Lcom/android/okhttp/internal/framed/Ping;
    .registers 4
    .param p1, "id"    # I

    monitor-enter p0

    .line 418
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/framed/Ping;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    goto :goto_11

    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    :cond_10
    const/4 v0, 0x0

    :goto_11
    monitor-exit p0

    return-object v0

    .line 418
    .end local p1    # "id":I
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist setIdle(Z)V
    .registers 4
    .param p1, "value"    # Z

    monitor-enter p0

    .line 206
    if-eqz p1, :cond_a

    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_f

    .line 205
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .end local p1    # "value":Z
    :catchall_8
    move-exception p1

    goto :goto_13

    .line 206
    .restart local p1    # "value":Z
    :cond_a
    const-wide v0, 0x7fffffffffffffffL

    :goto_f
    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_8

    .line 207
    monitor-exit p0

    return-void

    .line 205
    .end local p1    # "value":Z
    :goto_13
    monitor-exit p0

    throw p1
.end method

.method private blacklist writePing(ZIILcom/android/okhttp/internal/framed/Ping;)V
    .registers 7
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/android/okhttp/internal/framed/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    monitor-enter v0

    .line 412
    if-eqz p4, :cond_8

    :try_start_5
    invoke-virtual {p4}, Lcom/android/okhttp/internal/framed/Ping;->send()V

    .line 413
    :cond_8
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/okhttp/internal/framed/FrameWriter;->ping(ZII)V

    .line 414
    monitor-exit v0

    .line 415
    return-void

    .line 414
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private blacklist writePingLater(ZIILcom/android/okhttp/internal/framed/Ping;)V
    .registers 15
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/android/okhttp/internal/framed/Ping;

    .line 398
    sget-object v0, Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/android/okhttp/internal/framed/FramedConnection$3;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 399
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s ping %08x%08x"

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/okhttp/internal/framed/FramedConnection$3;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/android/okhttp/internal/framed/Ping;)V

    .line 398
    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 407
    return-void
.end method


# virtual methods
.method blacklist addBytesToWriteWindow(J)V
    .registers 5
    .param p1, "delta"    # J

    .line 346
    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 347
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 348
    :cond_e
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->close(Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 453
    return-void
.end method

.method public blacklist flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lcom/android/okhttp/internal/framed/FrameWriter;->flush()V

    .line 423
    return-void
.end method

.method public declared-synchronized blacklist getIdleStartTimeNs()J
    .registers 3

    monitor-enter p0

    .line 223
    :try_start_1
    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    .line 223
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getProtocol()Lcom/android/okhttp/Protocol;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->protocol:Lcom/android/okhttp/Protocol;

    return-object v0
.end method

.method declared-synchronized blacklist getStream(I)Lcom/android/okhttp/internal/framed/FramedStream;
    .registers 4
    .param p1, "id"    # I

    monitor-enter p0

    .line 193
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/framed/FramedStream;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 193
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .end local p1    # "id":I
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist isIdle()Z
    .registers 5

    monitor-enter p0

    .line 211
    :try_start_1
    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    monitor-exit p0

    return v0

    .line 211
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist maxConcurrentStreams()I
    .registers 3

    monitor-enter p0

    .line 215
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/Settings;->getMaxConcurrentStreams(I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    .line 215
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist newStream(Ljava/util/List;ZZ)Lcom/android/okhttp/internal/framed/FramedStream;
    .registers 5
    .param p2, "out"    # Z
    .param p3, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;ZZ)",
            "Lcom/android/okhttp/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized blacklist openStreamCount()I
    .registers 2

    monitor-enter p0

    .line 189
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 189
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist ping()Lcom/android/okhttp/internal/framed/Ping;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    new-instance v0, Lcom/android/okhttp/internal/framed/Ping;

    invoke-direct {v0}, Lcom/android/okhttp/internal/framed/Ping;-><init>()V

    .line 383
    .local v0, "ping":Lcom/android/okhttp/internal/framed/Ping;
    monitor-enter p0

    .line 384
    :try_start_6
    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-nez v1, :cond_2e

    .line 387
    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextPingId:I

    move v2, v1

    .line 388
    .local v2, "pingId":I
    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextPingId:I

    .line 389
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-nez v1, :cond_1c

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    .line 390
    :cond_1c
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_36

    .line 392
    const/4 v1, 0x0

    const v3, 0x4f4b6f6b

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->writePing(ZIILcom/android/okhttp/internal/framed/Ping;)V

    .line 393
    return-object v0

    .line 385
    .end local v2    # "pingId":I
    :cond_2e
    :try_start_2e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "shutdown"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ping":Lcom/android/okhttp/internal/framed/Ping;
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    throw v1

    .line 391
    .restart local v0    # "ping":Lcom/android/okhttp/internal/framed/Ping;
    .restart local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    :catchall_36
    move-exception v1

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_36

    throw v1
.end method

.method public blacklist pushStream(ILjava/util/List;Z)Lcom/android/okhttp/internal/framed/FramedStream;
    .registers 6
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;Z)",
            "Lcom/android/okhttp/internal/framed/FramedStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    if-nez v0, :cond_18

    .line 237
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v0, v1, :cond_10

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object v0

    return-object v0

    .line 237
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol != HTTP_2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client cannot push requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized blacklist removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;
    .registers 4
    .param p1, "streamId"    # I

    monitor-enter p0

    .line 197
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/framed/FramedStream;

    .line 198
    .local v0, "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 199
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->setIdle(Z)V

    .line 201
    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 202
    monitor-exit p0

    return-object v0

    .line 196
    .end local v0    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    .end local p1    # "streamId":I
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist sendConnectionPreface()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lcom/android/okhttp/internal/framed/FrameWriter;->connectionPreface()V

    .line 517
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/framed/FrameWriter;->settings(Lcom/android/okhttp/internal/framed/Settings;)V

    .line 518
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    .line 519
    .local v0, "windowSize":I
    if-eq v0, v1, :cond_1f

    .line 520
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    const/4 v3, 0x0

    sub-int v1, v0, v1

    int-to-long v4, v1

    invoke-interface {v2, v3, v4, v5}, Lcom/android/okhttp/internal/framed/FrameWriter;->windowUpdate(IJ)V

    .line 522
    :cond_1f
    return-void
.end method

.method public blacklist setSettings(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 5
    .param p1, "settings"    # Lcom/android/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    monitor-enter v0

    .line 527
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_20

    .line 528
    :try_start_4
    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-nez v1, :cond_15

    .line 531
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-virtual {v1, p1}, Lcom/android/okhttp/internal/framed/Settings;->merge(Lcom/android/okhttp/internal/framed/Settings;)V

    .line 532
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v1, p1}, Lcom/android/okhttp/internal/framed/FrameWriter;->settings(Lcom/android/okhttp/internal/framed/Settings;)V

    .line 533
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_1d

    .line 534
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_20

    .line 535
    return-void

    .line 529
    :cond_15
    :try_start_15
    new-instance v1, Ljava/io/IOException;

    const-string v2, "shutdown"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .end local p1    # "settings":Lcom/android/okhttp/internal/framed/Settings;
    throw v1

    .line 533
    .restart local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .restart local p1    # "settings":Lcom/android/okhttp/internal/framed/Settings;
    :catchall_1d
    move-exception v1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_1d

    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .end local p1    # "settings":Lcom/android/okhttp/internal/framed/Settings;
    :try_start_1f
    throw v1

    .line 534
    .restart local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .restart local p1    # "settings":Lcom/android/okhttp/internal/framed/Settings;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw v1
.end method

.method public blacklist shutdown(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 6
    .param p1, "statusCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    monitor-enter v0

    .line 434
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1d

    .line 435
    :try_start_4
    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v1, :cond_b

    .line 436
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1a

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1d

    return-void

    .line 438
    :cond_b
    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    .line 439
    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I

    .line 440
    .local v1, "lastGoodStreamId":I
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 442
    :try_start_11
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    sget-object v3, Lcom/android/okhttp/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-interface {v2, v1, p1, v3}, Lcom/android/okhttp/internal/framed/FrameWriter;->goAway(ILcom/android/okhttp/internal/framed/ErrorCode;[B)V

    .line 443
    .end local v1    # "lastGoodStreamId":I
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    .line 444
    return-void

    .line 440
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .end local p1    # "statusCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    :try_start_1c
    throw v1

    .line 443
    .restart local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .restart local p1    # "statusCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public blacklist writeData(IZLcom/android/okhttp/okio/Buffer;J)V
    .registers 14
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_d

    .line 311
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p2, p1, p3, v3}, Lcom/android/okhttp/internal/framed/FrameWriter;->data(ZILcom/android/okhttp/okio/Buffer;I)V

    .line 312
    return-void

    .line 315
    :cond_d
    :goto_d
    cmp-long v2, p4, v0

    if-lez v2, :cond_64

    .line 317
    monitor-enter p0

    .line 319
    :goto_12
    :try_start_12
    iget-wide v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_30

    .line 322
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_12

    .line 323
    :cond_28
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .end local p1    # "streamId":I
    .end local p2    # "outFinished":Z
    .end local p3    # "buffer":Lcom/android/okhttp/okio/Buffer;
    .end local p4    # "byteCount":J
    throw v0
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_30} :catch_5b
    .catchall {:try_start_12 .. :try_end_30} :catchall_59

    .line 329
    .restart local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .restart local p1    # "streamId":I
    .restart local p2    # "outFinished":Z
    .restart local p3    # "buffer":Lcom/android/okhttp/okio/Buffer;
    .restart local p4    # "byteCount":J
    :cond_30
    nop

    .line 331
    :try_start_31
    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 332
    .local v2, "toWrite":I
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v4}, Lcom/android/okhttp/internal/framed/FrameWriter;->maxDataLength()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v2, v4

    .line 333
    iget-wide v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 334
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_59

    .line 336
    int-to-long v4, v2

    sub-long/2addr p4, v4

    .line 337
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    if-eqz p2, :cond_54

    cmp-long v5, p4, v0

    if-nez v5, :cond_54

    const/4 v5, 0x1

    goto :goto_55

    :cond_54
    move v5, v3

    :goto_55
    invoke-interface {v4, v5, p1, p3, v2}, Lcom/android/okhttp/internal/framed/FrameWriter;->data(ZILcom/android/okhttp/okio/Buffer;I)V

    .line 338
    .end local v2    # "toWrite":I
    goto :goto_d

    .line 334
    :catchall_59
    move-exception v0

    goto :goto_62

    .line 327
    :catch_5b
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5c
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    .end local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .end local p1    # "streamId":I
    .end local p2    # "outFinished":Z
    .end local p3    # "buffer":Lcom/android/okhttp/okio/Buffer;
    .end local p4    # "byteCount":J
    throw v1

    .line 334
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lcom/android/okhttp/internal/framed/FramedConnection;
    .restart local p1    # "streamId":I
    .restart local p2    # "outFinished":Z
    .restart local p3    # "buffer":Lcom/android/okhttp/okio/Buffer;
    .restart local p4    # "byteCount":J
    :goto_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_59

    throw v0

    .line 339
    :cond_64
    return-void
.end method

.method blacklist writeSynReply(IZLjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    .local p3, "alternating":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p2, p1, p3}, Lcom/android/okhttp/internal/framed/FrameWriter;->synReply(ZILjava/util/List;)V

    .line 294
    return-void
.end method

.method blacklist writeSynReset(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 4
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2}, Lcom/android/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 363
    return-void
.end method

.method blacklist writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 11
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    .line 351
    sget-object v0, Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/android/okhttp/internal/framed/FramedConnection$1;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s stream %d"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/okhttp/internal/framed/FramedConnection$1;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 359
    return-void
.end method

.method blacklist writeWindowUpdateLater(IJ)V
    .registers 13
    .param p1, "streamId"    # I
    .param p2, "unacknowledgedBytesRead"    # J

    .line 366
    sget-object v0, Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/android/okhttp/internal/framed/FramedConnection$2;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp Window Update %s stream %d"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/okhttp/internal/framed/FramedConnection$2;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method

.class public final Lcom/android/okhttp/internal/framed/FramedConnection;
.super Ljava/lang/Object;
.source "FramedConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/framed/FramedConnection$Builder;,
        Lcom/android/okhttp/internal/framed/FramedConnection$Listener;,
        Lcom/android/okhttp/internal/framed/FramedConnection$Reader;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field private final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

.field private final hostName:Ljava/lang/String;

.field private idleStartTimeNs:J

.field private lastGoodStreamId:I

.field private final listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

.field private nextPingId:I

.field private nextStreamId:I

.field okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

.field final peerSettings:Lcom/android/okhttp/internal/framed/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/okhttp/internal/framed/Ping;",
            ">;"
        }
    .end annotation
.end field

.field final protocol:Lcom/android/okhttp/Protocol;

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field private final pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

.field final readerRunnable:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

.field private receivedInitialPeerSettings:Z

.field private shutdown:Z

.field final socket:Ljava/net/Socket;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/okhttp/internal/framed/FramedStream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final variant:Lcom/android/okhttp/internal/framed/Variant;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Set;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/concurrent/ExecutorService;
    .registers 1

    sget-object v0, Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/internal/framed/FramedConnection;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .prologue
    iget v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/FramedConnection$Listener;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/okhttp/internal/framed/FramedConnection;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .prologue
    iget v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/PushObserver;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/okhttp/internal/framed/FramedConnection;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .prologue
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/okhttp/internal/framed/FramedConnection;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .prologue
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/okhttp/internal/framed/FramedConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/framed/FramedConnection;I)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/okhttp/internal/framed/FramedConnection;Z)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/okhttp/internal/framed/FramedConnection;Z)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/internal/framed/FramedConnection;I)Z
    .registers 3
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "streamId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->pushedStream(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/okhttp/internal/framed/FramedConnection;I)Lcom/android/okhttp/internal/framed/Ping;
    .registers 3
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->removePing(I)Lcom/android/okhttp/internal/framed/Ping;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 3
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "connectionCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .param p2, "streamCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->close(Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/okhttp/internal/framed/FramedConnection;ILcom/android/okhttp/okio/BufferedSource;IZ)V
    .registers 5
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "streamId"    # I
    .param p2, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "inFinished"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/framed/FramedConnection;->pushDataLater(ILcom/android/okhttp/okio/BufferedSource;IZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/okhttp/internal/framed/FramedConnection;ILjava/util/List;Z)V
    .registers 4
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "streamId"    # I
    .param p2, "requestHeaders"    # Ljava/util/List;
    .param p3, "inFinished"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/okhttp/internal/framed/FramedConnection;ILjava/util/List;)V
    .registers 3
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "streamId"    # I
    .param p2, "requestHeaders"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/okhttp/internal/framed/FramedConnection;ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 3
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/framed/FramedConnection;->pushResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/okhttp/internal/framed/FramedConnection;ZIILcom/android/okhttp/internal/framed/Ping;)V
    .registers 5
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/android/okhttp/internal/framed/Ping;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/framed/FramedConnection;->writePingLater(ZIILcom/android/okhttp/internal/framed/Ping;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/okhttp/internal/framed/FramedConnection;ZIILcom/android/okhttp/internal/framed/Ping;)V
    .registers 5
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection;
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/android/okhttp/internal/framed/Ping;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/okhttp/internal/framed/FramedConnection;->writePing(ZIILcom/android/okhttp/internal/framed/Ping;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 9

    .prologue
    const-class v0, Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/okhttp/internal/framed/FramedConnection;->-assertionsDisabled:Z

    .line 69
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 70
    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 71
    const-string/jumbo v0, "OkHttp FramedConnection"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    .line 69
    const/4 v2, 0x0

    .line 70
    const v3, 0x7fffffff

    .line 69
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    .line 55
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)V
    .registers 14
    .param p1, "builder"    # Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    .line 89
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J

    .line 105
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    .line 115
    new-instance v0, Lcom/android/okhttp/internal/framed/Settings;

    invoke-direct {v0}, Lcom/android/okhttp/internal/framed/Settings;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    .line 121
    new-instance v0, Lcom/android/okhttp/internal/framed/Settings;

    invoke-direct {v0}, Lcom/android/okhttp/internal/framed/Settings;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    .line 123
    iput-boolean v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    .line 833
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    .line 132
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->-get3(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->protocol:Lcom/android/okhttp/Protocol;

    .line 133
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->-get4(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/internal/framed/PushObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

    .line 134
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->-get0(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    .line 135
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->-get2(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    .line 137
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->-get0(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_fa

    move v0, v3

    :goto_4f
    iput v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 138
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->-get0(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v4, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v0, v4, :cond_63

    .line 139
    iget v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 142
    :cond_63
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->-get0(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_6a

    move v1, v3

    :cond_6a
    iput v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextPingId:I

    .line 148
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->-get0(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 149
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v2, v1}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    .line 152
    :cond_79
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->-get1(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v0, v1, :cond_fd

    .line 155
    new-instance v0, Lcom/android/okhttp/internal/framed/Http2;

    invoke-direct {v0}, Lcom/android/okhttp/internal/framed/Http2;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->variant:Lcom/android/okhttp/internal/framed/Variant;

    .line 157
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 158
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 159
    const-string/jumbo v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    .line 157
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 161
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    const v1, 0xffff

    invoke-virtual {v0, v10, v2, v1}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    .line 162
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/4 v1, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    .line 169
    :goto_bd
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 170
    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->-get6(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    .line 171
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->variant:Lcom/android/okhttp/internal/framed/Variant;

    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->-get5(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/internal/framed/Variant;->newWriter(Lcom/android/okhttp/okio/BufferedSink;Z)Lcom/android/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    .line 173
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->variant:Lcom/android/okhttp/internal/framed/Variant;

    invoke-static {p1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->-get7(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/internal/framed/Variant;->newReader(Lcom/android/okhttp/okio/BufferedSource;Z)Lcom/android/okhttp/internal/framed/FrameReader;

    move-result-object v1

    invoke-direct {v0, p0, v1, v11}, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Lcom/android/okhttp/internal/framed/FrameReader;Lcom/android/okhttp/internal/framed/FramedConnection$Reader;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->readerRunnable:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    .line 174
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->readerRunnable:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 175
    return-void

    :cond_fa
    move v0, v1

    .line 137
    goto/16 :goto_4f

    .line 163
    :cond_fd
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    if-ne v0, v1, :cond_10d

    .line 164
    new-instance v0, Lcom/android/okhttp/internal/framed/Spdy3;

    invoke-direct {v0}, Lcom/android/okhttp/internal/framed/Spdy3;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->variant:Lcom/android/okhttp/internal/framed/Variant;

    .line 165
    iput-object v11, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_bd

    .line 167
    :cond_10d
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->protocol:Lcom/android/okhttp/Protocol;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;Lcom/android/okhttp/internal/framed/FramedConnection;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
    .param p2, "-this1"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)V

    return-void
.end method

.method private close(Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 13
    .param p1, "connectionCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .param p2, "streamCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 454
    sget-boolean v7, Lcom/android/okhttp/internal/framed/FramedConnection;->-assertionsDisabled:Z

    if-nez v7, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 455
    :cond_11
    const/4 v6, 0x0

    .line 457
    .local v6, "thrown":Ljava/io/IOException;
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_6b

    .line 462
    .end local v6    # "thrown":Ljava/io/IOException;
    :goto_15
    const/4 v5, 0x0

    .line 463
    .local v5, "streamsToClose":[Lcom/android/okhttp/internal/framed/FramedStream;
    const/4 v3, 0x0

    .line 464
    .local v3, "pingsToCancel":[Lcom/android/okhttp/internal/framed/Ping;
    monitor-enter p0

    .line 465
    :try_start_18
    iget-object v7, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3f

    .line 466
    iget-object v7, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v9, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lcom/android/okhttp/internal/framed/FramedStream;

    move-object v5, v0

    .line 467
    .local v5, "streamsToClose":[Lcom/android/okhttp/internal/framed/FramedStream;
    iget-object v7, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 468
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/okhttp/internal/framed/FramedConnection;->setIdle(Z)V

    .line 470
    .end local v5    # "streamsToClose":[Lcom/android/okhttp/internal/framed/FramedStream;
    :cond_3f
    iget-object v7, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v7, :cond_5c

    .line 471
    iget-object v7, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v9, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Lcom/android/okhttp/internal/framed/Ping;

    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lcom/android/okhttp/internal/framed/Ping;

    move-object v3, v0

    .line 472
    .local v3, "pingsToCancel":[Lcom/android/okhttp/internal/framed/Ping;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;
    :try_end_5c
    .catchall {:try_start_18 .. :try_end_5c} :catchall_6e

    .end local v3    # "pingsToCancel":[Lcom/android/okhttp/internal/framed/Ping;
    :cond_5c
    monitor-exit p0

    .line 476
    if-eqz v5, :cond_76

    .line 477
    array-length v9, v5

    move v7, v8

    :goto_61
    if-ge v7, v9, :cond_76

    aget-object v4, v5, v7

    .line 479
    .local v4, "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :try_start_65
    invoke-virtual {v4, p2}, Lcom/android/okhttp/internal/framed/FramedStream;->close(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_71

    .line 477
    :cond_68
    :goto_68
    add-int/lit8 v7, v7, 0x1

    goto :goto_61

    .line 458
    .end local v4    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    .restart local v6    # "thrown":Ljava/io/IOException;
    :catch_6b
    move-exception v1

    .line 459
    .local v1, "e":Ljava/io/IOException;
    move-object v6, v1

    .local v6, "thrown":Ljava/io/IOException;
    goto :goto_15

    .line 464
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "thrown":Ljava/io/IOException;
    :catchall_6e
    move-exception v7

    monitor-exit p0

    throw v7

    .line 480
    .restart local v4    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :catch_71
    move-exception v1

    .line 481
    .restart local v1    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_68

    move-object v6, v1

    .restart local v6    # "thrown":Ljava/io/IOException;
    goto :goto_68

    .line 486
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    .end local v6    # "thrown":Ljava/io/IOException;
    :cond_76
    if-eqz v3, :cond_84

    .line 487
    array-length v9, v3

    move v7, v8

    :goto_7a
    if-ge v7, v9, :cond_84

    aget-object v2, v3, v7

    .line 488
    .local v2, "ping":Lcom/android/okhttp/internal/framed/Ping;
    invoke-virtual {v2}, Lcom/android/okhttp/internal/framed/Ping;->cancel()V

    .line 487
    add-int/lit8 v7, v7, 0x1

    goto :goto_7a

    .line 494
    .end local v2    # "ping":Lcom/android/okhttp/internal/framed/Ping;
    :cond_84
    :try_start_84
    iget-object v7, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v7}, Lcom/android/okhttp/internal/framed/FrameWriter;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_89} :catch_91

    .line 501
    :cond_89
    :goto_89
    :try_start_89
    iget-object v7, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8e} :catch_96

    .line 506
    :goto_8e
    if-eqz v6, :cond_99

    throw v6

    .line 495
    :catch_91
    move-exception v1

    .line 496
    .restart local v1    # "e":Ljava/io/IOException;
    if-nez v6, :cond_89

    move-object v6, v1

    .restart local v6    # "thrown":Ljava/io/IOException;
    goto :goto_89

    .line 502
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "thrown":Ljava/io/IOException;
    :catch_96
    move-exception v1

    .line 503
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v6, v1

    .restart local v6    # "thrown":Ljava/io/IOException;
    goto :goto_8e

    .line 507
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "thrown":Ljava/io/IOException;
    :cond_99
    return-void
.end method

.method private newStream(ILjava/util/List;ZZ)Lcom/android/okhttp/internal/framed/FramedStream;
    .registers 14
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .param p4, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 254
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    xor-int/lit8 v3, p3, 0x1

    .line 255
    .local v3, "outFinished":Z
    xor-int/lit8 v4, p4, 0x1

    .line 259
    .local v4, "inFinished":Z
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    monitor-enter v8

    .line 260
    :try_start_7
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_18

    .line 261
    :try_start_8
    iget-boolean v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v2, :cond_1b

    .line 262
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v5, "shutdown"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_15

    .line 260
    :catchall_15
    move-exception v2

    :try_start_16
    monitor-exit p0

    throw v2
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_18

    .line 259
    :catchall_18
    move-exception v2

    monitor-exit v8

    throw v2

    .line 264
    :cond_1b
    :try_start_1b
    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 265
    .local v1, "streamId":I
    iget v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextStreamId:I

    .line 266
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedStream;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/framed/FramedStream;-><init>(ILcom/android/okhttp/internal/framed/FramedConnection;ZZLjava/util/List;)V

    .line 267
    .local v0, "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 268
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->setIdle(Z)V
    :try_end_3d
    .catchall {:try_start_1b .. :try_end_3d} :catchall_15

    :cond_3d
    :try_start_3d
    monitor-exit p0

    .line 272
    if-nez p1, :cond_51

    .line 273
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    move v5, v1

    move v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/okhttp/internal/framed/FrameWriter;->synStream(ZZIILjava/util/List;)V
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_18

    :goto_48
    monitor-exit v8

    .line 282
    if-nez p3, :cond_50

    .line 283
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v2}, Lcom/android/okhttp/internal/framed/FrameWriter;->flush()V

    .line 286
    :cond_50
    return-object v0

    .line 275
    :cond_51
    :try_start_51
    iget-boolean v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    if-eqz v2, :cond_5e

    .line 276
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_5e
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v2, p1, v1, p2}, Lcom/android/okhttp/internal/framed/FrameWriter;->pushPromise(IILjava/util/List;)V
    :try_end_63
    .catchall {:try_start_51 .. :try_end_63} :catchall_18

    goto :goto_48
.end method

.method private pushDataLater(ILcom/android/okhttp/okio/BufferedSource;IZ)V
    .registers 14
    .param p1, "streamId"    # I
    .param p2, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p3, "byteCount"    # I
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 883
    new-instance v5, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v5}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 884
    .local v5, "buffer":Lcom/android/okhttp/okio/Buffer;
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V

    .line 885
    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    .line 886
    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_38

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_38
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/okhttp/internal/framed/FramedConnection$6;

    const-string/jumbo v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/okhttp/internal/framed/FramedConnection$6;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/okio/Buffer;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 901
    return-void
.end method

.method private pushHeadersLater(ILjava/util/List;Z)V
    .registers 12
    .param p1, "streamId"    # I
    .param p3, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v7, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/okhttp/internal/framed/FramedConnection$5;

    const-string/jumbo v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/okhttp/internal/framed/FramedConnection$5;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 875
    return-void
.end method

.method private pushRequestLater(ILjava/util/List;)V
    .registers 10
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 836
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 837
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 838
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_3e

    monitor-exit p0

    .line 839
    return-void

    .line 841
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_3e

    monitor-exit p0

    .line 843
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/okhttp/internal/framed/FramedConnection$4;

    const-string/jumbo v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/framed/FramedConnection$4;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 857
    return-void

    .line 836
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private pushResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 10
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    .prologue
    .line 904
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/okhttp/internal/framed/FramedConnection$7;

    const-string/jumbo v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/framed/FramedConnection$7;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 912
    return-void
.end method

.method private pushedStream(I)Z
    .registers 5
    .param p1, "streamId"    # I

    .prologue
    const/4 v0, 0x0

    .line 829
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v2, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v1, v2, :cond_e

    if-eqz p1, :cond_e

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private declared-synchronized removePing(I)Lcom/android/okhttp/internal/framed/Ping;
    .registers 4
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 416
    :try_start_2
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/framed/Ping;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setIdle(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    monitor-enter p0

    .line 204
    if-eqz p1, :cond_b

    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_7
    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    monitor-exit p0

    .line 205
    return-void

    .line 204
    :cond_b
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_7

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writePing(ZIILcom/android/okhttp/internal/framed/Ping;)V
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

    .prologue
    .line 408
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    monitor-enter v1

    .line 410
    if-eqz p4, :cond_8

    :try_start_5
    invoke-virtual {p4}, Lcom/android/okhttp/internal/framed/Ping;->send()V

    .line 411
    :cond_8
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/internal/framed/FrameWriter;->ping(ZII)V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_f

    monitor-exit v1

    .line 413
    return-void

    .line 408
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private writePingLater(ZIILcom/android/okhttp/internal/framed/Ping;)V
    .registers 14
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/android/okhttp/internal/framed/Ping;

    .prologue
    .line 396
    sget-object v8, Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/okhttp/internal/framed/FramedConnection$3;

    const-string/jumbo v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    .line 397
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    .line 396
    invoke-direct/range {v0 .. v7}, Lcom/android/okhttp/internal/framed/FramedConnection$3;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/android/okhttp/internal/framed/Ping;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 405
    return-void
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .registers 6
    .param p1, "delta"    # J

    .prologue
    .line 344
    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    .line 345
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedConnection;->notifyAll()V

    .line 346
    :cond_e
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    sget-object v0, Lcom/android/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/android/okhttp/internal/framed/ErrorCode;

    sget-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->close(Lcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 451
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lcom/android/okhttp/internal/framed/FrameWriter;->flush()V

    .line 421
    return-void
.end method

.method public declared-synchronized getIdleStartTimeNs()J
    .registers 3

    .prologue
    monitor-enter p0

    .line 221
    :try_start_1
    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProtocol()Lcom/android/okhttp/Protocol;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->protocol:Lcom/android/okhttp/Protocol;

    return-object v0
.end method

.method declared-synchronized getStream(I)Lcom/android/okhttp/internal/framed/FramedStream;
    .registers 4
    .param p1, "id"    # I

    .prologue
    monitor-enter p0

    .line 191
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

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIdle()Z
    .registers 5

    .prologue
    monitor-enter p0

    .line 209
    :try_start_1
    iget-wide v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->idleStartTimeNs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .registers 3

    .prologue
    monitor-enter p0

    .line 213
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/Settings;->getMaxConcurrentStreams(I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;ZZ)Lcom/android/okhttp/internal/framed/FramedStream;
    .registers 5
    .param p2, "out"    # Z
    .param p3, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 249
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/okhttp/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized openStreamCount()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 187
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ping()Lcom/android/okhttp/internal/framed/Ping;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Lcom/android/okhttp/internal/framed/Ping;

    invoke-direct {v0}, Lcom/android/okhttp/internal/framed/Ping;-><init>()V

    .line 381
    .local v0, "ping":Lcom/android/okhttp/internal/framed/Ping;
    monitor-enter p0

    .line 382
    :try_start_6
    iget-boolean v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v2, :cond_16

    .line 383
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "shutdown"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_13

    .line 381
    :catchall_13
    move-exception v2

    monitor-exit p0

    throw v2

    .line 385
    :cond_16
    :try_start_16
    iget v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextPingId:I

    .line 386
    .local v1, "pingId":I
    iget v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextPingId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->nextPingId:I

    .line 387
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-nez v2, :cond_29

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    .line 388
    :cond_29
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_13

    monitor-exit p0

    .line 390
    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->writePing(ZIILcom/android/okhttp/internal/framed/Ping;)V

    .line 391
    return-object v0
.end method

.method public pushStream(ILjava/util/List;Z)Lcom/android/okhttp/internal/framed/FramedStream;
    .registers 6
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 234
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->client:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Client cannot push requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_d
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-eq v0, v1, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "protocol != HTTP_2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1c
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized removeStream(I)Lcom/android/okhttp/internal/framed/FramedStream;
    .registers 5
    .param p1, "streamId"    # I

    .prologue
    monitor-enter p0

    .line 195
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/framed/FramedStream;

    .line 196
    .local v0, "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 197
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->setIdle(Z)V

    .line 199
    :cond_1b
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedConnection;->notifyAll()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    .line 200
    return-object v0

    .end local v0    # "stream":Lcom/android/okhttp/internal/framed/FramedStream;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendConnectionPreface()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v3, 0x10000

    .line 514
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v1}, Lcom/android/okhttp/internal/framed/FrameWriter;->connectionPreface()V

    .line 515
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/framed/FrameWriter;->settings(Lcom/android/okhttp/internal/framed/Settings;)V

    .line 516
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-virtual {v1, v3}, Lcom/android/okhttp/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    .line 517
    .local v0, "windowSize":I
    if-eq v0, v3, :cond_1f

    .line 518
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    sub-int v2, v0, v3

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Lcom/android/okhttp/internal/framed/FrameWriter;->windowUpdate(IJ)V

    .line 520
    :cond_1f
    return-void
.end method

.method public setSettings(Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 5
    .param p1, "settings"    # Lcom/android/okhttp/internal/framed/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    monitor-enter v1

    .line 525
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_14

    .line 526
    :try_start_4
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v0, :cond_17

    .line 527
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "shutdown"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_11

    .line 525
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0

    throw v0
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_14

    .line 524
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0

    .line 529
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->okHttpSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/framed/Settings;->merge(Lcom/android/okhttp/internal/framed/Settings;)V

    .line 530
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1}, Lcom/android/okhttp/internal/framed/FrameWriter;->settings(Lcom/android/okhttp/internal/framed/Settings;)V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_11

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_14

    monitor-exit v1

    .line 533
    return-void
.end method

.method public shutdown(Lcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 6
    .param p1, "statusCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    monitor-enter v2

    .line 432
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1d

    .line 433
    :try_start_4
    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_1a

    if-eqz v1, :cond_b

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_1d

    monitor-exit v2

    .line 434
    return-void

    .line 436
    :cond_b
    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->shutdown:Z

    .line 437
    iget v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->lastGoodStreamId:I
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_1a

    .local v0, "lastGoodStreamId":I
    :try_start_10
    monitor-exit p0

    .line 440
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    sget-object v3, Lcom/android/okhttp/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-interface {v1, v0, p1, v3}, Lcom/android/okhttp/internal/framed/FrameWriter;->goAway(ILcom/android/okhttp/internal/framed/ErrorCode;[B)V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1d

    monitor-exit v2

    .line 442
    return-void

    .line 432
    .end local v0    # "lastGoodStreamId":I
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit p0

    throw v1
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_1d

    .line 430
    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public writeData(IZLcom/android/okhttp/okio/Buffer;J)V
    .registers 16
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "buffer"    # Lcom/android/okhttp/okio/Buffer;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    .line 308
    cmp-long v2, p4, v8

    if-nez v2, :cond_33

    .line 309
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v2, p2, p1, p3, v3}, Lcom/android/okhttp/internal/framed/FrameWriter;->data(ZILcom/android/okhttp/okio/Buffer;I)V

    .line 310
    return-void

    .line 329
    :cond_d
    :try_start_d
    iget-wide v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 330
    .local v1, "toWrite":I
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v2}, Lcom/android/okhttp/internal/framed/FrameWriter;->maxDataLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 331
    iget-wide v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_5a

    monitor-exit p0

    .line 334
    int-to-long v4, v1

    sub-long/2addr p4, v4

    .line 335
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    if-eqz p2, :cond_61

    cmp-long v2, p4, v8

    if-nez v2, :cond_61

    const/4 v2, 0x1

    :goto_30
    invoke-interface {v4, v2, p1, p3, v1}, Lcom/android/okhttp/internal/framed/FrameWriter;->data(ZILcom/android/okhttp/okio/Buffer;I)V

    .line 313
    .end local v1    # "toWrite":I
    :cond_33
    cmp-long v2, p4, v8

    if-lez v2, :cond_63

    .line 315
    monitor-enter p0

    .line 317
    :goto_38
    :try_start_38
    iget-wide v4, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v8

    if-gtz v2, :cond_d

    .line 320
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 321
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "stream closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_53} :catch_53
    .catchall {:try_start_38 .. :try_end_53} :catchall_5a

    .line 325
    :catch_53
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_54
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_5a

    .line 315
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_5a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 323
    :cond_5d
    :try_start_5d
    invoke-virtual {p0}, Lcom/android/okhttp/internal/framed/FramedConnection;->wait()V
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_60} :catch_53
    .catchall {:try_start_5d .. :try_end_60} :catchall_5a

    goto :goto_38

    .restart local v1    # "toWrite":I
    :cond_61
    move v2, v3

    .line 335
    goto :goto_30

    .line 337
    .end local v1    # "toWrite":I
    :cond_63
    return-void
.end method

.method writeSynReply(IZLjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    .local p3, "alternating":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p2, p1, p3}, Lcom/android/okhttp/internal/framed/FrameWriter;->synReply(ZILjava/util/List;)V

    .line 292
    return-void
.end method

.method writeSynReset(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 4
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2}, Lcom/android/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 361
    return-void
.end method

.method writeSynResetLater(ILcom/android/okhttp/internal/framed/ErrorCode;)V
    .registers 10
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/android/okhttp/internal/framed/ErrorCode;

    .prologue
    .line 349
    sget-object v6, Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/okhttp/internal/framed/FramedConnection$1;

    const-string/jumbo v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/framed/FramedConnection$1;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/android/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 357
    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .registers 12
    .param p1, "streamId"    # I
    .param p2, "unacknowledgedBytesRead"    # J

    .prologue
    .line 364
    sget-object v0, Lcom/android/okhttp/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/okhttp/internal/framed/FramedConnection$2;

    const-string/jumbo v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/FramedConnection;->hostName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/okhttp/internal/framed/FramedConnection$2;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

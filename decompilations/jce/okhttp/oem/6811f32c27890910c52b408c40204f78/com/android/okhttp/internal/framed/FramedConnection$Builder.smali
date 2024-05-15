.class public Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private client:Z

.field private hostName:Ljava/lang/String;

.field private listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

.field private protocol:Lcom/android/okhttp/Protocol;

.field private pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

.field private sink:Lcom/android/okhttp/okio/BufferedSink;

.field private socket:Ljava/net/Socket;

.field private source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    .prologue
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->client:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/internal/framed/FramedConnection$Listener;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/Protocol;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->protocol:Lcom/android/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/internal/framed/PushObserver;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/okio/BufferedSink;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->sink:Lcom/android/okhttp/okio/BufferedSink;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;)Lcom/android/okhttp/okio/BufferedSource;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->source:Lcom/android/okhttp/okio/BufferedSource;

    return-object v0
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "client"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    sget-object v0, Lcom/android/okhttp/internal/framed/FramedConnection$Listener;->REFUSE_INCOMING_STREAMS:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    .line 541
    sget-object v0, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->protocol:Lcom/android/okhttp/Protocol;

    .line 542
    sget-object v0, Lcom/android/okhttp/internal/framed/PushObserver;->CANCEL:Lcom/android/okhttp/internal/framed/PushObserver;

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

    .line 550
    iput-boolean p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->client:Z

    .line 551
    return-void
.end method


# virtual methods
.method public build()Lcom/android/okhttp/internal/framed/FramedConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection;-><init>(Lcom/android/okhttp/internal/framed/FramedConnection$Builder;Lcom/android/okhttp/internal/framed/FramedConnection;)V

    return-object v0
.end method

.method public listener(Lcom/android/okhttp/internal/framed/FramedConnection$Listener;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
    .registers 2
    .param p1, "listener"    # Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->listener:Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    .line 569
    return-object p0
.end method

.method public protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
    .registers 2
    .param p1, "protocol"    # Lcom/android/okhttp/Protocol;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->protocol:Lcom/android/okhttp/Protocol;

    .line 574
    return-object p0
.end method

.method public pushObserver(Lcom/android/okhttp/internal/framed/PushObserver;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
    .registers 2
    .param p1, "pushObserver"    # Lcom/android/okhttp/internal/framed/PushObserver;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/android/okhttp/internal/framed/PushObserver;

    .line 579
    return-object p0
.end method

.method public socket(Ljava/net/Socket;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
    .registers 5
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->source(Ljava/net/Socket;)Lcom/android/okhttp/okio/Source;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v1

    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/net/Socket;)Lcom/android/okhttp/okio/Sink;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    .line 554
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;
    .registers 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p4, "sink"    # Lcom/android/okhttp/okio/BufferedSink;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;

    .line 561
    iput-object p2, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->hostName:Ljava/lang/String;

    .line 562
    iput-object p3, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 563
    iput-object p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 564
    return-object p0
.end method

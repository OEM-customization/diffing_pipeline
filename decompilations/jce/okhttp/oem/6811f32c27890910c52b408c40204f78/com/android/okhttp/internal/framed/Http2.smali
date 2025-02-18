.class public final Lcom/android/okhttp/internal/framed/Http2;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/android/okhttp/internal/framed/Variant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;,
        Lcom/android/okhttp/internal/framed/Http2$FrameLogger;,
        Lcom/android/okhttp/internal/framed/Http2$Reader;,
        Lcom/android/okhttp/internal/framed/Http2$Writer;
    }
.end annotation


# static fields
.field private static final CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;

.field static final FLAG_ACK:B = 0x1t

.field static final FLAG_COMPRESSED:B = 0x20t

.field static final FLAG_END_HEADERS:B = 0x4t

.field static final FLAG_END_PUSH_PROMISE:B = 0x4t

.field static final FLAG_END_STREAM:B = 0x1t

.field static final FLAG_NONE:B = 0x0t

.field static final FLAG_PADDED:B = 0x8t

.field static final FLAG_PRIORITY:B = 0x20t

.field static final INITIAL_MAX_FRAME_SIZE:I = 0x4000

.field static final TYPE_CONTINUATION:B = 0x9t

.field static final TYPE_DATA:B = 0x0t

.field static final TYPE_GOAWAY:B = 0x7t

.field static final TYPE_HEADERS:B = 0x1t

.field static final TYPE_PING:B = 0x6t

.field static final TYPE_PRIORITY:B = 0x2t

.field static final TYPE_PUSH_PROMISE:B = 0x5t

.field static final TYPE_RST_STREAM:B = 0x3t

.field static final TYPE_SETTINGS:B = 0x4t

.field static final TYPE_WINDOW_UPDATE:B = 0x8t

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static synthetic -get0()Lcom/android/okhttp/okio/ByteString;
    .registers 1

    sget-object v0, Lcom/android/okhttp/internal/framed/Http2;->CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/logging/Logger;
    .registers 1

    sget-object v0, Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic -wrap0(IBS)I
    .registers 4
    .param p0, "length"    # I
    .param p1, "flags"    # B
    .param p2, "padding"    # S

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/internal/framed/Http2;->lengthWithoutPadding(IBS)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/okhttp/okio/BufferedSource;)I
    .registers 2
    .param p0, "source"    # Lcom/android/okhttp/okio/BufferedSource;

    .prologue
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/Http2;->readMedium(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/okhttp/okio/BufferedSink;I)V
    .registers 2
    .param p0, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p1, "i"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->writeMedium(Lcom/android/okhttp/okio/BufferedSink;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;

    .line 50
    const-string/jumbo v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 49
    sput-object v0, Lcom/android/okhttp/internal/framed/Http2;->CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static lengthWithoutPadding(IBS)I
    .registers 7
    .param p0, "length"    # I
    .param p1, "flags"    # B
    .param p2, "padding"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 643
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_7

    add-int/lit8 p0, p0, -0x1

    .line 644
    :cond_7
    if-le p2, p0, :cond_21

    .line 645
    const-string/jumbo v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 647
    :cond_21
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0
.end method

.method private static readMedium(Lcom/android/okhttp/okio/BufferedSource;)I
    .registers 3
    .param p0, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 761
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 762
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 761
    or-int/2addr v0, v1

    .line 763
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 761
    or-int/2addr v0, v1

    return v0
.end method

.method private static writeMedium(Lcom/android/okhttp/okio/BufferedSink;I)V
    .registers 3
    .param p0, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 767
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 768
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 769
    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 770
    return-void
.end method


# virtual methods
.method public getProtocol()Lcom/android/okhttp/Protocol;
    .registers 2

    .prologue
    .line 46
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    return-object v0
.end method

.method public newReader(Lcom/android/okhttp/okio/BufferedSource;Z)Lcom/android/okhttp/internal/framed/FrameReader;
    .registers 5
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "client"    # Z

    .prologue
    .line 80
    new-instance v0, Lcom/android/okhttp/internal/framed/Http2$Reader;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1, p2}, Lcom/android/okhttp/internal/framed/Http2$Reader;-><init>(Lcom/android/okhttp/okio/BufferedSource;IZ)V

    return-object v0
.end method

.method public newWriter(Lcom/android/okhttp/okio/BufferedSink;Z)Lcom/android/okhttp/internal/framed/FrameWriter;
    .registers 4
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p2, "client"    # Z

    .prologue
    .line 84
    new-instance v0, Lcom/android/okhttp/internal/framed/Http2$Writer;

    invoke-direct {v0, p1, p2}, Lcom/android/okhttp/internal/framed/Http2$Writer;-><init>(Lcom/android/okhttp/okio/BufferedSink;Z)V

    return-object v0
.end method

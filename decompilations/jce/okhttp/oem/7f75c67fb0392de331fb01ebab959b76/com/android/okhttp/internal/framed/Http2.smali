.class public final Lcom/android/okhttp/internal/framed/Http2;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/android/okhttp/internal/framed/Variant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/framed/Http2$FrameLogger;,
        Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;,
        Lcom/android/okhttp/internal/framed/Http2$Writer;,
        Lcom/android/okhttp/internal/framed/Http2$Reader;
    }
.end annotation


# static fields
.field private static final blacklist CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;

.field static final blacklist FLAG_ACK:B = 0x1t

.field static final blacklist FLAG_COMPRESSED:B = 0x20t

.field static final blacklist FLAG_END_HEADERS:B = 0x4t

.field static final blacklist FLAG_END_PUSH_PROMISE:B = 0x4t

.field static final blacklist FLAG_END_STREAM:B = 0x1t

.field static final blacklist FLAG_NONE:B = 0x0t

.field static final blacklist FLAG_PADDED:B = 0x8t

.field static final blacklist FLAG_PRIORITY:B = 0x20t

.field static final blacklist INITIAL_MAX_FRAME_SIZE:I = 0x4000

.field static final blacklist TYPE_CONTINUATION:B = 0x9t

.field static final blacklist TYPE_DATA:B = 0x0t

.field static final blacklist TYPE_GOAWAY:B = 0x7t

.field static final blacklist TYPE_HEADERS:B = 0x1t

.field static final blacklist TYPE_PING:B = 0x6t

.field static final blacklist TYPE_PRIORITY:B = 0x2t

.field static final blacklist TYPE_PUSH_PROMISE:B = 0x5t

.field static final blacklist TYPE_RST_STREAM:B = 0x3t

.field static final blacklist TYPE_SETTINGS:B = 0x4t

.field static final blacklist TYPE_WINDOW_UPDATE:B = 0x8t

.field private static final blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const-class v0, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;

    .line 51
    nop

    .line 52
    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Http2;->CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;

    .line 51
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000()Lcom/android/okhttp/okio/ByteString;
    .registers 1

    .line 44
    sget-object v0, Lcom/android/okhttp/internal/framed/Http2;->CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;

    return-object v0
.end method

.method static synthetic blacklist access$100()Ljava/util/logging/Logger;
    .registers 1

    .line 44
    sget-object v0, Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/okio/BufferedSource;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/android/okhttp/internal/framed/Http2;->readMedium(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$400(IBS)I
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # B
    .param p2, "x2"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/internal/framed/Http2;->lengthWithoutPadding(IBS)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 44
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/android/okhttp/okio/BufferedSink;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/framed/Http2;->writeMedium(Lcom/android/okhttp/okio/BufferedSink;I)V

    return-void
.end method

.method private static varargs blacklist illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs blacklist ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 586
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist lengthWithoutPadding(IBS)I
    .registers 6
    .param p0, "length"    # I
    .param p1, "flags"    # B
    .param p2, "padding"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_6

    add-int/lit8 p0, p0, -0x1

    .line 646
    :cond_6
    if-gt p2, p0, :cond_c

    .line 649
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0

    .line 647
    :cond_c
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {v1, v0}, Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private static blacklist readMedium(Lcom/android/okhttp/okio/BufferedSource;)I
    .registers 3
    .param p0, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 763
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 764
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 765
    invoke-interface {p0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 763
    return v0
.end method

.method private static blacklist writeMedium(Lcom/android/okhttp/okio/BufferedSink;I)V
    .registers 3
    .param p0, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 769
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 770
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 771
    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 772
    return-void
.end method


# virtual methods
.method public blacklist getProtocol()Lcom/android/okhttp/Protocol;
    .registers 2

    .line 48
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    return-object v0
.end method

.method public blacklist newReader(Lcom/android/okhttp/okio/BufferedSource;Z)Lcom/android/okhttp/internal/framed/FrameReader;
    .registers 5
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "client"    # Z

    .line 82
    new-instance v0, Lcom/android/okhttp/internal/framed/Http2$Reader;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1, p2}, Lcom/android/okhttp/internal/framed/Http2$Reader;-><init>(Lcom/android/okhttp/okio/BufferedSource;IZ)V

    return-object v0
.end method

.method public blacklist newWriter(Lcom/android/okhttp/okio/BufferedSink;Z)Lcom/android/okhttp/internal/framed/FrameWriter;
    .registers 4
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p2, "client"    # Z

    .line 86
    new-instance v0, Lcom/android/okhttp/internal/framed/Http2$Writer;

    invoke-direct {v0, p1, p2}, Lcom/android/okhttp/internal/framed/Http2$Writer;-><init>(Lcom/android/okhttp/okio/BufferedSink;Z)V

    return-object v0
.end method

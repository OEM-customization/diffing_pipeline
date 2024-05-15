.class final Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContinuationSource"
.end annotation


# instance fields
.field blacklist flags:B

.field blacklist left:I

.field blacklist length:I

.field blacklist padding:S

.field private final blacklist source:Lcom/android/okhttp/okio/BufferedSource;

.field blacklist streamId:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/okio/BufferedSource;)V
    .registers 2
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 606
    return-void
.end method

.method private blacklist readContinuationHeader()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    iget v0, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 633
    .local v0, "previousStreamId":I
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->readMedium(Lcom/android/okhttp/okio/BufferedSource;)I
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/Http2;->access$300(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v1

    iput v1, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    iput v1, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->length:I

    .line 634
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 635
    .local v1, "type":B
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    .line 636
    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3e

    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v2

    iget v4, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    iget v5, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->length:I

    iget-byte v6, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    invoke-static {v3, v4, v5, v1, v6}, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 637
    :cond_3e
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    iput v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 638
    const/16 v4, 0x9

    const/4 v5, 0x0

    if-ne v1, v4, :cond_5b

    .line 639
    if-ne v2, v0, :cond_52

    .line 640
    return-void

    .line 639
    :cond_52
    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "TYPE_CONTINUATION streamId changed"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v3, v2}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 638
    :cond_5b
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%s != TYPE_CONTINUATION"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v3, v2}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    return-void
.end method

.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 10
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    :goto_0
    iget v0, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1c

    .line 610
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    iget-short v3, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->padding:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 611
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->padding:S

    .line 612
    iget-byte v0, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_18

    return-wide v1

    .line 613
    :cond_18
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->readContinuationHeader()V

    goto :goto_0

    .line 617
    :cond_1c
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v3, p1, v4, v5}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v3

    .line 618
    .local v3, "read":J
    cmp-long v0, v3, v1

    if-nez v0, :cond_2c

    return-wide v1

    .line 619
    :cond_2c
    iget v0, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    int-to-long v0, v0

    sub-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    .line 620
    return-wide v3
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 624
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

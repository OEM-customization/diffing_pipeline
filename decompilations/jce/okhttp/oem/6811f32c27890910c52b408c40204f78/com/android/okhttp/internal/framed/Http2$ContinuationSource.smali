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
.field flags:B

.field left:I

.field length:I

.field padding:S

.field private final source:Lcom/android/okhttp/okio/BufferedSource;

.field streamId:I


# direct methods
.method public constructor <init>(Lcom/android/okhttp/okio/BufferedSource;)V
    .registers 2
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;

    .prologue
    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 604
    return-void
.end method

.method private readContinuationHeader()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 629
    iget v0, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 631
    .local v0, "previousStreamId":I
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-static {v2}, Lcom/android/okhttp/internal/framed/Http2;->-wrap1(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v2

    iput v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    iput v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->length:I

    .line 632
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 633
    .local v1, "type":B
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    .line 634
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get1()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get1()Ljava/util/logging/Logger;

    move-result-object v2

    iget v3, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    iget v4, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->length:I

    iget-byte v5, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    invoke-static {v7, v3, v4, v1, v5}, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 635
    :cond_3f
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 636
    const/16 v2, 0x9

    if-eq v1, v2, :cond_5f

    const-string/jumbo v2, "%s != TYPE_CONTINUATION"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 637
    :cond_5f
    iget v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    if-eq v2, v0, :cond_6d

    const-string/jumbo v2, "TYPE_CONTINUATION streamId changed"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 638
    :cond_6d
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 626
    return-void
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 14
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    .line 607
    :goto_3
    iget v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    if-nez v2, :cond_1c

    .line 608
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    iget-short v3, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->padding:S

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 609
    iput-short v6, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->padding:S

    .line 610
    iget-byte v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_18

    return-wide v8

    .line 611
    :cond_18
    invoke-direct {p0}, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->readContinuationHeader()V

    goto :goto_3

    .line 615
    :cond_1c
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    iget v3, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    int-to-long v4, v3

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    .line 616
    .local v0, "read":J
    cmp-long v2, v0, v8

    if-nez v2, :cond_2e

    return-wide v8

    .line 617
    :cond_2e
    iget v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    .line 618
    return-wide v0
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

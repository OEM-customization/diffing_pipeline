.class final Lcom/android/okhttp/internal/framed/Http2$Reader;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/android/okhttp/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

.field final hpackReader:Lcom/android/okhttp/internal/framed/Hpack$Reader;

.field private final source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/BufferedSource;IZ)V
    .registers 6
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "headerTableSize"    # I
    .param p3, "client"    # Z

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 97
    iput-boolean p3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->client:Z

    .line 98
    new-instance v0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;-><init>(Lcom/android/okhttp/okio/BufferedSource;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    .line 99
    new-instance v0, Lcom/android/okhttp/internal/framed/Hpack$Reader;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    invoke-direct {v0, p2, v1}, Lcom/android/okhttp/internal/framed/Hpack$Reader;-><init>(ILcom/android/okhttp/okio/Source;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/android/okhttp/internal/framed/Hpack$Reader;

    .line 100
    return-void
.end method

.method private readData(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 11
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 219
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_17

    const/4 v1, 0x1

    .line 220
    .local v1, "inFinished":Z
    :goto_6
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_19

    const/4 v0, 0x1

    .line 221
    .local v0, "gzipped":Z
    :goto_b
    if-eqz v0, :cond_1b

    .line 222
    const-string/jumbo v3, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 219
    .end local v0    # "gzipped":Z
    .end local v1    # "inFinished":Z
    :cond_17
    const/4 v1, 0x0

    .restart local v1    # "inFinished":Z
    goto :goto_6

    .line 220
    :cond_19
    const/4 v0, 0x0

    .restart local v0    # "gzipped":Z
    goto :goto_b

    .line 225
    :cond_1b
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v2, v3

    .line 226
    :goto_28
    invoke-static {p2, p3, v2}, Lcom/android/okhttp/internal/framed/Http2;->-wrap0(IBS)I

    move-result p2

    .line 228
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p1, v1, p4, v3, p2}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->data(ZILcom/android/okhttp/okio/BufferedSource;I)V

    .line 229
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 230
    return-void

    .line 225
    :cond_38
    const/4 v2, 0x0

    .local v2, "padding":S
    goto :goto_28
.end method

.method private readGoAway(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 14
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 334
    const/16 v5, 0x8

    if-ge p2, v5, :cond_16

    const-string/jumbo v5, "TYPE_GOAWAY length < 8: %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 335
    :cond_16
    if-eqz p4, :cond_22

    const-string/jumbo v5, "TYPE_GOAWAY streamId != 0"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 336
    :cond_22
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v3

    .line 337
    .local v3, "lastStreamId":I
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v2

    .line 338
    .local v2, "errorCodeInt":I
    add-int/lit8 v4, p2, -0x8

    .line 339
    .local v4, "opaqueDataLength":I
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v1

    .line 340
    .local v1, "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    if-nez v1, :cond_46

    .line 341
    const-string/jumbo v5, "TYPE_GOAWAY unexpected error code: %d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 343
    :cond_46
    sget-object v0, Lcom/android/okhttp/okio/ByteString;->EMPTY:Lcom/android/okhttp/okio/ByteString;

    .line 344
    .local v0, "debugData":Lcom/android/okhttp/okio/ByteString;
    if-lez v4, :cond_51

    .line 345
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v6, v4

    invoke-interface {v5, v6, v7}, Lcom/android/okhttp/okio/BufferedSource;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 347
    :cond_51
    invoke-interface {p1, v3, v1, v0}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->goAway(ILcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/okio/ByteString;)V

    .line 348
    return-void
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .registers 7
    .param p1, "length"    # I
    .param p2, "padding"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
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
    .line 205
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    iput p1, v1, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    iput p1, v0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->length:I

    .line 206
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    iput-short p2, v0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->padding:S

    .line 207
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    iput-byte p3, v0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    .line 208
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    iput p4, v0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 212
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/android/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readHeaders()V

    .line 213
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/android/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHeaders(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 13
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 185
    if-nez p4, :cond_d

    const-string/jumbo v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 187
    :cond_d
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_39

    const/4 v2, 0x1

    .line 189
    .local v2, "endStream":Z
    :goto_12
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v7, v0

    .line 191
    :goto_1f
    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_28

    .line 192
    invoke-direct {p0, p1, p4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/android/okhttp/internal/framed/FrameReader$Handler;I)V

    .line 193
    add-int/lit8 p2, p2, -0x5

    .line 196
    :cond_28
    invoke-static {p2, p3, v7}, Lcom/android/okhttp/internal/framed/Http2;->-wrap0(IBS)I

    move-result p2

    .line 198
    invoke-direct {p0, p2, v7, p3, p4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v5

    .line 200
    .local v5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    sget-object v6, Lcom/android/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    const/4 v4, -0x1

    move-object v0, p1

    move v3, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V

    .line 201
    return-void

    .line 187
    .end local v2    # "endStream":Z
    .end local v5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :cond_39
    const/4 v2, 0x0

    .restart local v2    # "endStream":Z
    goto :goto_12

    .line 189
    :cond_3b
    const/4 v7, 0x0

    .local v7, "padding":S
    goto :goto_1f
.end method

.method private readPing(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 12
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 324
    const/16 v3, 0x8

    if-eq p2, v3, :cond_16

    const-string/jumbo v3, "TYPE_PING length != 8: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 325
    :cond_16
    if-eqz p4, :cond_22

    const-string/jumbo v3, "TYPE_PING streamId != 0"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 326
    :cond_22
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v1

    .line 327
    .local v1, "payload1":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v2

    .line 328
    .local v2, "payload2":I
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_37

    const/4 v0, 0x1

    .line 329
    .local v0, "ack":Z
    :goto_33
    invoke-interface {p1, v0, v1, v2}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->ping(ZII)V

    .line 330
    return-void

    .line 328
    .end local v0    # "ack":Z
    :cond_37
    const/4 v0, 0x0

    .restart local v0    # "ack":Z
    goto :goto_33
.end method

.method private readPriority(Lcom/android/okhttp/internal/framed/FrameReader$Handler;I)V
    .registers 8
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v2

    .line 241
    .local v2, "w1":I
    const/high16 v4, -0x80000000

    and-int/2addr v4, v2

    if-eqz v4, :cond_1f

    const/4 v0, 0x1

    .line 242
    .local v0, "exclusive":Z
    :goto_c
    const v4, 0x7fffffff

    and-int v1, v2, v4

    .line 243
    .local v1, "streamDependency":I
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v4, 0x1

    .line 244
    .local v3, "weight":I
    invoke-interface {p1, p2, v1, v3, v0}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->priority(IIIZ)V

    .line 245
    return-void

    .line 241
    .end local v0    # "exclusive":Z
    .end local v1    # "streamDependency":I
    .end local v3    # "weight":I
    :cond_1f
    const/4 v0, 0x0

    .restart local v0    # "exclusive":Z
    goto :goto_c
.end method

.method private readPriority(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 9
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 234
    const/4 v0, 0x5

    if-eq p2, v0, :cond_15

    const-string/jumbo v0, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 235
    :cond_15
    if-nez p4, :cond_21

    const-string/jumbo v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 236
    :cond_21
    invoke-direct {p0, p1, p4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/android/okhttp/internal/framed/FrameReader$Handler;I)V

    .line 237
    return-void
.end method

.method private readPushPromise(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 10
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 311
    if-nez p4, :cond_d

    .line 312
    const-string/jumbo v3, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 314
    :cond_d
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v1, v3

    .line 315
    :goto_1a
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int v2, v3, v4

    .line 316
    .local v2, "promisedStreamId":I
    add-int/lit8 p2, p2, -0x4

    .line 317
    invoke-static {p2, p3, v1}, Lcom/android/okhttp/internal/framed/Http2;->-wrap0(IBS)I

    move-result p2

    .line 318
    invoke-direct {p0, p2, v1, p3, p4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v0

    .line 319
    .local v0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    invoke-interface {p1, p4, v2, v0}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    .line 320
    return-void

    .line 314
    .end local v0    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    .end local v2    # "promisedStreamId":I
    :cond_33
    const/4 v1, 0x0

    .local v1, "padding":S
    goto :goto_1a
.end method

.method private readRstStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 11
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 249
    const/4 v2, 0x4

    if-eq p2, v2, :cond_15

    const-string/jumbo v2, "TYPE_RST_STREAM length: %d != 4"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 250
    :cond_15
    if-nez p4, :cond_21

    const-string/jumbo v2, "TYPE_RST_STREAM streamId == 0"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 251
    :cond_21
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v1

    .line 252
    .local v1, "errorCodeInt":I
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    .line 253
    .local v0, "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    if-nez v0, :cond_3d

    .line 254
    const-string/jumbo v2, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 256
    :cond_3d
    invoke-interface {p1, p4, v0}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 257
    return-void
.end method

.method private readSettings(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 13
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 261
    if-eqz p4, :cond_e

    const-string/jumbo v4, "TYPE_SETTINGS streamId != 0"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 262
    :cond_e
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_22

    .line 263
    if-eqz p2, :cond_1e

    const-string/jumbo v4, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 264
    :cond_1e
    invoke-interface {p1}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->ackSettings()V

    .line 265
    return-void

    .line 268
    :cond_22
    rem-int/lit8 v4, p2, 0x6

    if-eqz v4, :cond_36

    const-string/jumbo v4, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 269
    :cond_36
    new-instance v2, Lcom/android/okhttp/internal/framed/Settings;

    invoke-direct {v2}, Lcom/android/okhttp/internal/framed/Settings;-><init>()V

    .line 270
    .local v2, "settings":Lcom/android/okhttp/internal/framed/Settings;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3c
    if-ge v0, p2, :cond_98

    .line 271
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->readShort()S

    move-result v1

    .line 272
    .local v1, "id":S
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v3

    .line 274
    .local v3, "value":I
    packed-switch v1, :pswitch_data_ac

    .line 299
    const-string/jumbo v4, "PROTOCOL_ERROR invalid settings id: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 278
    :pswitch_5d
    if-eqz v3, :cond_6c

    if-eq v3, v5, :cond_6c

    .line 279
    const-string/jumbo v4, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 283
    :pswitch_6b
    const/4 v1, 0x4

    .line 301
    .end local v1    # "id":S
    :cond_6c
    :pswitch_6c
    invoke-virtual {v2, v1, v7, v3}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    .line 270
    add-int/lit8 v0, v0, 0x6

    goto :goto_3c

    .line 286
    .restart local v1    # "id":S
    :pswitch_72
    const/4 v1, 0x7

    .line 287
    .local v1, "id":S
    if-gez v3, :cond_6c

    .line 288
    const-string/jumbo v4, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 292
    .local v1, "id":S
    :pswitch_7f
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_88

    const v4, 0xffffff

    if-le v3, v4, :cond_6c

    .line 293
    :cond_88
    const-string/jumbo v4, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 303
    .end local v1    # "id":S
    .end local v3    # "value":I
    :cond_98
    invoke-interface {p1, v7, v2}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->settings(ZLcom/android/okhttp/internal/framed/Settings;)V

    .line 304
    invoke-virtual {v2}, Lcom/android/okhttp/internal/framed/Settings;->getHeaderTableSize()I

    move-result v4

    if-ltz v4, :cond_aa

    .line 305
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/android/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/framed/Settings;->getHeaderTableSize()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting(I)V

    .line 307
    :cond_aa
    return-void

    .line 274
    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_5d
        :pswitch_6b
        :pswitch_72
        :pswitch_7f
        :pswitch_6c
    .end packed-switch
.end method

.method private readWindowUpdate(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 13
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 352
    const/4 v2, 0x4

    if-eq p2, v2, :cond_15

    const-string/jumbo v2, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 353
    :cond_15
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x7fffffff

    and-long v0, v2, v4

    .line 354
    .local v0, "increment":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_37

    const-string/jumbo v2, "windowSizeIncrement was 0"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 355
    :cond_37
    invoke-interface {p1, p4, v0, v1}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    .line 356
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->close()V

    .line 360
    return-void
.end method

.method public nextFrame(Lcom/android/okhttp/internal/framed/FrameReader$Handler;)Z
    .registers 12
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 113
    :try_start_2
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    const-wide/16 v6, 0x9

    invoke-interface {v5, v6, v7}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_25

    .line 130
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-static {v5}, Lcom/android/okhttp/internal/framed/Http2;->-wrap1(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v2

    .line 131
    .local v2, "length":I
    if-ltz v2, :cond_15

    const/16 v5, 0x4000

    if-le v2, v5, :cond_27

    .line 132
    :cond_15
    const-string/jumbo v5, "FRAME_SIZE_ERROR: %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 114
    .end local v2    # "length":I
    :catch_25
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    return v8

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "length":I
    :cond_27
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v4, v5

    .line 135
    .local v4, "type":B
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v1, v5

    .line 136
    .local v1, "flags":B
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v5

    const v6, 0x7fffffff

    and-int v3, v5, v6

    .line 137
    .local v3, "streamId":I
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get1()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get1()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-static {v9, v3, v2, v4, v1}, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 139
    :cond_5b
    packed-switch v4, :pswitch_data_8a

    .line 178
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v6, v2

    invoke-interface {v5, v6, v7}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 180
    :goto_64
    return v9

    .line 141
    :pswitch_65
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readData(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_64

    .line 145
    :pswitch_69
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readHeaders(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_64

    .line 149
    :pswitch_6d
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_64

    .line 153
    :pswitch_71
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readRstStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_64

    .line 157
    :pswitch_75
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readSettings(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_64

    .line 161
    :pswitch_79
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readPushPromise(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_64

    .line 165
    :pswitch_7d
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readPing(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_64

    .line 169
    :pswitch_81
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readGoAway(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_64

    .line 173
    :pswitch_85
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readWindowUpdate(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    goto :goto_64

    .line 139
    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_65
        :pswitch_69
        :pswitch_6d
        :pswitch_71
        :pswitch_75
        :pswitch_79
        :pswitch_7d
        :pswitch_81
        :pswitch_85
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    iget-boolean v1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->client:Z

    if-eqz v1, :cond_7

    return-void

    .line 104
    :cond_7
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get0()Lcom/android/okhttp/okio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 105
    .local v0, "connectionPreface":Lcom/android/okhttp/okio/ByteString;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get1()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get1()Ljava/util/logging/Logger;

    move-result-object v1

    const-string/jumbo v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    :cond_38
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->-get0()Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 107
    const-string/jumbo v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/android/okhttp/internal/framed/Http2;->-wrap2(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 109
    :cond_52
    return-void
.end method

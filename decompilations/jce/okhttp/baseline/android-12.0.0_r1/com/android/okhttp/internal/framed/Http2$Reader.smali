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
.field private final blacklist client:Z

.field private final blacklist continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

.field final blacklist hpackReader:Lcom/android/okhttp/internal/framed/Hpack$Reader;

.field private final blacklist source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/BufferedSource;IZ)V
    .registers 6
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "headerTableSize"    # I
    .param p3, "client"    # Z

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 99
    iput-boolean p3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->client:Z

    .line 100
    new-instance v0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    invoke-direct {v0, p1}, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;-><init>(Lcom/android/okhttp/okio/BufferedSource;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    .line 101
    new-instance v1, Lcom/android/okhttp/internal/framed/Hpack$Reader;

    invoke-direct {v1, p2, v0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;-><init>(ILcom/android/okhttp/okio/Source;)V

    iput-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/android/okhttp/internal/framed/Hpack$Reader;

    .line 102
    return-void
.end method

.method private blacklist readData(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
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

    .line 221
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 222
    .local v0, "inFinished":Z
    :goto_9
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    .line 223
    .local v1, "gzipped":Z
    :goto_f
    if-nez v1, :cond_2e

    .line 227
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_1e

    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    .line 228
    .local v2, "padding":S
    :cond_1e
    # invokes: Lcom/android/okhttp/internal/framed/Http2;->lengthWithoutPadding(IBS)I
    invoke-static {p2, p3, v2}, Lcom/android/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 230
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p1, v0, p4, v3, p2}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->data(ZILcom/android/okhttp/okio/BufferedSource;I)V

    .line 231
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 232
    return-void

    .line 224
    .end local v2    # "padding":S
    :cond_2e
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v3, v2}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method private blacklist readGoAway(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
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

    .line 336
    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lt p2, v1, :cond_43

    .line 337
    if-nez p4, :cond_3a

    .line 338
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v1

    .line 339
    .local v1, "lastStreamId":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v3

    .line 340
    .local v3, "errorCodeInt":I
    add-int/lit8 v4, p2, -0x8

    .line 341
    .local v4, "opaqueDataLength":I
    invoke-static {v3}, Lcom/android/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v5

    .line 342
    .local v5, "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    if-eqz v5, :cond_2b

    .line 345
    sget-object v0, Lcom/android/okhttp/okio/ByteString;->EMPTY:Lcom/android/okhttp/okio/ByteString;

    .line 346
    .local v0, "debugData":Lcom/android/okhttp/okio/ByteString;
    if-lez v4, :cond_27

    .line 347
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v6, v4

    invoke-interface {v2, v6, v7}, Lcom/android/okhttp/okio/BufferedSource;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 349
    :cond_27
    invoke-interface {p1, v1, v5, v0}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->goAway(ILcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/okio/ByteString;)V

    .line 350
    return-void

    .line 343
    .end local v0    # "debugData":Lcom/android/okhttp/okio/ByteString;
    :cond_2b
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    const-string v2, "TYPE_GOAWAY unexpected error code: %d"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 337
    .end local v1    # "lastStreamId":I
    .end local v3    # "errorCodeInt":I
    .end local v4    # "opaqueDataLength":I
    .end local v5    # "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    :cond_3a
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "TYPE_GOAWAY streamId != 0"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 336
    :cond_43
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "TYPE_GOAWAY length < 8: %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private blacklist readHeaderBlock(ISBI)Ljava/util/List;
    .registers 6
    .param p1, "length"    # I
    .param p2, "padding"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
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

    .line 207
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    iput p1, v0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    iput p1, v0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->length:I

    .line 208
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    iput-short p2, v0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->padding:S

    .line 209
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    iput-byte p3, v0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    .line 210
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;

    iput p4, v0, Lcom/android/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 214
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/android/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->readHeaders()V

    .line 215
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/android/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private blacklist readHeaders(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
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

    .line 187
    const/4 v0, 0x0

    if-eqz p4, :cond_34

    .line 189
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    move v4, v1

    goto :goto_b

    :cond_a
    move v4, v0

    .line 191
    .local v4, "endStream":Z
    :goto_b
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 193
    .local v0, "padding":S
    :cond_18
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_21

    .line 194
    invoke-direct {p0, p1, p4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/android/okhttp/internal/framed/FrameReader$Handler;I)V

    .line 195
    add-int/lit8 p2, p2, -0x5

    .line 198
    :cond_21
    # invokes: Lcom/android/okhttp/internal/framed/Http2;->lengthWithoutPadding(IBS)I
    invoke-static {p2, p3, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 200
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v1

    .line 202
    .local v1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    const/4 v3, 0x0

    const/4 v6, -0x1

    sget-object v8, Lcom/android/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    move-object v2, p1

    move v5, p4

    move-object v7, v1

    invoke-interface/range {v2 .. v8}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V

    .line 203
    return-void

    .line 187
    .end local v0    # "padding":S
    .end local v1    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    .end local v4    # "endStream":Z
    :cond_34
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private blacklist readPing(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
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

    .line 326
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p2, v2, :cond_26

    .line 327
    if-nez p4, :cond_1d

    .line 328
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v2

    .line 329
    .local v2, "payload1":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v3

    .line 330
    .local v3, "payload2":I
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_19

    move v0, v1

    .line 331
    .local v0, "ack":Z
    :cond_19
    invoke-interface {p1, v0, v2, v3}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->ping(ZII)V

    .line 332
    return-void

    .line 327
    .end local v0    # "ack":Z
    .end local v2    # "payload1":I
    .end local v3    # "payload2":I
    :cond_1d
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_PING streamId != 0"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 326
    :cond_26
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_PING length != 8: %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private blacklist readPriority(Lcom/android/okhttp/internal/framed/FrameReader$Handler;I)V
    .registers 8
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v0

    .line 243
    .local v0, "w1":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 244
    .local v1, "exclusive":Z
    :goto_f
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    .line 245
    .local v3, "streamDependency":I
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    .line 246
    .local v4, "weight":I
    invoke-interface {p1, p2, v3, v4, v1}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->priority(IIIZ)V

    .line 247
    return-void
.end method

.method private blacklist readPriority(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 8
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_13

    .line 237
    if-eqz p4, :cond_a

    .line 238
    invoke-direct {p0, p1, p4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/android/okhttp/internal/framed/FrameReader$Handler;I)V

    .line 239
    return-void

    .line 237
    :cond_a
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_PRIORITY streamId == 0"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 236
    :cond_13
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private blacklist readPushPromise(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .registers 8
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    if-eqz p4, :cond_28

    .line 316
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 317
    .local v0, "padding":S
    :cond_10
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 318
    .local v1, "promisedStreamId":I
    add-int/lit8 p2, p2, -0x4

    .line 319
    # invokes: Lcom/android/okhttp/internal/framed/Http2;->lengthWithoutPadding(IBS)I
    invoke-static {p2, p3, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 320
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v2

    .line 321
    .local v2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    invoke-interface {p1, p4, v1, v2}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    .line 322
    return-void

    .line 314
    .end local v0    # "padding":S
    .end local v1    # "promisedStreamId":I
    .end local v2    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    :cond_28
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private blacklist readRstStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
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

    .line 251
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2f

    .line 252
    if-eqz p4, :cond_26

    .line 253
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v2

    .line 254
    .local v2, "errorCodeInt":I
    invoke-static {v2}, Lcom/android/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v3

    .line 255
    .local v3, "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    if-eqz v3, :cond_17

    .line 258
    invoke-interface {p1, p4, v3}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 259
    return-void

    .line 256
    :cond_17
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 252
    .end local v2    # "errorCodeInt":I
    .end local v3    # "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    :cond_26
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TYPE_RST_STREAM streamId == 0"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 251
    :cond_2f
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "TYPE_RST_STREAM length: %d != 4"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private blacklist readSettings(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
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

    .line 263
    const/4 v0, 0x0

    if-nez p4, :cond_a1

    .line 264
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_16

    .line 265
    if-nez p2, :cond_d

    .line 266
    invoke-interface {p1}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->ackSettings()V

    .line 267
    return-void

    .line 265
    :cond_d
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FRAME_SIZE_ERROR ack frame should be empty!"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 270
    :cond_16
    rem-int/lit8 v1, p2, 0x6

    const/4 v2, 0x1

    if-nez v1, :cond_92

    .line 271
    new-instance v1, Lcom/android/okhttp/internal/framed/Settings;

    invoke-direct {v1}, Lcom/android/okhttp/internal/framed/Settings;-><init>()V

    .line 272
    .local v1, "settings":Lcom/android/okhttp/internal/framed/Settings;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, p2, :cond_7f

    .line 273
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->readShort()S

    move-result v4

    .line 274
    .local v4, "id":S
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v5

    .line 276
    .local v5, "value":I
    packed-switch v4, :pswitch_data_aa

    .line 301
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v2, v0

    const-string v0, "PROTOCOL_ERROR invalid settings id: %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 299
    :pswitch_41
    goto :goto_79

    .line 294
    :pswitch_42
    const/16 v6, 0x4000

    if-lt v5, v6, :cond_4c

    const v6, 0xffffff

    if-gt v5, v6, :cond_4c

    goto :goto_79

    .line 295
    :cond_4c
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v0

    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 288
    :pswitch_5b
    const/4 v4, 0x7

    .line 289
    if-ltz v5, :cond_5f

    goto :goto_79

    .line 290
    :cond_5f
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 285
    :pswitch_68
    const/4 v4, 0x4

    .line 286
    goto :goto_79

    .line 280
    :pswitch_6a
    if-eqz v5, :cond_79

    if-ne v5, v2, :cond_6f

    goto :goto_79

    .line 281
    :cond_6f
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 278
    :pswitch_78
    nop

    .line 303
    :cond_79
    :goto_79
    invoke-virtual {v1, v4, v0, v5}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    .line 272
    .end local v4    # "id":S
    .end local v5    # "value":I
    add-int/lit8 v3, v3, 0x6

    goto :goto_21

    .line 305
    .end local v3    # "i":I
    :cond_7f
    invoke-interface {p1, v0, v1}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->settings(ZLcom/android/okhttp/internal/framed/Settings;)V

    .line 306
    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/Settings;->getHeaderTableSize()I

    move-result v0

    if-ltz v0, :cond_91

    .line 307
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/android/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/Settings;->getHeaderTableSize()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting(I)V

    .line 309
    :cond_91
    return-void

    .line 270
    .end local v1    # "settings":Lcom/android/okhttp/internal/framed/Settings;
    :cond_92
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 263
    :cond_a1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_SETTINGS streamId != 0"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_78
        :pswitch_6a
        :pswitch_68
        :pswitch_5b
        :pswitch_42
        :pswitch_41
    .end packed-switch
.end method

.method private blacklist readWindowUpdate(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V
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

    .line 354
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_29

    .line 355
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    .line 356
    .local v2, "increment":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1a

    .line 357
    invoke-interface {p1, p4, v2, v3}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    .line 358
    return-void

    .line 356
    :cond_1a
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v0, "windowSizeIncrement was 0"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 354
    .end local v2    # "increment":J
    :cond_29
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->close()V

    .line 362
    return-void
.end method

.method public blacklist nextFrame(Lcom/android/okhttp/internal/framed/FrameReader$Handler;)Z
    .registers 10
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/okio/BufferedSource;->require(J)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_87

    .line 118
    nop

    .line 132
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->readMedium(Lcom/android/okhttp/okio/BufferedSource;)I
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/Http2;->access$300(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v1

    .line 133
    .local v1, "length":I
    const/4 v2, 0x1

    if-ltz v1, :cond_78

    const/16 v3, 0x4000

    if-gt v1, v3, :cond_78

    .line 136
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 137
    .local v0, "type":B
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 138
    .local v3, "flags":B
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    .line 139
    .local v4, "streamId":I
    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_49

    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-static {v2, v4, v1, v0, v3}, Lcom/android/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 141
    :cond_49
    packed-switch v0, :pswitch_data_8a

    .line 180
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v6, v1

    invoke-interface {v5, v6, v7}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    goto :goto_77

    .line 175
    :pswitch_53
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readWindowUpdate(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 176
    goto :goto_77

    .line 171
    :pswitch_57
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readGoAway(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 172
    goto :goto_77

    .line 167
    :pswitch_5b
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readPing(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 168
    goto :goto_77

    .line 163
    :pswitch_5f
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readPushPromise(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 164
    goto :goto_77

    .line 159
    :pswitch_63
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readSettings(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 160
    goto :goto_77

    .line 155
    :pswitch_67
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readRstStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 156
    goto :goto_77

    .line 151
    :pswitch_6b
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 152
    goto :goto_77

    .line 147
    :pswitch_6f
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readHeaders(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 148
    goto :goto_77

    .line 143
    :pswitch_73
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/android/okhttp/internal/framed/Http2$Reader;->readData(Lcom/android/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 144
    nop

    .line 182
    :goto_77
    return v2

    .line 134
    .end local v0    # "type":B
    .end local v3    # "flags":B
    .end local v4    # "streamId":I
    :cond_78
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "FRAME_SIZE_ERROR: %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 116
    .end local v1    # "length":I
    :catch_87
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/IOException;
    return v0

    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
    .end packed-switch
.end method

.method public blacklist readConnectionPreface()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-boolean v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->client:Z

    if-eqz v0, :cond_5

    return-void

    .line 106
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Http2$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    # getter for: Lcom/android/okhttp/internal/framed/Http2;->CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$000()Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/okio/BufferedSource;->readByteString(J)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    .line 107
    .local v0, "connectionPreface":Lcom/android/okhttp/okio/ByteString;
    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_37

    # getter for: Lcom/android/okhttp/internal/framed/Http2;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "<< CONNECTION %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 108
    :cond_37
    # getter for: Lcom/android/okhttp/internal/framed/Http2;->CONNECTION_PREFACE:Lcom/android/okhttp/okio/ByteString;
    invoke-static {}, Lcom/android/okhttp/internal/framed/Http2;->access$000()Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 111
    return-void

    .line 109
    :cond_42
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Expected a connection header but was %s"

    # invokes: Lcom/android/okhttp/internal/framed/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    invoke-static {v2, v1}, Lcom/android/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

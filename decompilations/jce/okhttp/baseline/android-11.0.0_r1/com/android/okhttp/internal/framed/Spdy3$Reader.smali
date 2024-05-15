.class final Lcom/android/okhttp/internal/framed/Spdy3$Reader;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/android/okhttp/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final blacklist client:Z

.field private final blacklist headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

.field private final blacklist source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/BufferedSource;Z)V
    .registers 4
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "client"    # Z

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 116
    new-instance v0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    invoke-direct {v0, p1}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;-><init>(Lcom/android/okhttp/okio/BufferedSource;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    .line 117
    iput-boolean p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->client:Z

    .line 118
    return-void
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

    .line 280
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist readGoAway(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 10
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p3, v2, :cond_31

    .line 253
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    .line 254
    .local v2, "lastGoodStreamId":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v3

    .line 255
    .local v3, "errorCodeInt":I
    invoke-static {v3}, Lcom/android/okhttp/internal/framed/ErrorCode;->fromSpdyGoAway(I)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v4

    .line 256
    .local v4, "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    if-eqz v4, :cond_22

    .line 259
    sget-object v0, Lcom/android/okhttp/okio/ByteString;->EMPTY:Lcom/android/okhttp/okio/ByteString;

    invoke-interface {p1, v2, v4, v0}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->goAway(ILcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/okio/ByteString;)V

    .line 260
    return-void

    .line 257
    :cond_22
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 252
    .end local v2    # "lastGoodStreamId":I
    .end local v3    # "errorCodeInt":I
    .end local v4    # "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    :cond_31
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_GOAWAY length: %d != 8"

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private blacklist readHeaders(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 14
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v0

    .line 229
    .local v0, "w1":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 230
    .local v1, "streamId":I
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    add-int/lit8 v3, p3, -0x4

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v9

    .line 231
    .local v9, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    sget-object v8, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v2, p1

    move v5, v1

    move-object v7, v9

    invoke-interface/range {v2 .. v8}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V

    .line 232
    return-void
.end method

.method private blacklist readPing(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 9
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p3, v2, :cond_1c

    .line 246
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v2

    .line 247
    .local v2, "id":I
    iget-boolean v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->client:Z

    and-int/lit8 v4, v2, 0x1

    if-ne v4, v1, :cond_13

    move v4, v1

    goto :goto_14

    :cond_13
    move v4, v0

    :goto_14
    if-ne v3, v4, :cond_17

    goto :goto_18

    :cond_17
    move v1, v0

    .line 248
    .local v1, "ack":Z
    :goto_18
    invoke-interface {p1, v1, v2, v0}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->ping(ZII)V

    .line 249
    return-void

    .line 245
    .end local v1    # "ack":Z
    .end local v2    # "id":I
    :cond_1c
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_PING length: %d != 4"

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private blacklist readRstStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 10
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p3, v2, :cond_2f

    .line 218
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    .line 219
    .local v2, "streamId":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v3

    .line 220
    .local v3, "errorCodeInt":I
    invoke-static {v3}, Lcom/android/okhttp/internal/framed/ErrorCode;->fromSpdy3Rst(I)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v4

    .line 221
    .local v4, "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    if-eqz v4, :cond_20

    .line 224
    invoke-interface {p1, v2, v4}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 225
    return-void

    .line 222
    :cond_20
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 217
    .end local v2    # "streamId":I
    .end local v3    # "errorCodeInt":I
    .end local v4    # "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    :cond_2f
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_RST_STREAM length: %d != 8"

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private blacklist readSettings(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 13
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v0

    .line 264
    .local v0, "numberOfEntries":I
    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v1, :cond_3a

    .line 267
    new-instance v1, Lcom/android/okhttp/internal/framed/Settings;

    invoke-direct {v1}, Lcom/android/okhttp/internal/framed/Settings;-><init>()V

    .line 268
    .local v1, "settings":Lcom/android/okhttp/internal/framed/Settings;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v0, :cond_31

    .line 269
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v5

    .line 270
    .local v5, "w1":I
    iget-object v6, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v6}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v6

    .line 271
    .local v6, "value":I
    const/high16 v7, -0x1000000

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x18

    .line 272
    .local v7, "idFlags":I
    const v8, 0xffffff

    and-int/2addr v8, v5

    .line 273
    .local v8, "id":I
    invoke-virtual {v1, v8, v7, v6}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    .line 268
    .end local v5    # "w1":I
    .end local v6    # "value":I
    .end local v7    # "idFlags":I
    .end local v8    # "id":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 275
    .end local v4    # "i":I
    :cond_31
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_36

    move v2, v3

    .line 276
    .local v2, "clearPrevious":Z
    :cond_36
    invoke-interface {p1, v2, v1}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->settings(ZLcom/android/okhttp/internal/framed/Settings;)V

    .line 277
    return-void

    .line 265
    .end local v1    # "settings":Lcom/android/okhttp/internal/framed/Settings;
    .end local v2    # "clearPrevious":Z
    :cond_3a
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    invoke-static {v2, v1}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private blacklist readSynReply(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 14
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v0

    .line 210
    .local v0, "w1":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 211
    .local v1, "streamId":I
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    add-int/lit8 v3, p3, -0x4

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v9

    .line 212
    .local v9, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    move v4, v2

    .line 213
    .local v4, "inFinished":Z
    const/4 v3, 0x0

    const/4 v6, -0x1

    sget-object v8, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

    move-object v2, p1

    move v5, v1

    move-object v7, v9

    invoke-interface/range {v2 .. v8}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V

    .line 214
    return-void
.end method

.method private blacklist readSynStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 16
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v0

    .line 196
    .local v0, "w1":I
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v1

    .line 197
    .local v1, "w2":I
    const v2, 0x7fffffff

    and-int v10, v0, v2

    .line 198
    .local v10, "streamId":I
    and-int/2addr v2, v1

    .line 199
    .local v2, "associatedStreamId":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readShort()S

    .line 200
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    add-int/lit8 v4, p3, -0xa

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v11

    .line 202
    .local v11, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    and-int/lit8 v3, p2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_27

    move v5, v6

    goto :goto_28

    :cond_27
    move v5, v4

    .line 203
    .local v5, "inFinished":Z
    :goto_28
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_2d

    move v4, v6

    .line 204
    .local v4, "outFinished":Z
    :cond_2d
    sget-object v9, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lcom/android/okhttp/internal/framed/HeadersMode;

    move-object v3, p1

    move v6, v10

    move v7, v2

    move-object v8, v11

    invoke-interface/range {v3 .. v9}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V

    .line 206
    return-void
.end method

.method private blacklist readWindowUpdate(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 14
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p3, v2, :cond_32

    .line 236
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v2

    .line 237
    .local v2, "w1":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v3

    .line 238
    .local v3, "w2":I
    const v4, 0x7fffffff

    and-int v5, v2, v4

    .line 239
    .local v5, "streamId":I
    and-int/2addr v4, v3

    int-to-long v6, v4

    .line 240
    .local v6, "increment":J
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_23

    .line 241
    invoke-interface {p1, v5, v6, v7}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    .line 242
    return-void

    .line 240
    :cond_23
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v0, "windowSizeIncrement was 0"

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 235
    .end local v2    # "w1":I
    .end local v3    # "w2":I
    .end local v5    # "streamId":I
    .end local v6    # "increment":J
    :cond_32
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->close()V

    .line 285
    return-void
.end method

.method public blacklist nextFrame(Lcom/android/okhttp/internal/framed/FrameReader$Handler;)Z
    .registers 13
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v1

    .line 132
    .local v1, "w1":I
    iget-object v2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_7e

    .line 135
    .local v2, "w2":I
    nop

    .line 137
    const/high16 v3, -0x80000000

    and-int/2addr v3, v1

    const/4 v4, 0x1

    if-eqz v3, :cond_16

    move v3, v4

    goto :goto_17

    :cond_16
    move v3, v0

    .line 138
    .local v3, "control":Z
    :goto_17
    const/high16 v5, -0x1000000

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x18

    .line 139
    .local v5, "flags":I
    const v6, 0xffffff

    and-int/2addr v6, v2

    .line 141
    .local v6, "length":I
    if-eqz v3, :cond_6f

    .line 142
    const/high16 v0, 0x7fff0000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    .line 143
    .local v0, "version":I
    const v7, 0xffff

    and-int/2addr v7, v1

    .line 145
    .local v7, "type":I
    const/4 v8, 0x3

    if-ne v0, v8, :cond_58

    .line 149
    packed-switch v7, :pswitch_data_80

    .line 183
    :pswitch_31
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v9, v6

    invoke-interface {v8, v9, v10}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 184
    return v4

    .line 179
    :pswitch_38
    invoke-direct {p0, p1, v5, v6}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readWindowUpdate(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 180
    return v4

    .line 175
    :pswitch_3c
    invoke-direct {p0, p1, v5, v6}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readHeaders(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 176
    return v4

    .line 171
    :pswitch_40
    invoke-direct {p0, p1, v5, v6}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readGoAway(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 172
    return v4

    .line 167
    :pswitch_44
    invoke-direct {p0, p1, v5, v6}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readPing(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 168
    return v4

    .line 163
    :pswitch_48
    invoke-direct {p0, p1, v5, v6}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readSettings(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 164
    return v4

    .line 159
    :pswitch_4c
    invoke-direct {p0, p1, v5, v6}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readRstStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 160
    return v4

    .line 155
    :pswitch_50
    invoke-direct {p0, p1, v5, v6}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readSynReply(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 156
    return v4

    .line 151
    :pswitch_54
    invoke-direct {p0, p1, v5, v6}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readSynStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 152
    return v4

    .line 146
    :cond_58
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "version != 3: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 187
    .end local v0    # "version":I
    .end local v7    # "type":I
    :cond_6f
    const v7, 0x7fffffff

    and-int/2addr v7, v1

    .line 188
    .local v7, "streamId":I
    and-int/lit8 v8, v5, 0x1

    if-eqz v8, :cond_78

    move v0, v4

    .line 189
    .local v0, "inFinished":Z
    :cond_78
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p1, v0, v7, v8, v6}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->data(ZILcom/android/okhttp/okio/BufferedSource;I)V

    .line 190
    return v4

    .line 133
    .end local v0    # "inFinished":Z
    .end local v1    # "w1":I
    .end local v2    # "w2":I
    .end local v3    # "control":Z
    .end local v5    # "flags":I
    .end local v6    # "length":I
    .end local v7    # "streamId":I
    :catch_7e
    move-exception v1

    .line 134
    .local v1, "e":Ljava/io/IOException;
    return v0

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_31
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
    .end packed-switch
.end method

.method public blacklist readConnectionPreface()V
    .registers 1

    .line 121
    return-void
.end method

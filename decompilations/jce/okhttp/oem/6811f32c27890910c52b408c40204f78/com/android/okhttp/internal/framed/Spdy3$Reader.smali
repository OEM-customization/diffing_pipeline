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
.field private final client:Z

.field private final headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

.field private final source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/BufferedSource;Z)V
    .registers 5
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "client"    # Z

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 114
    new-instance v0, Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;-><init>(Lcom/android/okhttp/okio/BufferedSource;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    .line 115
    iput-boolean p2, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->client:Z

    .line 116
    return-void
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
    .line 278
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readGoAway(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 11
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 250
    const/16 v3, 0x8

    if-eq p3, v3, :cond_16

    const-string/jumbo v3, "TYPE_GOAWAY length: %d != 8"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 251
    :cond_16
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int v2, v3, v4

    .line 252
    .local v2, "lastGoodStreamId":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v1

    .line 253
    .local v1, "errorCodeInt":I
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/ErrorCode;->fromSpdyGoAway(I)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    .line 254
    .local v0, "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    if-nez v0, :cond_3d

    .line 255
    const-string/jumbo v3, "TYPE_GOAWAY unexpected error code: %d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 257
    :cond_3d
    sget-object v3, Lcom/android/okhttp/okio/ByteString;->EMPTY:Lcom/android/okhttp/okio/ByteString;

    invoke-interface {p1, v2, v0, v3}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->goAway(ILcom/android/okhttp/internal/framed/ErrorCode;Lcom/android/okhttp/okio/ByteString;)V

    .line 258
    return-void
.end method

.method private readHeaders(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 12
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v7

    .line 227
    .local v7, "w1":I
    const v0, 0x7fffffff

    and-int v3, v7, v0

    .line 228
    .local v3, "streamId":I
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    add-int/lit8 v2, p3, -0x4

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v5

    .line 229
    .local v5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    sget-object v6, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    const/4 v4, -0x1

    move-object v0, p1

    move v2, v1

    invoke-interface/range {v0 .. v6}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V

    .line 230
    return-void
.end method

.method private readPing(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 10
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 243
    const/4 v4, 0x4

    if-eq p3, v4, :cond_15

    const-string/jumbo v4, "TYPE_PING length: %d != 4"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 244
    :cond_15
    iget-object v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v1

    .line 245
    .local v1, "id":I
    iget-boolean v4, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->client:Z

    and-int/lit8 v5, v1, 0x1

    if-ne v5, v2, :cond_28

    :goto_21
    if-ne v4, v2, :cond_2a

    const/4 v0, 0x1

    .line 246
    .local v0, "ack":Z
    :goto_24
    invoke-interface {p1, v0, v1, v3}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->ping(ZII)V

    .line 247
    return-void

    .end local v0    # "ack":Z
    :cond_28
    move v2, v3

    .line 245
    goto :goto_21

    :cond_2a
    const/4 v0, 0x0

    .restart local v0    # "ack":Z
    goto :goto_24
.end method

.method private readRstStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 11
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 215
    const/16 v3, 0x8

    if-eq p3, v3, :cond_16

    const-string/jumbo v3, "TYPE_RST_STREAM length: %d != 8"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 216
    :cond_16
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int v2, v3, v4

    .line 217
    .local v2, "streamId":I
    iget-object v3, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v1

    .line 218
    .local v1, "errorCodeInt":I
    invoke-static {v1}, Lcom/android/okhttp/internal/framed/ErrorCode;->fromSpdy3Rst(I)Lcom/android/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    .line 219
    .local v0, "errorCode":Lcom/android/okhttp/internal/framed/ErrorCode;
    if-nez v0, :cond_3d

    .line 220
    const-string/jumbo v3, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 222
    :cond_3d
    invoke-interface {p1, v2, v0}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->rstStream(ILcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 223
    return-void
.end method

.method private readSettings(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 16
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 261
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v8}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v4

    .line 262
    .local v4, "numberOfEntries":I
    mul-int/lit8 v8, v4, 0x8

    add-int/lit8 v8, v8, 0x4

    if-eq p3, v8, :cond_25

    .line 263
    const-string/jumbo v8, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v8

    throw v8

    .line 265
    :cond_25
    new-instance v5, Lcom/android/okhttp/internal/framed/Settings;

    invoke-direct {v5}, Lcom/android/okhttp/internal/framed/Settings;-><init>()V

    .line 266
    .local v5, "settings":Lcom/android/okhttp/internal/framed/Settings;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    if-ge v1, v4, :cond_49

    .line 267
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v8}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v7

    .line 268
    .local v7, "w1":I
    iget-object v8, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v8}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v6

    .line 269
    .local v6, "value":I
    const/high16 v8, -0x1000000

    and-int/2addr v8, v7

    ushr-int/lit8 v3, v8, 0x18

    .line 270
    .local v3, "idFlags":I
    const v8, 0xffffff

    and-int v2, v7, v8

    .line 271
    .local v2, "id":I
    invoke-virtual {v5, v2, v3, v6}, Lcom/android/okhttp/internal/framed/Settings;->set(III)Lcom/android/okhttp/internal/framed/Settings;

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 273
    .end local v2    # "id":I
    .end local v3    # "idFlags":I
    .end local v6    # "value":I
    .end local v7    # "w1":I
    :cond_49
    and-int/lit8 v8, p2, 0x1

    if-eqz v8, :cond_52

    const/4 v0, 0x1

    .line 274
    .local v0, "clearPrevious":Z
    :goto_4e
    invoke-interface {p1, v0, v5}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->settings(ZLcom/android/okhttp/internal/framed/Settings;)V

    .line 275
    return-void

    .line 273
    .end local v0    # "clearPrevious":Z
    :cond_52
    const/4 v0, 0x0

    .restart local v0    # "clearPrevious":Z
    goto :goto_4e
.end method

.method private readSynReply(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 12
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v7

    .line 208
    .local v7, "w1":I
    const v0, 0x7fffffff

    and-int v3, v7, v0

    .line 209
    .local v3, "streamId":I
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    add-int/lit8 v4, p3, -0x4

    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v5

    .line 210
    .local v5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_21

    const/4 v2, 0x1

    .line 211
    .local v2, "inFinished":Z
    :goto_19
    sget-object v6, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

    const/4 v4, -0x1

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V

    .line 212
    return-void

    .line 210
    .end local v2    # "inFinished":Z
    :cond_21
    const/4 v2, 0x0

    .restart local v2    # "inFinished":Z
    goto :goto_19
.end method

.method private readSynStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 13
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v6, 0x7fffffff

    .line 193
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v7

    .line 194
    .local v7, "w1":I
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v8

    .line 195
    .local v8, "w2":I
    and-int v3, v7, v6

    .line 196
    .local v3, "streamId":I
    and-int v4, v8, v6

    .line 197
    .local v4, "associatedStreamId":I
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->readShort()S

    .line 198
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    add-int/lit8 v6, p3, -0xa

    invoke-virtual {v0, v6}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v5

    .line 200
    .local v5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_31

    const/4 v2, 0x1

    .line 201
    .local v2, "inFinished":Z
    :goto_25
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_33

    const/4 v1, 0x1

    .line 203
    .local v1, "outFinished":Z
    :goto_2a
    sget-object v6, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lcom/android/okhttp/internal/framed/HeadersMode;

    move-object v0, p1

    .line 202
    invoke-interface/range {v0 .. v6}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/android/okhttp/internal/framed/HeadersMode;)V

    .line 204
    return-void

    .line 200
    .end local v1    # "outFinished":Z
    .end local v2    # "inFinished":Z
    :cond_31
    const/4 v2, 0x0

    .restart local v2    # "inFinished":Z
    goto :goto_25

    .line 201
    :cond_33
    const/4 v1, 0x0

    .restart local v1    # "outFinished":Z
    goto :goto_2a
.end method

.method private readWindowUpdate(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V
    .registers 14
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v6, 0x7fffffff

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 233
    const/16 v5, 0x8

    if-eq p3, v5, :cond_19

    const-string/jumbo v5, "TYPE_WINDOW_UPDATE length: %d != 8"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 234
    :cond_19
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v3

    .line 235
    .local v3, "w1":I
    iget-object v5, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v4

    .line 236
    .local v4, "w2":I
    and-int v2, v3, v6

    .line 237
    .local v2, "streamId":I
    and-int v5, v4, v6

    int-to-long v0, v5

    .line 238
    .local v0, "increment":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_40

    const-string/jumbo v5, "windowSizeIncrement was 0"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 239
    :cond_40
    invoke-interface {p1, v2, v0, v1}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    .line 240
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
    .line 282
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->headerBlockReader:Lcom/android/okhttp/internal/framed/NameValueBlockReader;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/NameValueBlockReader;->close()V

    .line 283
    return-void
.end method

.method public nextFrame(Lcom/android/okhttp/internal/framed/FrameReader$Handler;)Z
    .registers 16
    .param p1, "handler"    # Lcom/android/okhttp/internal/framed/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 129
    :try_start_2
    iget-object v10, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v10}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I

    move-result v8

    .line 130
    .local v8, "w1":I
    iget-object v10, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v10}, Lcom/android/okhttp/okio/BufferedSource;->readInt()I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_47

    move-result v9

    .line 135
    .local v9, "w2":I
    const/high16 v10, -0x80000000

    and-int/2addr v10, v8

    if-eqz v10, :cond_49

    const/4 v0, 0x1

    .line 136
    .local v0, "control":Z
    :goto_14
    const/high16 v10, -0x1000000

    and-int/2addr v10, v9

    ushr-int/lit8 v2, v10, 0x18

    .line 137
    .local v2, "flags":I
    const v10, 0xffffff

    and-int v4, v9, v10

    .line 139
    .local v4, "length":I
    if-eqz v0, :cond_75

    .line 140
    const/high16 v10, 0x7fff0000

    and-int/2addr v10, v8

    ushr-int/lit8 v7, v10, 0x10

    .line 141
    .local v7, "version":I
    const v10, 0xffff

    and-int v6, v8, v10

    .line 143
    .local v6, "type":I
    const/4 v10, 0x3

    if-eq v7, v10, :cond_4b

    .line 144
    new-instance v10, Ljava/net/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "version != 3: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 131
    .end local v0    # "control":Z
    .end local v2    # "flags":I
    .end local v4    # "length":I
    .end local v6    # "type":I
    .end local v7    # "version":I
    .end local v8    # "w1":I
    .end local v9    # "w2":I
    :catch_47
    move-exception v1

    .line 132
    .local v1, "e":Ljava/io/IOException;
    return v12

    .line 135
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v8    # "w1":I
    .restart local v9    # "w2":I
    :cond_49
    const/4 v0, 0x0

    .restart local v0    # "control":Z
    goto :goto_14

    .line 147
    .restart local v2    # "flags":I
    .restart local v4    # "length":I
    .restart local v6    # "type":I
    .restart local v7    # "version":I
    :cond_4b
    packed-switch v6, :pswitch_data_88

    .line 181
    :pswitch_4e
    iget-object v10, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    int-to-long v12, v4

    invoke-interface {v10, v12, v13}, Lcom/android/okhttp/okio/BufferedSource;->skip(J)V

    .line 182
    return v11

    .line 149
    :pswitch_55
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readSynStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 150
    return v11

    .line 153
    :pswitch_59
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readSynReply(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 154
    return v11

    .line 157
    :pswitch_5d
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readRstStream(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 158
    return v11

    .line 161
    :pswitch_61
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readSettings(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 162
    return v11

    .line 165
    :pswitch_65
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readPing(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 166
    return v11

    .line 169
    :pswitch_69
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readGoAway(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 170
    return v11

    .line 173
    :pswitch_6d
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readHeaders(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 174
    return v11

    .line 177
    :pswitch_71
    invoke-direct {p0, p1, v2, v4}, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->readWindowUpdate(Lcom/android/okhttp/internal/framed/FrameReader$Handler;II)V

    .line 178
    return v11

    .line 185
    .end local v6    # "type":I
    .end local v7    # "version":I
    :cond_75
    const v10, 0x7fffffff

    and-int v5, v8, v10

    .line 186
    .local v5, "streamId":I
    and-int/lit8 v10, v2, 0x1

    if-eqz v10, :cond_85

    const/4 v3, 0x1

    .line 187
    .local v3, "inFinished":Z
    :goto_7f
    iget-object v10, p0, Lcom/android/okhttp/internal/framed/Spdy3$Reader;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {p1, v3, v5, v10, v4}, Lcom/android/okhttp/internal/framed/FrameReader$Handler;->data(ZILcom/android/okhttp/okio/BufferedSource;I)V

    .line 188
    return v11

    .line 186
    .end local v3    # "inFinished":Z
    :cond_85
    const/4 v3, 0x0

    .restart local v3    # "inFinished":Z
    goto :goto_7f

    .line 147
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_55
        :pswitch_59
        :pswitch_5d
        :pswitch_61
        :pswitch_4e
        :pswitch_65
        :pswitch_69
        :pswitch_6d
        :pswitch_71
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .registers 1

    .prologue
    .line 119
    return-void
.end method

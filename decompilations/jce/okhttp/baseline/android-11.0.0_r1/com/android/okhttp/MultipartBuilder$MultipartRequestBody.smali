.class final Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;
.super Lcom/android/okhttp/RequestBody;
.source "MultipartBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/MultipartBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultipartRequestBody"
.end annotation


# instance fields
.field private final blacklist boundary:Lcom/android/okhttp/okio/ByteString;

.field private blacklist contentLength:J

.field private final blacklist contentType:Lcom/android/okhttp/MediaType;

.field private final blacklist partBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/RequestBody;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist partHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/Headers;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1, "type"    # Lcom/android/okhttp/MediaType;
    .param p2, "boundary"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/MediaType;",
            "Lcom/android/okhttp/okio/ByteString;",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Headers;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/okhttp/RequestBody;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p3, "partHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Headers;>;"
    .local p4, "partBodies":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/RequestBody;>;"
    invoke-direct {p0}, Lcom/android/okhttp/RequestBody;-><init>()V

    .line 203
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentLength:J

    .line 207
    if-eqz p1, :cond_36

    .line 209
    iput-object p2, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Lcom/android/okhttp/okio/ByteString;

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentType:Lcom/android/okhttp/MediaType;

    .line 211
    invoke-static {p3}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    .line 212
    invoke-static {p4}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    .line 213
    return-void

    .line 207
    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist writeOrCountBytes(Lcom/android/okhttp/okio/BufferedSink;Z)J
    .registers 16
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p2, "countBytes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    const-wide/16 v0, 0x0

    .line 234
    .local v0, "byteCount":J
    const/4 v2, 0x0

    .line 235
    .local v2, "byteCountBuffer":Lcom/android/okhttp/okio/Buffer;
    if-eqz p2, :cond_c

    .line 236
    new-instance v3, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v3}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    move-object v2, v3

    move-object p1, v3

    .line 239
    :cond_c
    const/4 v3, 0x0

    .local v3, "p":I
    iget-object v4, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "partCount":I
    :goto_13
    if-ge v3, v4, :cond_c1

    .line 240
    iget-object v5, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/okhttp/Headers;

    .line 241
    .local v5, "headers":Lcom/android/okhttp/Headers;
    iget-object v6, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/okhttp/RequestBody;

    .line 243
    .local v6, "body":Lcom/android/okhttp/RequestBody;
    # getter for: Lcom/android/okhttp/MultipartBuilder;->DASHDASH:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$000()[B

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 244
    iget-object v7, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Lcom/android/okhttp/okio/ByteString;

    invoke-interface {p1, v7}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    .line 245
    # getter for: Lcom/android/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v7

    invoke-interface {p1, v7}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 247
    if-eqz v5, :cond_63

    .line 248
    const/4 v7, 0x0

    .local v7, "h":I
    invoke-virtual {v5}, Lcom/android/okhttp/Headers;->size()I

    move-result v8

    .local v8, "headerCount":I
    :goto_3f
    if-ge v7, v8, :cond_63

    .line 249
    invoke-virtual {v5, v7}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v9

    .line 250
    # getter for: Lcom/android/okhttp/MultipartBuilder;->COLONSPACE:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$200()[B

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v9

    .line 251
    invoke-virtual {v5, v7}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v9

    .line 252
    # getter for: Lcom/android/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 248
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    .line 256
    .end local v7    # "h":I
    .end local v8    # "headerCount":I
    :cond_63
    invoke-virtual {v6}, Lcom/android/okhttp/RequestBody;->contentType()Lcom/android/okhttp/MediaType;

    move-result-object v7

    .line 257
    .local v7, "contentType":Lcom/android/okhttp/MediaType;
    if-eqz v7, :cond_7e

    .line 258
    const-string v8, "Content-Type: "

    invoke-interface {p1, v8}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v8

    .line 259
    invoke-virtual {v7}, Lcom/android/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v8

    .line 260
    # getter for: Lcom/android/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 263
    :cond_7e
    invoke-virtual {v6}, Lcom/android/okhttp/RequestBody;->contentLength()J

    move-result-wide v8

    .line 264
    .local v8, "contentLength":J
    const-wide/16 v10, -0x1

    cmp-long v12, v8, v10

    if-eqz v12, :cond_9a

    .line 265
    const-string v10, "Content-Length: "

    invoke-interface {p1, v10}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v10

    .line 266
    invoke-interface {v10, v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v10

    .line 267
    # getter for: Lcom/android/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    goto :goto_a0

    .line 268
    :cond_9a
    if-eqz p2, :cond_a0

    .line 270
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->clear()V

    .line 271
    return-wide v10

    .line 274
    :cond_a0
    :goto_a0
    # getter for: Lcom/android/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v10

    invoke-interface {p1, v10}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 276
    if-eqz p2, :cond_ab

    .line 277
    add-long/2addr v0, v8

    goto :goto_b6

    .line 279
    :cond_ab
    iget-object v10, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/okhttp/RequestBody;

    invoke-virtual {v10, p1}, Lcom/android/okhttp/RequestBody;->writeTo(Lcom/android/okhttp/okio/BufferedSink;)V

    .line 282
    :goto_b6
    # getter for: Lcom/android/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v10

    invoke-interface {p1, v10}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 239
    .end local v5    # "headers":Lcom/android/okhttp/Headers;
    .end local v6    # "body":Lcom/android/okhttp/RequestBody;
    .end local v7    # "contentType":Lcom/android/okhttp/MediaType;
    .end local v8    # "contentLength":J
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13

    .line 285
    .end local v3    # "p":I
    .end local v4    # "partCount":I
    :cond_c1
    # getter for: Lcom/android/okhttp/MultipartBuilder;->DASHDASH:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$000()[B

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 286
    iget-object v3, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Lcom/android/okhttp/okio/ByteString;

    invoke-interface {p1, v3}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    .line 287
    # getter for: Lcom/android/okhttp/MultipartBuilder;->DASHDASH:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$000()[B

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 288
    # getter for: Lcom/android/okhttp/MultipartBuilder;->CRLF:[B
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->access$100()[B

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 290
    if-eqz p2, :cond_e5

    .line 291
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 292
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->clear()V

    .line 295
    :cond_e5
    return-wide v0
.end method


# virtual methods
.method public blacklist contentLength()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-wide v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentLength:J

    .line 221
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    return-wide v0

    .line 222
    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->writeOrCountBytes(Lcom/android/okhttp/okio/BufferedSink;Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentLength:J

    return-wide v2
.end method

.method public blacklist contentType()Lcom/android/okhttp/MediaType;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentType:Lcom/android/okhttp/MediaType;

    return-object v0
.end method

.method public blacklist writeTo(Lcom/android/okhttp/okio/BufferedSink;)V
    .registers 3
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->writeOrCountBytes(Lcom/android/okhttp/okio/BufferedSink;Z)J

    .line 300
    return-void
.end method

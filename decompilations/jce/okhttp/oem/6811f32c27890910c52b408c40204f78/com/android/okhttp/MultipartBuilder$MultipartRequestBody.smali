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
.field private final boundary:Lcom/android/okhttp/okio/ByteString;

.field private contentLength:J

.field private final contentType:Lcom/android/okhttp/MediaType;

.field private final partBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/RequestBody;",
            ">;"
        }
    .end annotation
.end field

.field private final partHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Headers;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1, "type"    # Lcom/android/okhttp/MediaType;
    .param p2, "boundary"    # Lcom/android/okhttp/okio/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/MediaType;",
            "Lcom/android/okhttp/okio/ByteString;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Headers;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/RequestBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p3, "partHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Headers;>;"
    .local p4, "partBodies":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/RequestBody;>;"
    invoke-direct {p0}, Lcom/android/okhttp/RequestBody;-><init>()V

    .line 201
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentLength:J

    .line 205
    if-nez p1, :cond_12

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_12
    iput-object p2, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Lcom/android/okhttp/okio/ByteString;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentType:Lcom/android/okhttp/MediaType;

    .line 209
    invoke-static {p3}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    .line 210
    invoke-static {p4}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    .line 211
    return-void
.end method

.method private writeOrCountBytes(Lcom/android/okhttp/okio/BufferedSink;Z)J
    .registers 17
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .param p2, "countBytes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const-wide/16 v2, 0x0

    .line 232
    .local v2, "byteCount":J
    const/4 v1, 0x0

    .line 233
    .local v1, "byteCountBuffer":Lcom/android/okhttp/okio/Buffer;
    if-eqz p2, :cond_b

    .line 234
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    .end local v1    # "byteCountBuffer":Lcom/android/okhttp/okio/Buffer;
    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .local v1, "byteCountBuffer":Lcom/android/okhttp/okio/Buffer;
    move-object p1, v1

    .line 237
    .end local v1    # "byteCountBuffer":Lcom/android/okhttp/okio/Buffer;
    :cond_b
    const/4 v10, 0x0

    .local v10, "p":I
    iget-object v12, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "partCount":I
    :goto_12
    if-ge v10, v11, :cond_c3

    .line 238
    iget-object v12, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partHeaders:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/okhttp/Headers;

    .line 239
    .local v9, "headers":Lcom/android/okhttp/Headers;
    iget-object v12, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/RequestBody;

    .line 241
    .local v0, "body":Lcom/android/okhttp/RequestBody;
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get2()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 242
    iget-object v12, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Lcom/android/okhttp/okio/ByteString;

    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    .line 243
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get1()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 245
    if-eqz v9, :cond_62

    .line 246
    const/4 v7, 0x0

    .local v7, "h":I
    invoke-virtual {v9}, Lcom/android/okhttp/Headers;->size()I

    move-result v8

    .local v8, "headerCount":I
    :goto_3e
    if-ge v7, v8, :cond_62

    .line 247
    invoke-virtual {v9, v7}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v12

    .line 248
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get0()[B

    move-result-object v13

    .line 247
    invoke-interface {v12, v13}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v12

    .line 249
    invoke-virtual {v9, v7}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v13

    .line 247
    invoke-interface {v12, v13}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v12

    .line 250
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get1()[B

    move-result-object v13

    .line 247
    invoke-interface {v12, v13}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 246
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e

    .line 254
    .end local v7    # "h":I
    .end local v8    # "headerCount":I
    :cond_62
    invoke-virtual {v0}, Lcom/android/okhttp/RequestBody;->contentType()Lcom/android/okhttp/MediaType;

    move-result-object v6

    .line 255
    .local v6, "contentType":Lcom/android/okhttp/MediaType;
    if-eqz v6, :cond_7e

    .line 256
    const-string/jumbo v12, "Content-Type: "

    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v12

    .line 257
    invoke-virtual {v6}, Lcom/android/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v13

    .line 256
    invoke-interface {v12, v13}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v12

    .line 258
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get1()[B

    move-result-object v13

    .line 256
    invoke-interface {v12, v13}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 261
    :cond_7e
    invoke-virtual {v0}, Lcom/android/okhttp/RequestBody;->contentLength()J

    move-result-wide v4

    .line 262
    .local v4, "contentLength":J
    const-wide/16 v12, -0x1

    cmp-long v12, v4, v12

    if-eqz v12, :cond_af

    .line 263
    const-string/jumbo v12, "Content-Length: "

    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v12

    invoke-interface {v12, v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v12

    .line 265
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get1()[B

    move-result-object v13

    .line 263
    invoke-interface {v12, v13}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 272
    :cond_9a
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get1()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 274
    if-eqz p2, :cond_b7

    .line 275
    add-long/2addr v2, v4

    .line 280
    :goto_a4
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get1()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 237
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_12

    .line 266
    :cond_af
    if-eqz p2, :cond_9a

    .line 268
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->clear()V

    .line 269
    const-wide/16 v12, -0x1

    return-wide v12

    .line 277
    :cond_b7
    iget-object v12, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->partBodies:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/okhttp/RequestBody;

    invoke-virtual {v12, p1}, Lcom/android/okhttp/RequestBody;->writeTo(Lcom/android/okhttp/okio/BufferedSink;)V

    goto :goto_a4

    .line 283
    .end local v0    # "body":Lcom/android/okhttp/RequestBody;
    .end local v4    # "contentLength":J
    .end local v6    # "contentType":Lcom/android/okhttp/MediaType;
    .end local v9    # "headers":Lcom/android/okhttp/Headers;
    :cond_c3
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get2()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 284
    iget-object v12, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->boundary:Lcom/android/okhttp/okio/ByteString;

    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    .line 285
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get2()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 286
    invoke-static {}, Lcom/android/okhttp/MultipartBuilder;->-get1()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lcom/android/okhttp/okio/BufferedSink;->write([B)Lcom/android/okhttp/okio/BufferedSink;

    .line 288
    if-eqz p2, :cond_e7

    .line 289
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v12

    add-long/2addr v2, v12

    .line 290
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->clear()V

    .line 293
    :cond_e7
    return-wide v2
.end method


# virtual methods
.method public contentLength()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentLength:J

    .line 219
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    return-wide v0

    .line 220
    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->writeOrCountBytes(Lcom/android/okhttp/okio/BufferedSink;Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentLength:J

    return-wide v2
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->contentType:Lcom/android/okhttp/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/android/okhttp/okio/BufferedSink;)V
    .registers 3
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/MultipartBuilder$MultipartRequestBody;->writeOrCountBytes(Lcom/android/okhttp/okio/BufferedSink;Z)J

    .line 298
    return-void
.end method

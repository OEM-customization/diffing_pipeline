.class public abstract Lcom/android/okhttp/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private greylist-max-o reader:Ljava/io/Reader;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o charset()Ljava/nio/charset/Charset;
    .registers 3

    .line 91
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->contentType()Lcom/android/okhttp/MediaType;

    move-result-object v0

    .line 92
    .local v0, "contentType":Lcom/android/okhttp/MediaType;
    sget-object v1, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Lcom/android/okhttp/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    :cond_c
    return-object v1
.end method

.method public static greylist-max-o create(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)Lcom/android/okhttp/ResponseBody;
    .registers 6
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "contentLength"    # J
    .param p3, "content"    # Lcom/android/okhttp/okio/BufferedSource;

    .line 125
    if-eqz p3, :cond_8

    .line 126
    new-instance v0, Lcom/android/okhttp/ResponseBody$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/okhttp/ResponseBody$1;-><init>(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)V

    return-object v0

    .line 125
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o create(Lcom/android/okhttp/MediaType;Ljava/lang/String;)Lcom/android/okhttp/ResponseBody;
    .registers 6
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "content"    # Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 105
    .local v0, "charset":Ljava/nio/charset/Charset;
    if-eqz p0, :cond_21

    .line 106
    invoke-virtual {p0}, Lcom/android/okhttp/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 107
    if-nez v0, :cond_21

    .line 108
    sget-object v0, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object p0

    .line 112
    :cond_21
    new-instance v1, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v1}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/android/okhttp/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    .line 113
    .local v1, "buffer":Lcom/android/okhttp/okio/Buffer;
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v1}, Lcom/android/okhttp/ResponseBody;->create(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)Lcom/android/okhttp/ResponseBody;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/ResponseBody;
    .registers 5
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "content"    # [B

    .line 118
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/okhttp/okio/Buffer;->write([B)Lcom/android/okhttp/okio/Buffer;

    move-result-object v0

    .line 119
    .local v0, "buffer":Lcom/android/okhttp/okio/Buffer;
    array-length v1, p1

    int-to-long v1, v1

    invoke-static {p0, v1, v2, v0}, Lcom/android/okhttp/ResponseBody;->create(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)Lcom/android/okhttp/ResponseBody;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final greylist-max-o byteStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o bytes()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->contentLength()J

    move-result-wide v0

    .line 54
    .local v0, "contentLength":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_32

    .line 58
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v2

    .line 61
    .local v2, "source":Lcom/android/okhttp/okio/BufferedSource;
    :try_start_f
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSource;->readByteArray()[B

    move-result-object v3
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_2d

    .line 63
    .local v3, "bytes":[B
    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 64
    nop

    .line 65
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2c

    array-length v4, v3

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_24

    goto :goto_2c

    .line 66
    :cond_24
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Content-Length and stream length disagree"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 68
    :cond_2c
    :goto_2c
    return-object v3

    .line 63
    .end local v3    # "bytes":[B
    :catchall_2d
    move-exception v3

    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 64
    throw v3

    .line 55
    .end local v2    # "source":Lcom/android/okhttp/okio/BufferedSource;
    :cond_32
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final greylist-max-o charStream()Ljava/io/Reader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/ResponseBody;->reader:Ljava/io/Reader;

    .line 78
    .local v0, "r":Ljava/io/Reader;
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_15

    :cond_6
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v1, p0, Lcom/android/okhttp/ResponseBody;->reader:Ljava/io/Reader;

    :goto_15
    return-object v1
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->source()Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->close()V

    .line 97
    return-void
.end method

.method public abstract greylist-max-o contentLength()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o contentType()Lcom/android/okhttp/MediaType;
.end method

.method public abstract greylist-max-o source()Lcom/android/okhttp/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final greylist-max-o string()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/okhttp/ResponseBody;->bytes()[B

    move-result-object v1

    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

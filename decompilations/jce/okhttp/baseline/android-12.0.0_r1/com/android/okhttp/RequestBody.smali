.class public abstract Lcom/android/okhttp/RequestBody;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o create(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/RequestBody;
    .registers 3
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "content"    # Lcom/android/okhttp/okio/ByteString;

    .line 65
    new-instance v0, Lcom/android/okhttp/RequestBody$1;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/RequestBody$1;-><init>(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;)V

    return-object v0
.end method

.method public static greylist-max-o create(Lcom/android/okhttp/MediaType;Ljava/io/File;)Lcom/android/okhttp/RequestBody;
    .registers 4
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "file"    # Ljava/io/File;

    .line 107
    if-eqz p1, :cond_8

    .line 109
    new-instance v0, Lcom/android/okhttp/RequestBody$3;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/RequestBody$3;-><init>(Lcom/android/okhttp/MediaType;Ljava/io/File;)V

    return-object v0

    .line 107
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o create(Lcom/android/okhttp/MediaType;Ljava/lang/String;)Lcom/android/okhttp/RequestBody;
    .registers 5
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "content"    # Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 52
    .local v0, "charset":Ljava/nio/charset/Charset;
    if-eqz p0, :cond_21

    .line 53
    invoke-virtual {p0}, Lcom/android/okhttp/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 54
    if-nez v0, :cond_21

    .line 55
    sget-object v0, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object p0

    .line 59
    :cond_21
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 60
    .local v1, "bytes":[B
    invoke-static {p0, v1}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;
    .registers 4
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "content"    # [B

    .line 82
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[BII)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o create(Lcom/android/okhttp/MediaType;[BII)Lcom/android/okhttp/RequestBody;
    .registers 11
    .param p0, "contentType"    # Lcom/android/okhttp/MediaType;
    .param p1, "content"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 88
    if-eqz p1, :cond_f

    .line 89
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 90
    new-instance v0, Lcom/android/okhttp/RequestBody$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/okhttp/RequestBody$2;-><init>(Lcom/android/okhttp/MediaType;I[BI)V

    return-object v0

    .line 88
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract greylist-max-o contentType()Lcom/android/okhttp/MediaType;
.end method

.method public abstract greylist-max-o writeTo(Lcom/android/okhttp/okio/BufferedSink;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

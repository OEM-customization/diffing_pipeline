.class Lcom/android/okhttp/RequestBody$3;
.super Lcom/android/okhttp/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;Ljava/io/File;)Lcom/android/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$contentType:Lcom/android/okhttp/MediaType;

.field final synthetic blacklist val$file:Ljava/io/File;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/MediaType;Ljava/io/File;)V
    .registers 3

    .line 109
    iput-object p1, p0, Lcom/android/okhttp/RequestBody$3;->val$contentType:Lcom/android/okhttp/MediaType;

    iput-object p2, p0, Lcom/android/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist contentLength()J
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist contentType()Lcom/android/okhttp/MediaType;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$3;->val$contentType:Lcom/android/okhttp/MediaType;

    return-object v0
.end method

.method public blacklist writeTo(Lcom/android/okhttp/okio/BufferedSink;)V
    .registers 4
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "source":Lcom/android/okhttp/okio/Source;
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;

    move-result-object v1

    move-object v0, v1

    .line 122
    invoke-interface {p1, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeAll(Lcom/android/okhttp/okio/Source;)J
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    .line 124
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 125
    nop

    .line 126
    return-void

    .line 124
    :catchall_10
    move-exception v1

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 125
    throw v1
.end method

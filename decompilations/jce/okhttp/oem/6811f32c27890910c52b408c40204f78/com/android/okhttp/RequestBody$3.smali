.class final Lcom/android/okhttp/RequestBody$3;
.super Lcom/android/okhttp/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;Ljava/io/File;)Lcom/android/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentType:Lcom/android/okhttp/MediaType;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/okhttp/MediaType;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/RequestBody$3;->val$contentType:Lcom/android/okhttp/MediaType;

    iput-object p2, p0, Lcom/android/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    .line 105
    invoke-direct {p0}, Lcom/android/okhttp/RequestBody;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$3;->val$contentType:Lcom/android/okhttp/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/android/okhttp/okio/BufferedSink;)V
    .registers 4
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "source":Lcom/android/okhttp/okio/Source;
    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/RequestBody$3;->val$file:Ljava/io/File;

    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    .line 118
    .local v0, "source":Lcom/android/okhttp/okio/Source;
    invoke-interface {p1, v0}, Lcom/android/okhttp/okio/BufferedSink;->writeAll(Lcom/android/okhttp/okio/Source;)J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 120
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 122
    return-void

    .line 119
    .end local v0    # "source":Lcom/android/okhttp/okio/Source;
    :catchall_e
    move-exception v1

    .line 120
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 119
    throw v1
.end method

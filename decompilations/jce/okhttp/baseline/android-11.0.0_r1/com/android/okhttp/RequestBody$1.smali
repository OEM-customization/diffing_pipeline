.class Lcom/android/okhttp/RequestBody$1;
.super Lcom/android/okhttp/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$content:Lcom/android/okhttp/okio/ByteString;

.field final synthetic blacklist val$contentType:Lcom/android/okhttp/MediaType;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;)V
    .registers 3

    .line 65
    iput-object p1, p0, Lcom/android/okhttp/RequestBody$1;->val$contentType:Lcom/android/okhttp/MediaType;

    iput-object p2, p0, Lcom/android/okhttp/RequestBody$1;->val$content:Lcom/android/okhttp/okio/ByteString;

    invoke-direct {p0}, Lcom/android/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$1;->val$content:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist contentType()Lcom/android/okhttp/MediaType;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$1;->val$contentType:Lcom/android/okhttp/MediaType;

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

    .line 75
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$1;->val$content:Lcom/android/okhttp/okio/ByteString;

    invoke-interface {p1, v0}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    .line 76
    return-void
.end method

.class final Lcom/android/okhttp/RequestBody$1;
.super Lcom/android/okhttp/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/android/okhttp/okio/ByteString;

.field final synthetic val$contentType:Lcom/android/okhttp/MediaType;


# direct methods
.method constructor <init>(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/RequestBody$1;->val$contentType:Lcom/android/okhttp/MediaType;

    iput-object p2, p0, Lcom/android/okhttp/RequestBody$1;->val$content:Lcom/android/okhttp/okio/ByteString;

    .line 61
    invoke-direct {p0}, Lcom/android/okhttp/RequestBody;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$1;->val$content:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$1;->val$contentType:Lcom/android/okhttp/MediaType;

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
    .line 71
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$1;->val$content:Lcom/android/okhttp/okio/ByteString;

    invoke-interface {p1, v0}, Lcom/android/okhttp/okio/BufferedSink;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/BufferedSink;

    .line 72
    return-void
.end method

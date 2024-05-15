.class final Lcom/android/okhttp/RequestBody$2;
.super Lcom/android/okhttp/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[BII)Lcom/android/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$byteCount:I

.field final synthetic val$content:[B

.field final synthetic val$contentType:Lcom/android/okhttp/MediaType;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/android/okhttp/MediaType;I[BI)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/RequestBody$2;->val$contentType:Lcom/android/okhttp/MediaType;

    iput p2, p0, Lcom/android/okhttp/RequestBody$2;->val$byteCount:I

    iput-object p3, p0, Lcom/android/okhttp/RequestBody$2;->val$content:[B

    iput p4, p0, Lcom/android/okhttp/RequestBody$2;->val$offset:I

    .line 86
    invoke-direct {p0}, Lcom/android/okhttp/RequestBody;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .prologue
    .line 92
    iget v0, p0, Lcom/android/okhttp/RequestBody$2;->val$byteCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$2;->val$contentType:Lcom/android/okhttp/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/android/okhttp/okio/BufferedSink;)V
    .registers 5
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/okhttp/RequestBody$2;->val$content:[B

    iget v1, p0, Lcom/android/okhttp/RequestBody$2;->val$offset:I

    iget v2, p0, Lcom/android/okhttp/RequestBody$2;->val$byteCount:I

    invoke-interface {p1, v0, v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->write([BII)Lcom/android/okhttp/okio/BufferedSink;

    .line 97
    return-void
.end method

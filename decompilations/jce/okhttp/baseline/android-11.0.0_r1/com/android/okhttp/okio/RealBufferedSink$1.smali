.class Lcom/android/okhttp/okio/RealBufferedSink$1;
.super Ljava/io/OutputStream;
.source "RealBufferedSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/RealBufferedSink;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/okio/RealBufferedSink;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/RealBufferedSink;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/okhttp/okio/RealBufferedSink;

    .line 189
    iput-object p1, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->close()V

    .line 211
    return-void
.end method

.method public whitelist core-platform-api test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    # getter for: Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->access$000(Lcom/android/okhttp/okio/RealBufferedSink;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 205
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->flush()V

    .line 207
    :cond_d
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api write(I)V
    .registers 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    # getter for: Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->access$000(Lcom/android/okhttp/okio/RealBufferedSink;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 192
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 193
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    .line 194
    return-void

    .line 191
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api write([BII)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    # getter for: Lcom/android/okhttp/okio/RealBufferedSink;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->access$000(Lcom/android/okhttp/okio/RealBufferedSink;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 198
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    .line 199
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    .line 200
    return-void

    .line 197
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

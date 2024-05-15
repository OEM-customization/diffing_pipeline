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
.field final synthetic this$0:Lcom/android/okhttp/okio/RealBufferedSink;

.field private writeStart:Z


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/RealBufferedSink;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/okio/RealBufferedSink;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    .line 190
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->writeStart:Z

    .line 1
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->close()V

    .line 225
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->-get0(Lcom/android/okhttp/okio/RealBufferedSink;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 219
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->flush()V

    .line 221
    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->-get0(Lcom/android/okhttp/okio/RealBufferedSink;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_11
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 196
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    .line 197
    return-void
.end method

.method public write([BII)V
    .registers 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->-get0(Lcom/android/okhttp/okio/RealBufferedSink;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_11
    iget-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->writeStart:Z

    if-eqz v0, :cond_33

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->writeStart:Z

    .line 204
    const-class v1, Lcom/android/okhttp/okio/RealBufferedSink;

    monitor-enter v1

    .line 205
    :try_start_1b
    invoke-static {p1}, Lcom/android/okhttp/internal/cta/CtaAdapter;->isSendingPermitted([B)Z

    move-result v0

    if-nez v0, :cond_32

    .line 206
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->close()V

    .line 207
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "User Permission is denied"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_2f

    .line 204
    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_32
    monitor-exit v1

    .line 212
    :cond_33
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSink;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->write([BII)Lcom/android/okhttp/okio/Buffer;

    .line 213
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSink$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSink;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/RealBufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    .line 214
    return-void
.end method

.class Lcom/android/okhttp/okio/RealBufferedSource$1;
.super Ljava/io/InputStream;
.source "RealBufferedSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/okio/RealBufferedSource;->inputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/okio/RealBufferedSource;


# direct methods
.method constructor <init>(Lcom/android/okhttp/okio/RealBufferedSource;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/okhttp/okio/RealBufferedSource;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    .line 356
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSource;->-get0(Lcom/android/okhttp/okio/RealBufferedSource;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_11
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/RealBufferedSource;->close()V

    .line 385
    return-void
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    invoke-static {v2}, Lcom/android/okhttp/okio/RealBufferedSource;->-get0(Lcom/android/okhttp/okio/RealBufferedSource;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 359
    :cond_11
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v2, v2, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v2, v2, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_33

    .line 360
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v2, v2, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v3, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v3, v3, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    .line 361
    .local v0, "count":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_33

    const/4 v2, -0x1

    return v2

    .line 363
    .end local v0    # "count":J
    :cond_33
    iget-object v2, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v2, v2, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    return v2
.end method

.method public read([BII)I
    .registers 12
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSource;->-get0(Lcom/android/okhttp/okio/RealBufferedSource;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_11
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 370
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3a

    .line 371
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v1, v1, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v6

    .line 372
    .local v6, "count":J
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_3a

    const/4 v0, -0x1

    return v0

    .line 375
    .end local v6    # "count":J
    :cond_3a
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

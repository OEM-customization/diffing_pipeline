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
.field final synthetic blacklist this$0:Lcom/android/okhttp/okio/RealBufferedSource;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/okio/RealBufferedSource;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/okhttp/okio/RealBufferedSource;

    .line 378
    iput-object p1, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    # getter for: Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSource;->access$000(Lcom/android/okhttp/okio/RealBufferedSource;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 406
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 405
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/RealBufferedSource;->close()V

    .line 411
    return-void
.end method

.method public whitelist core-platform-api test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    # getter for: Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSource;->access$000(Lcom/android/okhttp/okio/RealBufferedSource;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 381
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    .line 382
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v1, v1, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/32 v2, 0x10000

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    .line 383
    .local v0, "count":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2b

    const/4 v2, -0x1

    return v2

    .line 385
    .end local v0    # "count":J
    :cond_2b
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 380
    :cond_36
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api read([BII)I
    .registers 11
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    # getter for: Lcom/android/okhttp/okio/RealBufferedSource;->closed:Z
    invoke-static {v0}, Lcom/android/okhttp/okio/RealBufferedSource;->access$000(Lcom/android/okhttp/okio/RealBufferedSource;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 390
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 393
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOGVV:Z

    if-eqz v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RealBufferedSource.InputStream.read(byte[], int, int) while buffer.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v1, v1, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v1, v1, Lcom/android/okhttp/okio/Buffer;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", source is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v1, v1, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratLog;->debug(Ljava/lang/String;)V

    .line 396
    :cond_39
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    iget-wide v0, v0, Lcom/android/okhttp/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5c

    .line 397
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->source:Lcom/android/okhttp/okio/Source;

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v1, v1, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    const-wide/32 v2, 0x10000

    invoke-interface {v0, v1, v2, v3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    .line 398
    .local v0, "count":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_5c

    const/4 v2, -0x1

    return v2

    .line 401
    .end local v0    # "count":J
    :cond_5c
    iget-object v0, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    iget-object v0, v0, Lcom/android/okhttp/okio/RealBufferedSource;->buffer:Lcom/android/okhttp/okio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Buffer;->read([BII)I

    move-result v0

    return v0

    .line 389
    :cond_65
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/okio/RealBufferedSource$1;->this$0:Lcom/android/okhttp/okio/RealBufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

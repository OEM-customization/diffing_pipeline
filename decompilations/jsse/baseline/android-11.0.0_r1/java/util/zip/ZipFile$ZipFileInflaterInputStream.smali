.class Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZipFileInflaterInputStream"
.end annotation


# instance fields
.field private volatile greylist-max-o closeRequested:Z

.field private greylist-max-o eof:Z

.field final synthetic blacklist this$0:Ljava/util/zip/ZipFile;

.field private final greylist-max-o zfin:Ljava/util/zip/ZipFile$ZipFileInputStream;


# direct methods
.method constructor blacklist <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile$ZipFileInputStream;Ljava/util/zip/Inflater;I)V
    .registers 5
    .param p2, "zfin"    # Ljava/util/zip/ZipFile$ZipFileInputStream;
    .param p3, "inf"    # Ljava/util/zip/Inflater;
    .param p4, "size"    # I

    .line 452
    iput-object p1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->this$0:Ljava/util/zip/ZipFile;

    .line 453
    invoke-direct {p0, p2, p3, p4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 447
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->closeRequested:Z

    .line 448
    iput-boolean p1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->eof:Z

    .line 454
    iput-object p2, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->zfin:Ljava/util/zip/ZipFile$ZipFileInputStream;

    .line 455
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

    .line 489
    iget-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->closeRequested:Z

    if-eqz v0, :cond_6

    .line 490
    const/4 v0, 0x0

    return v0

    .line 491
    :cond_6
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->zfin:Ljava/util/zip/ZipFile$ZipFileInputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile$ZipFileInputStream;->size()J

    move-result-wide v0

    iget-object v2, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 492
    .local v0, "avail":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1e

    .line 493
    const v2, 0x7fffffff

    goto :goto_1f

    :cond_1e
    long-to-int v2, v0

    .line 492
    :goto_1f
    return v2
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    iget-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->closeRequested:Z

    if-eqz v0, :cond_5

    .line 459
    return-void

    .line 460
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->closeRequested:Z

    .line 462
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 464
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->this$0:Ljava/util/zip/ZipFile;

    # getter for: Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;
    invoke-static {v0}, Ljava/util/zip/ZipFile;->access$000(Ljava/util/zip/ZipFile;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 465
    :try_start_12
    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->this$0:Ljava/util/zip/ZipFile;

    # getter for: Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;
    invoke-static {v1}, Ljava/util/zip/ZipFile;->access$000(Ljava/util/zip/ZipFile;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/Inflater;

    .line 466
    .local v1, "inf":Ljava/util/zip/Inflater;
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_27

    .line 467
    if-eqz v1, :cond_26

    .line 468
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->this$0:Ljava/util/zip/ZipFile;

    # invokes: Ljava/util/zip/ZipFile;->releaseInflater(Ljava/util/zip/Inflater;)V
    invoke-static {v0, v1}, Ljava/util/zip/ZipFile;->access$100(Ljava/util/zip/ZipFile;Ljava/util/zip/Inflater;)V

    .line 470
    :cond_26
    return-void

    .line 466
    .end local v1    # "inf":Ljava/util/zip/Inflater;
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method protected whitelist core-platform-api test-api fill()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    iget-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->eof:Z

    if-nez v0, :cond_2a

    .line 479
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->buf:[B

    iget-object v2, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->buf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->len:I

    .line 480
    iget v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    .line 481
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->buf:[B

    aput-byte v3, v0, v3

    .line 482
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->len:I

    .line 483
    iput-boolean v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->eof:Z

    .line 485
    :cond_20
    iget-object v0, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v1, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->buf:[B

    iget v2, p0, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->len:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 486
    return-void

    .line 477
    :cond_2a
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Unexpected end of ZLIB input stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist core-platform-api test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 497
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;->close()V

    .line 498
    return-void
.end method

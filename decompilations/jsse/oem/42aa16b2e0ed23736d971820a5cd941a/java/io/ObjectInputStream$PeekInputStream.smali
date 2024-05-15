.class Ljava/io/ObjectInputStream$PeekInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeekInputStream"
.end annotation


# instance fields
.field private final greylist-max-o in:Ljava/io/InputStream;

.field private greylist-max-o peekb:I

.field private blacklist totalBytesRead:J


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;

    .line 2420
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2413
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2415
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    .line 2421
    iput-object p1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    .line 2422
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2494
    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2498
    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2499
    return-void
.end method

.method public blacklist getBytesRead()J
    .registers 3

    .line 2502
    iget-wide v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    return-wide v0
.end method

.method greylist-max-o peek()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2429
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v0, :cond_5

    .line 2430
    return v0

    .line 2432
    :cond_5
    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2433
    iget-wide v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    if-ltz v0, :cond_14

    const-wide/16 v3, 0x1

    goto :goto_16

    :cond_14
    const-wide/16 v3, 0x0

    :goto_16
    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    .line 2434
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    return v0
.end method

.method public whitelist core-platform-api test-api read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2438
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v0, :cond_a

    .line 2439
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2440
    .local v0, "v":I
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2441
    return v0

    .line 2443
    .end local v0    # "v":I
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 2444
    .local v0, "nbytes":I
    iget-wide v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    if-ltz v0, :cond_17

    const-wide/16 v3, 0x1

    goto :goto_19

    :cond_17
    const-wide/16 v3, 0x0

    :goto_19
    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    .line 2445
    return v0
.end method

.method public whitelist core-platform-api test-api read([BII)I
    .registers 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2451
    if-nez p3, :cond_4

    .line 2452
    const/4 v0, 0x0

    return v0

    .line 2453
    :cond_4
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    const-wide/16 v1, 0x0

    if-gez v0, :cond_19

    .line 2454
    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 2455
    .local v0, "nbytes":I
    iget-wide v3, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    if-ltz v0, :cond_15

    int-to-long v1, v0

    :cond_15
    add-long/2addr v3, v1

    iput-wide v3, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    .line 2456
    return v0

    .line 2458
    .end local v0    # "nbytes":I
    :cond_19
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 2459
    const/4 p2, -0x1

    add-int/2addr p3, p2

    .line 2460
    iput p2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2461
    iget-object p2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p2, p1, v3, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    .line 2462
    .local p2, "nbytes":I
    iget-wide v4, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    if-ltz p2, :cond_2d

    int-to-long v1, p2

    :cond_2d
    add-long/2addr v4, v1

    iput-wide v4, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    .line 2463
    if-ltz p2, :cond_35

    add-int/lit8 v0, p2, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x1

    :goto_36
    return v0
.end method

.method greylist-max-o readFully([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2468
    const/4 v0, 0x0

    .line 2469
    .local v0, "n":I
    :goto_1
    if-ge v0, p3, :cond_15

    .line 2470
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v1

    .line 2471
    .local v1, "count":I
    if-ltz v1, :cond_f

    .line 2474
    add-int/2addr v0, v1

    .line 2475
    .end local v1    # "count":I
    goto :goto_1

    .line 2472
    .restart local v1    # "count":I
    :cond_f
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 2476
    .end local v1    # "count":I
    :cond_15
    return-void
.end method

.method public whitelist core-platform-api test-api skip(J)J
    .registers 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2479
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    .line 2480
    return-wide v0

    .line 2482
    :cond_7
    const/4 v0, 0x0

    .line 2483
    .local v0, "skipped":I
    iget v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v1, :cond_14

    .line 2484
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2485
    add-int/lit8 v0, v0, 0x1

    .line 2486
    const-wide/16 v1, 0x1

    sub-long/2addr p1, v1

    .line 2488
    :cond_14
    int-to-long v1, v0

    iget-object v3, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 2489
    .end local p1    # "n":J
    .local v1, "n":J
    iget-wide p1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    add-long/2addr p1, v1

    iput-wide p1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->totalBytesRead:J

    .line 2490
    return-wide v1
.end method

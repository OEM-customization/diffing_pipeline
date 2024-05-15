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
.field private final in:Ljava/io/InputStream;

.field private peekb:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 2301
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2296
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2302
    iput-object p1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    .line 2303
    return-void
.end method


# virtual methods
.method public available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2362
    iget-object v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    iget v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    add-int/2addr v0, v1

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
    .line 2366
    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2367
    return-void
.end method

.method peek()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2310
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v0, :cond_7

    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    goto :goto_6
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2314
    iget v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v1, :cond_a

    .line 2315
    iget v0, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2316
    .local v0, "v":I
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2317
    return v0

    .line 2319
    .end local v0    # "v":I
    :cond_a
    iget-object v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    return v1
.end method

.method public read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2324
    if-nez p3, :cond_4

    .line 2325
    return v2

    .line 2326
    :cond_4
    iget v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-gez v2, :cond_f

    .line 2327
    iget-object v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    return v2

    .line 2329
    :cond_f
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 2330
    add-int/lit8 p3, p3, -0x1

    .line 2331
    const/4 v2, -0x1

    iput v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2332
    iget-object v2, p0, Ljava/io/ObjectInputStream$PeekInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, v1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 2333
    .local v0, "n":I
    if-ltz v0, :cond_26

    add-int/lit8 v2, v0, 0x1

    :goto_25
    return v2

    :cond_26
    const/4 v2, 0x1

    goto :goto_25
.end method

.method readFully([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2338
    const/4 v1, 0x0

    .line 2339
    .local v1, "n":I
    :goto_1
    if-ge v1, p3, :cond_15

    .line 2340
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v0

    .line 2341
    .local v0, "count":I
    if-gez v0, :cond_13

    .line 2342
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 2344
    :cond_13
    add-int/2addr v1, v0

    goto :goto_1

    .line 2346
    .end local v0    # "count":I
    :cond_15
    return-void
.end method

.method public skip(J)J
    .registers 10
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 2349
    cmp-long v1, p1, v2

    if-gtz v1, :cond_7

    .line 2350
    return-wide v2

    .line 2352
    :cond_7
    const/4 v0, 0x0

    .line 2353
    .local v0, "skipped":I
    iget v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    if-ltz v1, :cond_13

    .line 2354
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream$PeekInputStream;->peekb:I

    .line 2355
    const/4 v0, 0x1

    .line 2356
    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    .line 2358
    :cond_13
    int-to-long v2, v0

    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectInputStream$PeekInputStream;->skip(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    return-wide v2
.end method

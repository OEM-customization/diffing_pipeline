.class public abstract Ljava/io/Reader;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Readable;
.implements Ljava/io/Closeable;


# static fields
.field private static final maxSkipBufferSize:I = 0x2000


# instance fields
.field protected lock:Ljava/lang/Object;

.field private skipBuffer:[C


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/Reader;->skipBuffer:[C

    .line 67
    iput-object p0, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "lock"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object v0, p0, Ljava/io/Reader;->skipBuffer:[C

    .line 77
    if-nez p1, :cond_e

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 80
    :cond_e
    iput-object p1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 81
    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public mark(I)V
    .registers 4
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark() not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 120
    new-array v0, v1, [C

    .line 121
    .local v0, "cb":[C
    invoke-virtual {p0, v0, v3, v1}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-ne v1, v2, :cond_c

    .line 122
    return v2

    .line 124
    :cond_c
    aget-char v1, v0, v3

    return v1
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .registers 6
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    .line 99
    .local v1, "len":I
    new-array v0, v1, [C

    .line 100
    .local v0, "cbuf":[C
    invoke-virtual {p0, v0, v3, v1}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 101
    .local v2, "n":I
    if-lez v2, :cond_10

    .line 102
    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    .line 103
    :cond_10
    return v2
.end method

.method public read([C)I
    .registers 4
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/Reader;->read([CII)I

    move-result v0

    return v0
.end method

.method public abstract read([CII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "reset() not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .registers 14
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 177
    cmp-long v4, p1, v8

    if-gez v4, :cond_f

    .line 178
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "skip value is negative"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 179
    :cond_f
    const-wide/16 v4, 0x2000

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 180
    .local v1, "nn":I
    iget-object v5, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 181
    :try_start_19
    iget-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    if-eqz v4, :cond_22

    iget-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    array-length v4, v4

    if-ge v4, v1, :cond_26

    .line 182
    :cond_22
    new-array v4, v1, [C

    iput-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    .line 183
    :cond_26
    move-wide v2, p1

    .line 184
    .local v2, "r":J
    :goto_27
    cmp-long v4, v2, v8

    if-lez v4, :cond_3b

    .line 185
    iget-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    int-to-long v6, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v7, v6}, Ljava/io/Reader;->read([CII)I
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_42

    move-result v0

    .line 186
    .local v0, "nc":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_3f

    .line 190
    .end local v0    # "nc":I
    :cond_3b
    sub-long v6, p1, v2

    monitor-exit v5

    return-wide v6

    .line 188
    .restart local v0    # "nc":I
    :cond_3f
    int-to-long v6, v0

    sub-long/2addr v2, v6

    goto :goto_27

    .line 180
    .end local v0    # "nc":I
    .end local v2    # "r":J
    :catchall_42
    move-exception v4

    monitor-exit v5

    throw v4
.end method

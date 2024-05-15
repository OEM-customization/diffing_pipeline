.class public Ljava/util/zip/Inflater;
.super Ljava/lang/Object;
.source "Inflater.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final defaultBuf:[B


# instance fields
.field private buf:[B

.field private bytesRead:J

.field private bytesWritten:J

.field private finished:Z

.field private final guard:Ldalvik/system/CloseGuard;

.field private len:I

.field private needDict:Z

.field private off:I

.field private final zsRef:Ljava/util/zip/ZStreamRef;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/zip/Inflater;->-assertionsDisabled:Z

    .line 90
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ljava/util/zip/Inflater;->defaultBuf:[B

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 114
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 6
    .param p1, "nowrap"    # Z

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-object v0, Ljava/util/zip/Inflater;->defaultBuf:[B

    iput-object v0, p0, Ljava/util/zip/Inflater;->buf:[B

    .line 88
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    .line 104
    new-instance v0, Ljava/util/zip/ZStreamRef;

    invoke-static {p1}, Ljava/util/zip/Inflater;->init(Z)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/zip/ZStreamRef;-><init>(J)V

    iput-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    .line 106
    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "end"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private static native end(J)V
.end method

.method private ensureOpen()V
    .registers 5

    .prologue
    .line 397
    sget-boolean v0, Ljava/util/zip/Inflater;->-assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 399
    :cond_12
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_27

    .line 400
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Inflater has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_27
    return-void
.end method

.method private static native getAdler(J)I
.end method

.method private native inflateBytes(J[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation
.end method

.method private static native init(Z)J
.end method

.method private static native reset(J)V
.end method

.method private static native setDictionary(J[BII)V
.end method


# virtual methods
.method public end()V
    .registers 7

    .prologue
    .line 372
    iget-object v3, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v3

    .line 373
    :try_start_3
    iget-object v2, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    .line 375
    iget-object v2, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v0

    .line 376
    .local v0, "addr":J
    iget-object v2, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/ZStreamRef;->clear()V

    .line 377
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1f

    .line 378
    invoke-static {v0, v1}, Ljava/util/zip/Inflater;->end(J)V

    .line 379
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/zip/Inflater;->buf:[B
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit v3

    .line 382
    return-void

    .line 372
    .end local v0    # "addr":J
    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method ended()Z
    .registers 7

    .prologue
    .line 404
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 405
    :try_start_3
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_14

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_10
    monitor-exit v1

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    .line 404
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 390
    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 393
    :cond_9
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    .line 394
    return-void
.end method

.method public finished()Z
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-boolean v1, p0, Ljava/util/zip/Inflater;->finished:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 230
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getAdler()I
    .registers 5

    .prologue
    .line 291
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 292
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 293
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/zip/Inflater;->getAdler(J)I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit v1

    return v0

    .line 291
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBytesRead()J
    .registers 5

    .prologue
    .line 317
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 318
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 319
    iget-wide v2, p0, Ljava/util/zip/Inflater;->bytesRead:J
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-wide v2

    .line 317
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBytesWritten()J
    .registers 5

    .prologue
    .line 343
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 344
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 345
    iget-wide v2, p0, Ljava/util/zip/Inflater;->bytesWritten:J
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-wide v2

    .line 343
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRemaining()I
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 196
    :try_start_3
    iget v1, p0, Ljava/util/zip/Inflater;->len:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 195
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getTotalIn()I
    .registers 3

    .prologue
    .line 307
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getTotalOut()I
    .registers 3

    .prologue
    .line 333
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public inflate([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 283
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    return v0
.end method

.method public inflate([BII)I
    .registers 13
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 253
    if-nez p1, :cond_8

    .line 254
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 256
    :cond_8
    if-ltz p2, :cond_c

    if-gez p3, :cond_12

    .line 257
    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 256
    :cond_12
    array-length v1, p1

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_c

    .line 259
    iget-object v8, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v8

    .line 260
    :try_start_19
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 261
    iget v7, p0, Ljava/util/zip/Inflater;->len:I

    .line 262
    .local v7, "thisLen":I
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Ljava/util/zip/Inflater;->inflateBytes(J[BII)I

    move-result v0

    .line 263
    .local v0, "n":I
    iget-wide v2, p0, Ljava/util/zip/Inflater;->bytesWritten:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/Inflater;->bytesWritten:J

    .line 264
    iget-wide v2, p0, Ljava/util/zip/Inflater;->bytesRead:J

    iget v1, p0, Ljava/util/zip/Inflater;->len:I

    sub-int v1, v7, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/Inflater;->bytesRead:J
    :try_end_3c
    .catchall {:try_start_19 .. :try_end_3c} :catchall_3e

    monitor-exit v8

    .line 265
    return v0

    .line 259
    .end local v0    # "n":I
    .end local v7    # "thisLen":I
    :catchall_3e
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method public needsDictionary()Z
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 219
    :try_start_3
    iget-boolean v1, p0, Ljava/util/zip/Inflater;->needDict:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 218
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public needsInput()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 208
    :try_start_4
    iget v2, p0, Ljava/util/zip/Inflater;->len:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_b

    if-gtz v2, :cond_9

    const/4 v0, 0x1

    :cond_9
    monitor-exit v1

    return v0

    .line 207
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset()V
    .registers 5

    .prologue
    .line 353
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 354
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 355
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/zip/Inflater;->reset(J)V

    .line 356
    sget-object v0, Ljava/util/zip/Inflater;->defaultBuf:[B

    iput-object v0, p0, Ljava/util/zip/Inflater;->buf:[B

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->finished:Z

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->needDict:Z

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->len:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Inflater;->off:I

    .line 360
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/util/zip/Inflater;->bytesWritten:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/util/zip/Inflater;->bytesRead:J
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    monitor-exit v1

    .line 362
    return-void

    .line 353
    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDictionary([B)V
    .registers 4
    .param p1, "b"    # [B

    .prologue
    .line 185
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Inflater;->setDictionary([BII)V

    .line 186
    return-void
.end method

.method public setDictionary([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 162
    if-nez p1, :cond_8

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 165
    :cond_8
    if-ltz p2, :cond_c

    if-gez p3, :cond_12

    .line 166
    :cond_c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 165
    :cond_12
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_c

    .line 168
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 169
    :try_start_19
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 170
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2, p3}, Ljava/util/zip/Inflater;->setDictionary(J[BII)V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Inflater;->needDict:Z
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_2a

    monitor-exit v1

    .line 173
    return-void

    .line 168
    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setInput([B)V
    .registers 4
    .param p1, "b"    # [B

    .prologue
    .line 147
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 148
    return-void
.end method

.method public setInput([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 126
    if-nez p1, :cond_8

    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 129
    :cond_8
    if-ltz p2, :cond_c

    if-gez p3, :cond_12

    .line 130
    :cond_c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 129
    :cond_12
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_c

    .line 132
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 133
    :try_start_19
    iput-object p1, p0, Ljava/util/zip/Inflater;->buf:[B

    .line 134
    iput p2, p0, Ljava/util/zip/Inflater;->off:I

    .line 135
    iput p3, p0, Ljava/util/zip/Inflater;->len:I
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_21

    monitor-exit v1

    .line 137
    return-void

    .line 132
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

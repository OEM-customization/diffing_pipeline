.class public Ljava/util/zip/Inflater;
.super Ljava/lang/Object;
.source "Inflater.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final greylist-max-o defaultBuf:[B


# instance fields
.field private greylist-max-r buf:[B

.field private greylist-max-o bytesRead:J

.field private greylist-max-o bytesWritten:J

.field private greylist-max-r finished:Z

.field private final greylist-max-o guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private greylist-max-r len:I

.field private greylist-max-r needDict:Z

.field private greylist-max-r off:I

.field private final greylist-max-o zsRef:Ljava/util/zip/ZStreamRef;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    nop

    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ljava/util/zip/Inflater;->defaultBuf:[B

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 130
    return-void
.end method

.method public constructor whitelist test-api <init>(Z)V
    .registers 6
    .param p1, "nowrap"    # Z

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget-object v0, Ljava/util/zip/Inflater;->defaultBuf:[B

    iput-object v0, p0, Ljava/util/zip/Inflater;->buf:[B

    .line 95
    nop

    .line 96
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    .line 120
    new-instance v1, Ljava/util/zip/ZStreamRef;

    invoke-static {p1}, Ljava/util/zip/Inflater;->init(Z)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/zip/ZStreamRef;-><init>(J)V

    iput-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    .line 122
    const-string v1, "end"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private static native greylist-max-o end(J)V
.end method

.method private greylist-max-o ensureOpen()V
    .registers 5

    .line 414
    nop

    .line 415
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 417
    return-void

    .line 416
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Inflater has been closed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native greylist-max-o getAdler(J)I
.end method

.method private native greylist-max-o inflateBytes(J[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation
.end method

.method private static native greylist-max-o init(Z)J
.end method

.method private static native greylist-max-o reset(J)V
.end method

.method private static native greylist-max-o setDictionary(J[BII)V
.end method


# virtual methods
.method public whitelist test-api end()V
    .registers 6

    .line 388
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 390
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 392
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v1

    .line 393
    .local v1, "addr":J
    iget-object v3, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v3}, Ljava/util/zip/ZStreamRef;->clear()V

    .line 394
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1f

    .line 395
    invoke-static {v1, v2}, Ljava/util/zip/Inflater;->end(J)V

    .line 396
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/zip/Inflater;->buf:[B

    .line 398
    .end local v1    # "addr":J
    :cond_1f
    monitor-exit v0

    .line 399
    return-void

    .line 398
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method greylist-max-o ended()Z
    .registers 6

    .line 420
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 421
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 422
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2

    .line 406
    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 407
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 410
    :cond_7
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    .line 411
    return-void
.end method

.method public whitelist test-api finished()Z
    .registers 3

    .line 246
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 247
    :try_start_3
    iget-boolean v1, p0, Ljava/util/zip/Inflater;->finished:Z

    monitor-exit v0

    return v1

    .line 248
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist test-api getAdler()I
    .registers 4

    .line 307
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 308
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 309
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/util/zip/Inflater;->getAdler(J)I

    move-result v1

    monitor-exit v0

    return v1

    .line 310
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api getBytesRead()J
    .registers 4

    .line 333
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 334
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 335
    iget-wide v1, p0, Ljava/util/zip/Inflater;->bytesRead:J

    monitor-exit v0

    return-wide v1

    .line 336
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist test-api getBytesWritten()J
    .registers 4

    .line 359
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 360
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 361
    iget-wide v1, p0, Ljava/util/zip/Inflater;->bytesWritten:J

    monitor-exit v0

    return-wide v1

    .line 362
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist test-api getRemaining()I
    .registers 3

    .line 211
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 212
    :try_start_3
    iget v1, p0, Ljava/util/zip/Inflater;->len:I

    monitor-exit v0

    return v1

    .line 213
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist test-api getTotalIn()I
    .registers 3

    .line 323
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api getTotalOut()I
    .registers 3

    .line 349
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api inflate([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 299
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api inflate([BII)I
    .registers 13
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 269
    if-eqz p1, :cond_3b

    .line 272
    if-ltz p2, :cond_35

    if-ltz p3, :cond_35

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_35

    .line 275
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 276
    :try_start_d
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 277
    iget v1, p0, Ljava/util/zip/Inflater;->len:I

    .line 278
    .local v1, "thisLen":I
    iget-object v2, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Ljava/util/zip/Inflater;->inflateBytes(J[BII)I

    move-result v2

    .line 279
    .local v2, "n":I
    iget-wide v3, p0, Ljava/util/zip/Inflater;->bytesWritten:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljava/util/zip/Inflater;->bytesWritten:J

    .line 280
    iget-wide v3, p0, Ljava/util/zip/Inflater;->bytesRead:J

    iget v5, p0, Ljava/util/zip/Inflater;->len:I

    sub-int v5, v1, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljava/util/zip/Inflater;->bytesRead:J

    .line 281
    monitor-exit v0

    return v2

    .line 282
    .end local v1    # "thisLen":I
    .end local v2    # "n":I
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_32

    throw v1

    .line 273
    :cond_35
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 270
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api needsDictionary()Z
    .registers 3

    .line 234
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-boolean v1, p0, Ljava/util/zip/Inflater;->needDict:Z

    monitor-exit v0

    return v1

    .line 236
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist test-api needsInput()Z
    .registers 3

    .line 223
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 224
    :try_start_3
    iget v1, p0, Ljava/util/zip/Inflater;->len:I

    if-gtz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 225
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist test-api reset()V
    .registers 4

    .line 369
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 370
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 371
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/util/zip/Inflater;->reset(J)V

    .line 372
    sget-object v1, Ljava/util/zip/Inflater;->defaultBuf:[B

    iput-object v1, p0, Ljava/util/zip/Inflater;->buf:[B

    .line 373
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/zip/Inflater;->finished:Z

    .line 374
    iput-boolean v1, p0, Ljava/util/zip/Inflater;->needDict:Z

    .line 375
    iput v1, p0, Ljava/util/zip/Inflater;->len:I

    iput v1, p0, Ljava/util/zip/Inflater;->off:I

    .line 376
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljava/util/zip/Inflater;->bytesWritten:J

    iput-wide v1, p0, Ljava/util/zip/Inflater;->bytesRead:J

    .line 377
    monitor-exit v0

    .line 378
    return-void

    .line 377
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public whitelist test-api setDictionary([B)V
    .registers 4
    .param p1, "b"    # [B

    .line 201
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Inflater;->setDictionary([BII)V

    .line 202
    return-void
.end method

.method public whitelist test-api setDictionary([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 178
    if-eqz p1, :cond_27

    .line 181
    if-ltz p2, :cond_21

    if-ltz p3, :cond_21

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_21

    .line 184
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 185
    :try_start_d
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 186
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2, p3}, Ljava/util/zip/Inflater;->setDictionary(J[BII)V

    .line 187
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/zip/Inflater;->needDict:Z

    .line 188
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw v1

    .line 182
    :cond_21
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 179
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setInput([B)V
    .registers 4
    .param p1, "b"    # [B

    .line 163
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 164
    return-void
.end method

.method public whitelist test-api setInput([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 142
    if-eqz p1, :cond_1e

    .line 145
    if-ltz p2, :cond_18

    if-ltz p3, :cond_18

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_18

    .line 148
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 149
    :try_start_d
    iput-object p1, p0, Ljava/util/zip/Inflater;->buf:[B

    .line 150
    iput p2, p0, Ljava/util/zip/Inflater;->off:I

    .line 151
    iput p3, p0, Ljava/util/zip/Inflater;->len:I

    .line 152
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v1

    .line 146
    :cond_18
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 143
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

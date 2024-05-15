.class public Ljava/util/zip/Deflater;
.super Ljava/lang/Object;
.source "Deflater.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist core-platform-api test-api BEST_COMPRESSION:I = 0x9

.field public static final whitelist core-platform-api test-api BEST_SPEED:I = 0x1

.field public static final whitelist core-platform-api test-api DEFAULT_COMPRESSION:I = -0x1

.field public static final whitelist core-platform-api test-api DEFAULT_STRATEGY:I = 0x0

.field public static final whitelist core-platform-api test-api DEFLATED:I = 0x8

.field public static final whitelist core-platform-api test-api FILTERED:I = 0x1

.field public static final whitelist core-platform-api test-api FULL_FLUSH:I = 0x3

.field public static final whitelist core-platform-api test-api HUFFMAN_ONLY:I = 0x2

.field public static final whitelist core-platform-api test-api NO_COMPRESSION:I = 0x0

.field public static final whitelist core-platform-api test-api NO_FLUSH:I = 0x0

.field public static final whitelist core-platform-api test-api SYNC_FLUSH:I = 0x2


# instance fields
.field private greylist buf:[B

.field private greylist-max-o bytesRead:J

.field private greylist-max-o bytesWritten:J

.field private greylist finish:Z

.field private greylist finished:Z

.field private final greylist-max-o guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private greylist len:I

.field private greylist level:I

.field private greylist off:I

.field private greylist setParams:Z

.field private greylist strategy:I

.field private final greylist-max-o zsRef:Ljava/util/zip/ZStreamRef;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 76
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 3

    .line 206
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 207
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(I)V
    .registers 3
    .param p1, "level"    # I

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 199
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(IZ)V
    .registers 7
    .param p1, "level"    # I
    .param p2, "nowrap"    # Z

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Ljava/util/zip/Deflater;->buf:[B

    .line 95
    nop

    .line 96
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    .line 185
    iput p1, p0, Ljava/util/zip/Deflater;->level:I

    .line 186
    iput v0, p0, Ljava/util/zip/Deflater;->strategy:I

    .line 187
    new-instance v1, Ljava/util/zip/ZStreamRef;

    invoke-static {p1, v0, p2}, Ljava/util/zip/Deflater;->init(IIZ)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/zip/ZStreamRef;-><init>(J)V

    iput-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    .line 189
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private native greylist-max-o deflateBytes(J[BIII)I
.end method

.method private static native greylist-max-o end(J)V
.end method

.method private greylist-max-o ensureOpen()V
    .registers 5

    .line 581
    nop

    .line 582
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 584
    return-void

    .line 583
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Deflater has been closed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native greylist-max-o getAdler(J)I
.end method

.method private static native greylist-max-o init(IIZ)J
.end method

.method private static native greylist-max-o reset(J)V
.end method

.method private static native greylist-max-o setDictionary(J[BII)V
.end method


# virtual methods
.method public whitelist core-platform-api test-api deflate([B)I
    .registers 4
    .param p1, "b"    # [B

    .line 403
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api deflate([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api deflate([BIII)I
    .registers 15
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "flush"    # I

    .line 451
    if-eqz p1, :cond_4b

    .line 454
    if-ltz p2, :cond_45

    if-ltz p3, :cond_45

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_45

    .line 457
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 458
    :try_start_d
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 459
    if-eqz p4, :cond_1f

    const/4 v1, 0x2

    if-eq p4, v1, :cond_1f

    const/4 v1, 0x3

    if-ne p4, v1, :cond_19

    goto :goto_1f

    .line 467
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Ljava/util/zip/Deflater;
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    .end local p4    # "flush":I
    throw v1

    .line 461
    .restart local p0    # "this":Ljava/util/zip/Deflater;
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    .restart local p4    # "flush":I
    :cond_1f
    :goto_1f
    iget v1, p0, Ljava/util/zip/Deflater;->len:I

    .line 462
    .local v1, "thisLen":I
    iget-object v2, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v3 .. v9}, Ljava/util/zip/Deflater;->deflateBytes(J[BIII)I

    move-result v2

    .line 463
    .local v2, "n":I
    iget-wide v3, p0, Ljava/util/zip/Deflater;->bytesWritten:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljava/util/zip/Deflater;->bytesWritten:J

    .line 464
    iget-wide v3, p0, Ljava/util/zip/Deflater;->bytesRead:J

    iget v5, p0, Ljava/util/zip/Deflater;->len:I

    sub-int v5, v1, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljava/util/zip/Deflater;->bytesRead:J

    .line 465
    monitor-exit v0

    return v2

    .line 468
    .end local v1    # "thisLen":I
    .end local v2    # "n":I
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_d .. :try_end_44} :catchall_42

    throw v1

    .line 455
    :cond_45
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 452
    :cond_4b
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api end()V
    .registers 6

    .line 557
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 559
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 560
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v1

    .line 561
    .local v1, "addr":J
    iget-object v3, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v3}, Ljava/util/zip/ZStreamRef;->clear()V

    .line 562
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1f

    .line 563
    invoke-static {v1, v2}, Ljava/util/zip/Deflater;->end(J)V

    .line 564
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/zip/Deflater;->buf:[B

    .line 566
    .end local v1    # "addr":J
    :cond_1f
    monitor-exit v0

    .line 567
    return-void

    .line 566
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method protected whitelist core-platform-api test-api finalize()V
    .registers 2

    .line 574
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 575
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 577
    :cond_7
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->end()V

    .line 578
    return-void
.end method

.method public whitelist core-platform-api test-api finish()V
    .registers 3

    .line 349
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 350
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Ljava/util/zip/Deflater;->finish:Z

    .line 351
    monitor-exit v0

    .line 352
    return-void

    .line 351
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public whitelist core-platform-api test-api finished()Z
    .registers 3

    .line 361
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 362
    :try_start_3
    iget-boolean v1, p0, Ljava/util/zip/Deflater;->finished:Z

    monitor-exit v0

    return v1

    .line 363
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist core-platform-api test-api getAdler()I
    .registers 4

    .line 476
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 477
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 478
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/util/zip/Deflater;->getAdler(J)I

    move-result v1

    monitor-exit v0

    return v1

    .line 479
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist core-platform-api test-api getBytesRead()J
    .registers 4

    .line 502
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 503
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 504
    iget-wide v1, p0, Ljava/util/zip/Deflater;->bytesRead:J

    monitor-exit v0

    return-wide v1

    .line 505
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist core-platform-api test-api getBytesWritten()J
    .registers 4

    .line 528
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 529
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 530
    iget-wide v1, p0, Ljava/util/zip/Deflater;->bytesWritten:J

    monitor-exit v0

    return-wide v1

    .line 531
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist core-platform-api test-api getTotalIn()I
    .registers 3

    .line 492
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist core-platform-api test-api getTotalOut()I
    .registers 3

    .line 518
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist core-platform-api test-api needsInput()Z
    .registers 3

    .line 339
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 340
    :try_start_3
    iget v1, p0, Ljava/util/zip/Deflater;->len:I

    if-gtz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 341
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist core-platform-api test-api reset()V
    .registers 4

    .line 539
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 540
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 541
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/util/zip/Deflater;->reset(J)V

    .line 542
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/zip/Deflater;->finish:Z

    .line 543
    iput-boolean v1, p0, Ljava/util/zip/Deflater;->finished:Z

    .line 544
    iput v1, p0, Ljava/util/zip/Deflater;->len:I

    iput v1, p0, Ljava/util/zip/Deflater;->off:I

    .line 545
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljava/util/zip/Deflater;->bytesWritten:J

    iput-wide v1, p0, Ljava/util/zip/Deflater;->bytesRead:J

    .line 546
    monitor-exit v0

    .line 547
    return-void

    .line 546
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public whitelist core-platform-api test-api setDictionary([B)V
    .registers 4
    .param p1, "b"    # [B

    .line 277
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Deflater;->setDictionary([BII)V

    .line 278
    return-void
.end method

.method public whitelist core-platform-api test-api setDictionary([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 254
    if-eqz p1, :cond_24

    .line 257
    if-ltz p2, :cond_1e

    if-ltz p3, :cond_1e

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_1e

    .line 260
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 261
    :try_start_d
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 262
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2, p3}, Ljava/util/zip/Deflater;->setDictionary(J[BII)V

    .line 263
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw v1

    .line 258
    :cond_1e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 255
    :cond_24
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api setInput([B)V
    .registers 4
    .param p1, "b"    # [B

    .line 238
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 239
    return-void
.end method

.method public whitelist core-platform-api test-api setInput([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 218
    if-eqz p1, :cond_1e

    .line 221
    if-ltz p2, :cond_18

    if-ltz p3, :cond_18

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_18

    .line 224
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 225
    :try_start_d
    iput-object p1, p0, Ljava/util/zip/Deflater;->buf:[B

    .line 226
    iput p2, p0, Ljava/util/zip/Deflater;->off:I

    .line 227
    iput p3, p0, Ljava/util/zip/Deflater;->len:I

    .line 228
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v1

    .line 222
    :cond_18
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 219
    :cond_1e
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api setLevel(I)V
    .registers 4
    .param p1, "level"    # I

    .line 321
    if-ltz p1, :cond_6

    const/16 v0, 0x9

    if-le p1, v0, :cond_9

    :cond_6
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1a

    .line 324
    :cond_9
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 325
    :try_start_c
    iget v1, p0, Ljava/util/zip/Deflater;->level:I

    if-eq v1, p1, :cond_15

    .line 326
    iput p1, p0, Ljava/util/zip/Deflater;->level:I

    .line 327
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/zip/Deflater;->setParams:Z

    .line 329
    :cond_15
    monitor-exit v0

    .line 330
    return-void

    .line 329
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw v1

    .line 322
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid compression level"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setStrategy(I)V
    .registers 5
    .param p1, "strategy"    # I

    .line 293
    const/4 v0, 0x1

    if-eqz p1, :cond_f

    if-eq p1, v0, :cond_f

    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    goto :goto_f

    .line 299
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 297
    :cond_f
    :goto_f
    nop

    .line 301
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 302
    :try_start_13
    iget v2, p0, Ljava/util/zip/Deflater;->strategy:I

    if-eq v2, p1, :cond_1b

    .line 303
    iput p1, p0, Ljava/util/zip/Deflater;->strategy:I

    .line 304
    iput-boolean v0, p0, Ljava/util/zip/Deflater;->setParams:Z

    .line 306
    :cond_1b
    monitor-exit v1

    .line 307
    return-void

    .line 306
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_1d

    throw v0
.end method

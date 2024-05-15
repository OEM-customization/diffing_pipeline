.class public Ljava/util/zip/Deflater;
.super Ljava/lang/Object;
.source "Deflater.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final BEST_COMPRESSION:I = 0x9

.field public static final BEST_SPEED:I = 0x1

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field public static final DEFAULT_STRATEGY:I = 0x0

.field public static final DEFLATED:I = 0x8

.field public static final FILTERED:I = 0x1

.field public static final FULL_FLUSH:I = 0x3

.field public static final HUFFMAN_ONLY:I = 0x2

.field public static final NO_COMPRESSION:I = 0x0

.field public static final NO_FLUSH:I = 0x0

.field public static final SYNC_FLUSH:I = 0x2


# instance fields
.field private buf:[B

.field private bytesRead:J

.field private bytesWritten:J

.field private finish:Z

.field private finished:Z

.field private final guard:Ldalvik/system/CloseGuard;

.field private len:I

.field private level:I

.field private off:I

.field private setParams:Z

.field private strategy:I

.field private final zsRef:Ljava/util/zip/ZStreamRef;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/zip/Deflater;->-assertionsDisabled:Z

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 190
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 191
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 183
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 7
    .param p1, "level"    # I
    .param p2, "nowrap"    # Z

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-array v0, v1, [B

    iput-object v0, p0, Ljava/util/zip/Deflater;->buf:[B

    .line 88
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    .line 169
    iput p1, p0, Ljava/util/zip/Deflater;->level:I

    .line 170
    iput v1, p0, Ljava/util/zip/Deflater;->strategy:I

    .line 171
    new-instance v0, Ljava/util/zip/ZStreamRef;

    invoke-static {p1, v1, p2}, Ljava/util/zip/Deflater;->init(IIZ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/zip/ZStreamRef;-><init>(J)V

    iput-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    .line 173
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "end"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method private native deflateBytes(J[BIII)I
.end method

.method private static native end(J)V
.end method

.method private ensureOpen()V
    .registers 5

    .prologue
    .line 565
    sget-boolean v0, Ljava/util/zip/Deflater;->-assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 566
    :cond_12
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_27

    .line 567
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Deflater has been closed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_27
    return-void
.end method

.method private static native getAdler(J)I
.end method

.method private static native init(IIZ)J
.end method

.method private static native reset(J)V
.end method

.method private static native setDictionary(J[BII)V
.end method


# virtual methods
.method public deflate([B)I
    .registers 4
    .param p1, "b"    # [B

    .prologue
    const/4 v1, 0x0

    .line 387
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0, v1}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    return v0
.end method

.method public deflate([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    return v0
.end method

.method public deflate([BIII)I
    .registers 15
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "flush"    # I

    .prologue
    .line 435
    if-nez p1, :cond_8

    .line 436
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 438
    :cond_8
    if-ltz p2, :cond_c

    if-gez p3, :cond_12

    .line 439
    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 438
    :cond_12
    array-length v1, p1

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_c

    .line 441
    iget-object v9, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v9

    .line 442
    :try_start_19
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 443
    if-eqz p4, :cond_21

    const/4 v1, 0x2

    if-ne p4, v1, :cond_44

    .line 445
    :cond_21
    iget v8, p0, Ljava/util/zip/Deflater;->len:I

    .line 446
    .local v8, "thisLen":I
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/zip/Deflater;->deflateBytes(J[BIII)I

    move-result v0

    .line 447
    .local v0, "n":I
    iget-wide v2, p0, Ljava/util/zip/Deflater;->bytesWritten:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/Deflater;->bytesWritten:J

    .line 448
    iget-wide v2, p0, Ljava/util/zip/Deflater;->bytesRead:J

    iget v1, p0, Ljava/util/zip/Deflater;->len:I

    sub-int v1, v8, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/Deflater;->bytesRead:J
    :try_end_42
    .catchall {:try_start_19 .. :try_end_42} :catchall_4d

    monitor-exit v9

    .line 449
    return v0

    .line 444
    .end local v0    # "n":I
    .end local v8    # "thisLen":I
    :cond_44
    const/4 v1, 0x3

    if-eq p4, v1, :cond_21

    .line 451
    :try_start_47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_4d

    .line 441
    :catchall_4d
    move-exception v1

    monitor-exit v9

    throw v1
.end method

.method public end()V
    .registers 7

    .prologue
    .line 541
    iget-object v3, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v3

    .line 543
    :try_start_3
    iget-object v2, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    .line 544
    iget-object v2, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v0

    .line 545
    .local v0, "addr":J
    iget-object v2, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/ZStreamRef;->clear()V

    .line 546
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1f

    .line 547
    invoke-static {v0, v1}, Ljava/util/zip/Deflater;->end(J)V

    .line 548
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/zip/Deflater;->buf:[B
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit v3

    .line 551
    return-void

    .line 541
    .end local v0    # "addr":J
    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 558
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 559
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 561
    :cond_9
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->end()V

    .line 562
    return-void
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 334
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Ljava/util/zip/Deflater;->finish:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 336
    return-void

    .line 333
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public finished()Z
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v0

    .line 346
    :try_start_3
    iget-boolean v1, p0, Ljava/util/zip/Deflater;->finished:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 345
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getAdler()I
    .registers 5

    .prologue
    .line 460
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 461
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 462
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/zip/Deflater;->getAdler(J)I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit v1

    return v0

    .line 460
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBytesRead()J
    .registers 5

    .prologue
    .line 486
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 487
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 488
    iget-wide v2, p0, Ljava/util/zip/Deflater;->bytesRead:J
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-wide v2

    .line 486
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBytesWritten()J
    .registers 5

    .prologue
    .line 512
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 513
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 514
    iget-wide v2, p0, Ljava/util/zip/Deflater;->bytesWritten:J
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-wide v2

    .line 512
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getTotalIn()I
    .registers 3

    .prologue
    .line 476
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getTotalOut()I
    .registers 3

    .prologue
    .line 502
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public needsInput()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 323
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 324
    :try_start_4
    iget v2, p0, Ljava/util/zip/Deflater;->len:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_b

    if-gtz v2, :cond_9

    const/4 v0, 0x1

    :cond_9
    monitor-exit v1

    return v0

    .line 323
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset()V
    .registers 5

    .prologue
    .line 523
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 524
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 525
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/zip/Deflater;->reset(J)V

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Deflater;->finish:Z

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/Deflater;->finished:Z

    .line 528
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Deflater;->len:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Deflater;->off:I

    .line 529
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/util/zip/Deflater;->bytesWritten:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/util/zip/Deflater;->bytesRead:J
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    monitor-exit v1

    .line 531
    return-void

    .line 523
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDictionary([B)V
    .registers 4
    .param p1, "b"    # [B

    .prologue
    .line 261
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Deflater;->setDictionary([BII)V

    .line 262
    return-void
.end method

.method public setDictionary([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 238
    if-nez p1, :cond_8

    .line 239
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 241
    :cond_8
    if-ltz p2, :cond_c

    if-gez p3, :cond_12

    .line 242
    :cond_c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 241
    :cond_12
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_c

    .line 244
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 245
    :try_start_19
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 246
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/ZStreamRef;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2, p3}, Ljava/util/zip/Deflater;->setDictionary(J[BII)V
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_27

    monitor-exit v1

    .line 248
    return-void

    .line 244
    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setInput([B)V
    .registers 4
    .param p1, "b"    # [B

    .prologue
    .line 222
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 223
    return-void
.end method

.method public setInput([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 202
    if-nez p1, :cond_8

    .line 203
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 205
    :cond_8
    if-ltz p2, :cond_c

    if-gez p3, :cond_12

    .line 206
    :cond_c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 205
    :cond_12
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_c

    .line 208
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 209
    :try_start_19
    iput-object p1, p0, Ljava/util/zip/Deflater;->buf:[B

    .line 210
    iput p2, p0, Ljava/util/zip/Deflater;->off:I

    .line 211
    iput p3, p0, Ljava/util/zip/Deflater;->len:I
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_21

    monitor-exit v1

    .line 213
    return-void

    .line 208
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setLevel(I)V
    .registers 4
    .param p1, "level"    # I

    .prologue
    .line 305
    if-ltz p1, :cond_6

    const/16 v0, 0x9

    if-le p1, v0, :cond_12

    :cond_6
    const/4 v0, -0x1

    if-eq p1, v0, :cond_12

    .line 306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid compression level"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_12
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 309
    :try_start_15
    iget v0, p0, Ljava/util/zip/Deflater;->level:I

    if-eq v0, p1, :cond_1e

    .line 310
    iput p1, p0, Ljava/util/zip/Deflater;->level:I

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/Deflater;->setParams:Z
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit v1

    .line 314
    return-void

    .line 308
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setStrategy(I)V
    .registers 4
    .param p1, "strategy"    # I

    .prologue
    .line 277
    packed-switch p1, :pswitch_data_1a

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 285
    :pswitch_9
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/ZStreamRef;

    monitor-enter v1

    .line 286
    :try_start_c
    iget v0, p0, Ljava/util/zip/Deflater;->strategy:I

    if-eq v0, p1, :cond_15

    .line 287
    iput p1, p0, Ljava/util/zip/Deflater;->strategy:I

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/Deflater;->setParams:Z
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit v1

    .line 291
    return-void

    .line 285
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0

    .line 277
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

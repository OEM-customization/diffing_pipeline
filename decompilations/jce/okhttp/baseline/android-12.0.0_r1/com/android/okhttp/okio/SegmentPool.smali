.class final Lcom/android/okhttp/okio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static final blacklist MAX_SIZE:J = 0x10000L

.field static blacklist byteCount:J

.field static blacklist next:Lcom/android/okhttp/okio/Segment;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static blacklist recycle(Lcom/android/okhttp/okio/Segment;)V
    .registers 10
    .param p0, "segment"    # Lcom/android/okhttp/okio/Segment;

    .line 51
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    if-nez v0, :cond_32

    .line 52
    iget-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->shared:Z

    if-eqz v0, :cond_d

    return-void

    .line 53
    :cond_d
    const-class v0, Lcom/android/okhttp/okio/SegmentPool;

    monitor-enter v0

    .line 54
    :try_start_10
    sget-wide v1, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J

    const-wide/16 v3, 0x2000

    add-long v5, v1, v3

    const-wide/32 v7, 0x10000

    cmp-long v5, v5, v7

    if-lez v5, :cond_1f

    monitor-exit v0

    return-void

    .line 55
    :cond_1f
    add-long/2addr v1, v3

    sput-wide v1, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J

    .line 56
    sget-object v1, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;

    iput-object v1, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    iput v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 58
    sput-object p0, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;

    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 59
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_2f

    throw v1

    .line 51
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static blacklist take()Lcom/android/okhttp/okio/Segment;
    .registers 6

    .line 38
    const-class v0, Lcom/android/okhttp/okio/SegmentPool;

    monitor-enter v0

    .line 39
    :try_start_3
    sget-object v1, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;

    if-eqz v1, :cond_18

    .line 40
    nop

    .line 41
    .local v1, "result":Lcom/android/okhttp/okio/Segment;
    iget-object v2, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    sput-object v2, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;

    .line 42
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 43
    sget-wide v2, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J

    .line 44
    monitor-exit v0

    return-object v1

    .line 46
    .end local v1    # "result":Lcom/android/okhttp/okio/Segment;
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    .line 47
    new-instance v0, Lcom/android/okhttp/okio/Segment;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Segment;-><init>()V

    return-object v0

    .line 46
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

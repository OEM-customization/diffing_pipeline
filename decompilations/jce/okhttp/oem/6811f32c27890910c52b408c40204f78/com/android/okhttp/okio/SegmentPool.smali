.class final Lcom/android/okhttp/okio/SegmentPool;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static final MAX_SIZE:J = 0x10000L

.field static byteCount:J

.field static next:Lcom/android/okhttp/okio/Segment;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static recycle(Lcom/android/okhttp/okio/Segment;)V
    .registers 9
    .param p0, "segment"    # Lcom/android/okhttp/okio/Segment;

    .prologue
    const-wide/16 v6, 0x2000

    .line 50
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    if-eqz v0, :cond_10

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_10
    iget-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->shared:Z

    if-eqz v0, :cond_15

    return-void

    .line 52
    :cond_15
    const-class v1, Lcom/android/okhttp/okio/SegmentPool;

    monitor-enter v1

    .line 53
    :try_start_18
    sget-wide v2, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_37

    add-long/2addr v2, v6

    const-wide/32 v4, 0x10000

    cmp-long v0, v2, v4

    if-lez v0, :cond_24

    monitor-exit v1

    return-void

    .line 54
    :cond_24
    :try_start_24
    sget-wide v2, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J

    add-long/2addr v2, v6

    sput-wide v2, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J

    .line 55
    sget-object v0, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;

    iput-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 57
    sput-object p0, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_37

    monitor-exit v1

    .line 59
    return-void

    .line 52
    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static take()Lcom/android/okhttp/okio/Segment;
    .registers 8

    .prologue
    .line 37
    const-class v2, Lcom/android/okhttp/okio/SegmentPool;

    monitor-enter v2

    .line 38
    :try_start_3
    sget-object v1, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;

    if-eqz v1, :cond_19

    .line 39
    sget-object v0, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;

    .line 40
    .local v0, "result":Lcom/android/okhttp/okio/Segment;
    iget-object v1, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    sput-object v1, Lcom/android/okhttp/okio/SegmentPool;->next:Lcom/android/okhttp/okio/Segment;

    .line 41
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 42
    sget-wide v4, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J

    const-wide/16 v6, 0x2000

    sub-long/2addr v4, v6

    sput-wide v4, Lcom/android/okhttp/okio/SegmentPool;->byteCount:J
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_20

    monitor-exit v2

    .line 43
    return-object v0

    .end local v0    # "result":Lcom/android/okhttp/okio/Segment;
    :cond_19
    monitor-exit v2

    .line 46
    new-instance v1, Lcom/android/okhttp/okio/Segment;

    invoke-direct {v1}, Lcom/android/okhttp/okio/Segment;-><init>()V

    return-object v1

    .line 37
    .restart local v0    # "result":Lcom/android/okhttp/okio/Segment;
    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

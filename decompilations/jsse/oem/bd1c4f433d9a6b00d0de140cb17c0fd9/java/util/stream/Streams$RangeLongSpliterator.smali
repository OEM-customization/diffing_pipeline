.class final Ljava/util/stream/Streams$RangeLongSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeLongSpliterator"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BALANCED_SPLIT_THRESHOLD:J = 0x1000000L

.field private static final RIGHT_BALANCED_SPLIT_RATIO:J = 0x8L


# instance fields
.field private from:J

.field private last:I

.field private final upTo:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/stream/Streams$RangeLongSpliterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/stream/Streams$RangeLongSpliterator;->-assertionsDisabled:Z

    .line 185
    return-void
.end method

.method private constructor <init>(JJI)V
    .registers 11
    .param p1, "from"    # J
    .param p3, "upTo"    # J
    .param p5, "last"    # I

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    sget-boolean v0, Ljava/util/stream/Streams$RangeLongSpliterator;->-assertionsDisabled:Z

    if-nez v0, :cond_17

    sub-long v0, p3, p1

    int-to-long v2, p5

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_17

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 202
    :cond_17
    iput-wide p1, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    .line 203
    iput-wide p3, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    .line 204
    iput p5, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    .line 205
    return-void
.end method

.method constructor <init>(JJZ)V
    .registers 13
    .param p1, "from"    # J
    .param p3, "upTo"    # J
    .param p5, "closed"    # Z

    .prologue
    .line 197
    if-eqz p5, :cond_a

    const/4 v6, 0x1

    :goto_3
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Streams$RangeLongSpliterator;-><init>(JJI)V

    .line 198
    return-void

    .line 197
    :cond_a
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private splitPoint(J)J
    .registers 8
    .param p1, "size"    # J

    .prologue
    .line 295
    const-wide/32 v2, 0x1000000

    cmp-long v2, p1, v2

    if-gez v2, :cond_c

    const-wide/16 v0, 0x2

    .line 297
    .local v0, "d":J
    :goto_9
    div-long v2, p1, v0

    return-wide v2

    .line 295
    .end local v0    # "d":J
    :cond_c
    const-wide/16 v0, 0x8

    .restart local v0    # "d":J
    goto :goto_9
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 250
    const/16 v0, 0x4555

    return v0
.end method

.method public estimateSize()J
    .registers 5

    .prologue
    .line 245
    iget-wide v0, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    sub-long/2addr v0, v2

    iget v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 225
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$RangeLongSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 12
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-wide v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    .line 230
    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    .line 231
    .local v2, "hUpTo":J
    iget v0, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    .line 232
    .local v0, "hLast":I
    iget-wide v8, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iput-wide v8, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    .line 233
    iput v1, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    move-wide v6, v4

    .line 234
    .end local v4    # "i":J
    .local v6, "i":J
    :goto_11
    cmp-long v1, v6, v2

    if-gez v1, :cond_1e

    .line 235
    const-wide/16 v8, 0x1

    add-long v4, v6, v8

    .end local v6    # "i":J
    .restart local v4    # "i":J
    invoke-interface {p1, v6, v7}, Ljava/util/function/LongConsumer;->accept(J)V

    move-wide v6, v4

    .end local v4    # "i":J
    .restart local v6    # "i":J
    goto :goto_11

    .line 237
    :cond_1e
    if-lez v0, :cond_23

    .line 239
    invoke-interface {p1, v6, v7}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 241
    :cond_23
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 207
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$RangeLongSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 9
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-wide v0, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    .line 212
    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_18

    .line 213
    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    .line 214
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 215
    return v6

    .line 217
    :cond_18
    iget v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    if-lez v2, :cond_22

    .line 218
    iput v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    .line 219
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 220
    return v6

    .line 222
    :cond_22
    return v4
.end method

.method public trySplit()Ljava/util/Spliterator$OfLong;
    .registers 11

    .prologue
    .line 262
    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeLongSpliterator;->estimateSize()J

    move-result-wide v8

    .line 263
    .local v8, "size":J
    const-wide/16 v0, 0x1

    cmp-long v0, v8, v0

    if-gtz v0, :cond_c

    .line 264
    const/4 v1, 0x0

    .line 263
    :goto_b
    return-object v1

    .line 266
    :cond_c
    new-instance v1, Ljava/util/stream/Streams$RangeLongSpliterator;

    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    iget-wide v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    invoke-direct {p0, v8, v9}, Ljava/util/stream/Streams$RangeLongSpliterator;->splitPoint(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Streams$RangeLongSpliterator;-><init>(JJI)V

    goto :goto_b
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .prologue
    .line 260
    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeLongSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 260
    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeLongSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

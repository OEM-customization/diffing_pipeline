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
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist BALANCED_SPLIT_THRESHOLD:J = 0x1000000L

.field private static final blacklist RIGHT_BALANCED_SPLIT_RATIO:J = 0x8L


# instance fields
.field private blacklist from:J

.field private blacklist last:I

.field private final blacklist upTo:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 185
    const-class v0, Ljava/util/stream/Streams;

    return-void
.end method

.method private constructor blacklist <init>(JJI)V
    .registers 6
    .param p1, "from"    # J
    .param p3, "upTo"    # J
    .param p5, "last"    # I

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    nop

    .line 202
    iput-wide p1, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    .line 203
    iput-wide p3, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    .line 204
    iput p5, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    .line 205
    return-void
.end method

.method constructor blacklist <init>(JJZ)V
    .registers 6
    .param p1, "from"    # J
    .param p3, "upTo"    # J
    .param p5, "closed"    # Z

    .line 197
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/Streams$RangeLongSpliterator;-><init>(JJI)V

    .line 198
    return-void
.end method

.method private blacklist splitPoint(J)J
    .registers 7
    .param p1, "size"    # J

    .line 295
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_a

    const-wide/16 v0, 0x2

    goto :goto_c

    :cond_a
    const-wide/16 v0, 0x8

    .line 297
    .local v0, "d":J
    :goto_c
    div-long v2, p1, v0

    return-wide v2
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 250
    const/16 v0, 0x4555

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 5

    .line 245
    iget-wide v0, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    sub-long/2addr v0, v2

    iget v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .line 185
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$RangeLongSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 9
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 227
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-wide v0, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    .line 230
    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    .line 231
    .local v2, "hUpTo":J
    iget v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    .line 232
    .local v4, "hLast":I
    iget-wide v5, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iput-wide v5, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    .line 233
    const/4 v5, 0x0

    iput v5, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    .line 234
    :goto_10
    cmp-long v5, v0, v2

    if-gez v5, :cond_1c

    .line 235
    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    .end local v0    # "i":J
    .local v5, "i":J
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    move-wide v0, v5

    goto :goto_10

    .line 237
    .end local v5    # "i":J
    .restart local v0    # "i":J
    :cond_1c
    if-lez v4, :cond_21

    .line 239
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 241
    :cond_21
    return-void
.end method

.method public whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    .line 185
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$RangeLongSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 10
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-wide v0, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    .line 212
    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-gez v2, :cond_17

    .line 213
    iget-wide v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    .line 214
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 215
    return v3

    .line 217
    :cond_17
    iget v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    const/4 v4, 0x0

    if-lez v2, :cond_22

    .line 218
    iput v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    .line 219
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 220
    return v3

    .line 222
    :cond_22
    return v4
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfLong;
    .registers 10

    .line 262
    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeLongSpliterator;->estimateSize()J

    move-result-wide v0

    .line 263
    .local v0, "size":J
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_c

    .line 264
    const/4 v2, 0x0

    goto :goto_1c

    .line 266
    :cond_c
    new-instance v2, Ljava/util/stream/Streams$RangeLongSpliterator;

    iget-wide v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    invoke-direct {p0, v0, v1}, Ljava/util/stream/Streams$RangeLongSpliterator;->splitPoint(J)J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Ljava/util/stream/Streams$RangeLongSpliterator;-><init>(JJI)V

    .line 263
    :goto_1c
    return-object v2
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 185
    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeLongSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 185
    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeLongSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.class final Ljava/util/stream/Streams$RangeIntSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeIntSpliterator"
.end annotation


# static fields
.field private static final BALANCED_SPLIT_THRESHOLD:I = 0x1000000

.field private static final RIGHT_BALANCED_SPLIT_RATIO:I = 0x8


# instance fields
.field private from:I

.field private last:I

.field private final upTo:I


# direct methods
.method private constructor <init>(III)V
    .registers 4
    .param p1, "from"    # I
    .param p2, "upTo"    # I
    .param p3, "last"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 78
    iput p2, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->upTo:I

    .line 79
    iput p3, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    .line 80
    return-void
.end method

.method constructor <init>(IIZ)V
    .registers 5
    .param p1, "from"    # I
    .param p2, "upTo"    # I
    .param p3, "closed"    # Z

    .prologue
    .line 73
    if-eqz p3, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-direct {p0, p1, p2, v0}, Ljava/util/stream/Streams$RangeIntSpliterator;-><init>(III)V

    .line 74
    return-void

    .line 73
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private splitPoint(J)I
    .registers 8
    .param p1, "size"    # J

    .prologue
    .line 171
    const-wide/32 v2, 0x1000000

    cmp-long v1, p1, v2

    if-gez v1, :cond_d

    const/4 v0, 0x2

    .line 175
    .local v0, "d":I
    :goto_8
    int-to-long v2, v0

    div-long v2, p1, v2

    long-to-int v1, v2

    return v1

    .line 171
    .end local v0    # "d":I
    :cond_d
    const/16 v0, 0x8

    .restart local v0    # "d":I
    goto :goto_8
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 126
    const/16 v0, 0x4555

    return v0
.end method

.method public estimateSize()J
    .registers 5

    .prologue
    .line 121
    iget v0, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->upTo:I

    int-to-long v0, v0

    iget v2, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget v2, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 100
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$RangeIntSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 8
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget v2, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 105
    .local v2, "i":I
    iget v1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->upTo:I

    .line 106
    .local v1, "hUpTo":I
    iget v0, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    .line 107
    .local v0, "hLast":I
    iget v4, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->upTo:I

    iput v4, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 108
    iput v5, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    move v3, v2

    .line 109
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_1a

    .line 110
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-interface {p1, v3}, Ljava/util/function/IntConsumer;->accept(I)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_11

    .line 112
    :cond_1a
    if-lez v0, :cond_1f

    .line 114
    invoke-interface {p1, v3}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 116
    :cond_1f
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 82
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$RangeIntSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 6
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget v0, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 87
    .local v0, "i":I
    iget v1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->upTo:I

    if-ge v0, v1, :cond_15

    .line 88
    iget v1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 89
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 90
    return v3

    .line 92
    :cond_15
    iget v1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    if-lez v1, :cond_1f

    .line 93
    iput v2, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    .line 94
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 95
    return v3

    .line 97
    :cond_1f
    return v2
.end method

.method public trySplit()Ljava/util/Spliterator$OfInt;
    .registers 7

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeIntSpliterator;->estimateSize()J

    move-result-wide v0

    .line 139
    .local v0, "size":J
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_c

    .line 140
    const/4 v2, 0x0

    .line 139
    :goto_b
    return-object v2

    .line 142
    :cond_c
    new-instance v2, Ljava/util/stream/Streams$RangeIntSpliterator;

    iget v3, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    iget v4, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    invoke-direct {p0, v0, v1}, Ljava/util/stream/Streams$RangeIntSpliterator;->splitPoint(J)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava/util/stream/Streams$RangeIntSpliterator;-><init>(III)V

    goto :goto_b
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeIntSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeIntSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

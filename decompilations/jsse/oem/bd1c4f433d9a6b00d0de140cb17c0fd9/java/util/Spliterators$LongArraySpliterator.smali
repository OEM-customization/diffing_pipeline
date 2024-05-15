.class final Ljava/util/Spliterators$LongArraySpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongArraySpliterator"
.end annotation


# instance fields
.field private final array:[J

.field private final characteristics:I

.field private final fence:I

.field private index:I


# direct methods
.method public constructor <init>([JI)V
    .registers 5
    .param p1, "array"    # [J
    .param p2, "additionalCharacteristics"    # I

    .prologue
    .line 1081
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    .line 1082
    return-void
.end method

.method public constructor <init>([JIII)V
    .registers 6
    .param p1, "array"    # [J
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "additionalCharacteristics"    # I

    .prologue
    .line 1093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1094
    iput-object p1, p0, Ljava/util/Spliterators$LongArraySpliterator;->array:[J

    .line 1095
    iput p2, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    .line 1096
    iput p3, p0, Ljava/util/Spliterators$LongArraySpliterator;->fence:I

    .line 1097
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->characteristics:I

    .line 1098
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 1135
    iget v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .registers 3

    .prologue
    .line 1131
    iget v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->fence:I

    iget v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1108
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$LongArraySpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 8
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .prologue
    .line 1111
    if-nez p1, :cond_8

    .line 1112
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1113
    :cond_8
    iget-object v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->array:[J

    .local v0, "a":[J
    array-length v3, v0

    iget v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->fence:I

    .local v1, "hi":I
    if-lt v3, v1, :cond_20

    .line 1114
    iget v2, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    .local v2, "i":I
    if-ltz v2, :cond_20

    iput v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    if-ge v2, v1, :cond_20

    .line 1115
    :cond_17
    aget-wide v4, v0, v2

    invoke-interface {p1, v4, v5}, Ljava/util/function/LongConsumer;->accept(J)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_17

    .line 1117
    .end local v2    # "i":I
    :cond_20
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
    .line 1140
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$LongArraySpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1141
    const/4 v0, 0x0

    return-object v0

    .line 1142
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 1119
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/Spliterators$LongArraySpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 5
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .prologue
    const/4 v2, 0x0

    .line 1121
    if-nez p1, :cond_9

    .line 1122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1123
    :cond_9
    iget v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    if-ltz v0, :cond_22

    iget v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    iget v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->fence:I

    if-ge v0, v1, :cond_22

    .line 1124
    iget-object v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->array:[J

    iget v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    aget-wide v0, v0, v1

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1125
    const/4 v0, 0x1

    return v0

    .line 1127
    :cond_22
    return v2
.end method

.method public trySplit()Ljava/util/Spliterator$OfLong;
    .registers 6

    .prologue
    .line 1102
    iget v0, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    .local v0, "lo":I
    iget v2, p0, Ljava/util/Spliterators$LongArraySpliterator;->fence:I

    add-int/2addr v2, v0

    ushr-int/lit8 v1, v2, 0x1

    .line 1103
    .local v1, "mid":I
    if-lt v0, v1, :cond_b

    .line 1104
    const/4 v2, 0x0

    .line 1103
    :goto_a
    return-object v2

    .line 1105
    :cond_b
    new-instance v2, Ljava/util/Spliterators$LongArraySpliterator;

    iget-object v3, p0, Ljava/util/Spliterators$LongArraySpliterator;->array:[J

    iput v1, p0, Ljava/util/Spliterators$LongArraySpliterator;->index:I

    iget v4, p0, Ljava/util/Spliterators$LongArraySpliterator;->characteristics:I

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    goto :goto_a
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .prologue
    .line 1100
    invoke-virtual {p0}, Ljava/util/Spliterators$LongArraySpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 1100
    invoke-virtual {p0}, Ljava/util/Spliterators$LongArraySpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

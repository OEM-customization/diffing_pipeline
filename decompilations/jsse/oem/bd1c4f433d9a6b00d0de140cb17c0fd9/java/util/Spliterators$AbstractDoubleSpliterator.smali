.class public abstract Ljava/util/Spliterators$AbstractDoubleSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractDoubleSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;
    }
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J


# direct methods
.method protected constructor <init>(JI)V
    .registers 5
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .prologue
    .line 1616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1617
    iput-wide p1, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    .line 1618
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_b

    .line 1619
    or-int/lit16 p3, p3, 0x4000

    .line 1618
    .end local p3    # "additionalCharacteristics":I
    :cond_b
    iput p3, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->characteristics:I

    .line 1621
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 1680
    iget v0, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .registers 3

    .prologue
    .line 1668
    iget-wide v0, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 780
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 11

    .prologue
    .line 1639
    new-instance v1, Ljava/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;

    invoke-direct {v1}, Ljava/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;-><init>()V

    .line 1640
    .local v1, "holder":Ljava/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;
    iget-wide v4, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    .line 1641
    .local v4, "s":J
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-lez v6, :cond_52

    invoke-virtual {p0, v1}, Ljava/util/Spliterators$AbstractDoubleSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 1642
    iget v6, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->batch:I

    add-int/lit16 v3, v6, 0x400

    .line 1643
    .local v3, "n":I
    int-to-long v6, v3

    cmp-long v6, v6, v4

    if-lez v6, :cond_1d

    .line 1644
    long-to-int v3, v4

    .line 1645
    :cond_1d
    const/high16 v6, 0x2000000

    if-le v3, v6, :cond_23

    .line 1646
    const/high16 v3, 0x2000000

    .line 1647
    :cond_23
    new-array v0, v3, [D

    .line 1648
    .local v0, "a":[D
    const/4 v2, 0x0

    .line 1649
    .local v2, "j":I
    :cond_26
    iget-wide v6, v1, Ljava/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;->value:D

    aput-wide v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_34

    invoke-virtual {p0, v1}, Ljava/util/Spliterators$AbstractDoubleSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 1650
    :cond_34
    iput v2, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->batch:I

    .line 1651
    iget-wide v6, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-eqz v6, :cond_47

    .line 1652
    iget-wide v6, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    int-to-long v8, v2

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    .line 1653
    :cond_47
    new-instance v6, Ljava/util/Spliterators$DoubleArraySpliterator;

    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractDoubleSpliterator;->characteristics()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v6, v0, v8, v2, v7}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v6

    .line 1655
    .end local v0    # "a":[D
    .end local v2    # "j":I
    .end local v3    # "n":I
    :cond_52
    const/4 v6, 0x0

    return-object v6
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .prologue
    .line 1632
    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractDoubleSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 1632
    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractDoubleSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
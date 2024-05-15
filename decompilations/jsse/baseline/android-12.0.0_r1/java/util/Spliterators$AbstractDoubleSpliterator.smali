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
.field static final greylist-max-o BATCH_UNIT:I = 0x400

.field static final greylist-max-o MAX_BATCH:I = 0x2000000


# instance fields
.field private greylist-max-o batch:I

.field private final greylist-max-o characteristics:I

.field private greylist-max-o est:J


# direct methods
.method protected constructor whitelist test-api <init>(JI)V
    .registers 5
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 1616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1617
    iput-wide p1, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    .line 1618
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_c

    .line 1619
    or-int/lit16 v0, p3, 0x4000

    goto :goto_d

    .line 1620
    :cond_c
    move v0, p3

    :goto_d
    iput v0, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->characteristics:I

    .line 1621
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1680
    iget v0, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->characteristics:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1668
    iget-wide v0, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    return-wide v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 11

    .line 1639
    new-instance v0, Ljava/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;

    invoke-direct {v0}, Ljava/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;-><init>()V

    .line 1640
    .local v0, "holder":Ljava/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;
    iget-wide v1, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    .line 1641
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_50

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$AbstractDoubleSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 1642
    iget v3, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 1643
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_1d

    .line 1644
    long-to-int v3, v1

    .line 1645
    :cond_1d
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_23

    .line 1646
    const/high16 v3, 0x2000000

    .line 1647
    :cond_23
    new-array v4, v3, [D

    .line 1648
    .local v4, "a":[D
    const/4 v5, 0x0

    .line 1649
    .local v5, "j":I
    :cond_26
    iget-wide v6, v0, Ljava/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;->value:D

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_34

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$AbstractDoubleSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 1650
    :cond_34
    iput v5, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->batch:I

    .line 1651
    iget-wide v6, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v6, v8

    if-eqz v8, :cond_45

    .line 1652
    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    .line 1653
    :cond_45
    new-instance v6, Ljava/util/Spliterators$DoubleArraySpliterator;

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractDoubleSpliterator;->characteristics()I

    move-result v8

    invoke-direct {v6, v4, v7, v5, v8}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v6

    .line 1655
    .end local v3    # "n":I
    .end local v4    # "a":[D
    .end local v5    # "j":I
    :cond_50
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1599
    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractDoubleSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1599
    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractDoubleSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

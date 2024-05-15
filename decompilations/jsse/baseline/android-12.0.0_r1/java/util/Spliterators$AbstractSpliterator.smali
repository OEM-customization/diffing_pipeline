.class public abstract Ljava/util/Spliterators$AbstractSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
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

    .line 1273
    .local p0, "this":Ljava/util/Spliterators$AbstractSpliterator;, "Ljava/util/Spliterators$AbstractSpliterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1274
    iput-wide p1, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    .line 1275
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_c

    .line 1276
    or-int/lit16 v0, p3, 0x4000

    goto :goto_d

    .line 1277
    :cond_c
    move v0, p3

    :goto_d
    iput v0, p0, Ljava/util/Spliterators$AbstractSpliterator;->characteristics:I

    .line 1278
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1350
    .local p0, "this":Ljava/util/Spliterators$AbstractSpliterator;, "Ljava/util/Spliterators$AbstractSpliterator<TT;>;"
    iget v0, p0, Ljava/util/Spliterators$AbstractSpliterator;->characteristics:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1338
    .local p0, "this":Ljava/util/Spliterators$AbstractSpliterator;, "Ljava/util/Spliterators$AbstractSpliterator<TT;>;"
    iget-wide v0, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    return-wide v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1309
    .local p0, "this":Ljava/util/Spliterators$AbstractSpliterator;, "Ljava/util/Spliterators$AbstractSpliterator<TT;>;"
    new-instance v0, Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;

    invoke-direct {v0}, Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;-><init>()V

    .line 1310
    .local v0, "holder":Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;, "Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer<TT;>;"
    iget-wide v1, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    .line 1311
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_50

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$AbstractSpliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 1312
    iget v3, p0, Ljava/util/Spliterators$AbstractSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 1313
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_1d

    .line 1314
    long-to-int v3, v1

    .line 1315
    :cond_1d
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_23

    .line 1316
    const/high16 v3, 0x2000000

    .line 1317
    :cond_23
    new-array v4, v3, [Ljava/lang/Object;

    .line 1318
    .local v4, "a":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1319
    .local v5, "j":I
    :cond_26
    iget-object v6, v0, Ljava/util/Spliterators$AbstractSpliterator$HoldingConsumer;->value:Ljava/lang/Object;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_34

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$AbstractSpliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 1320
    :cond_34
    iput v5, p0, Ljava/util/Spliterators$AbstractSpliterator;->batch:I

    .line 1321
    iget-wide v6, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v6, v8

    if-eqz v8, :cond_45

    .line 1322
    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/Spliterators$AbstractSpliterator;->est:J

    .line 1323
    :cond_45
    new-instance v6, Ljava/util/Spliterators$ArraySpliterator;

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractSpliterator;->characteristics()I

    move-result v8

    invoke-direct {v6, v4, v7, v5, v8}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v6

    .line 1325
    .end local v3    # "n":I
    .end local v4    # "a":[Ljava/lang/Object;
    .end local v5    # "j":I
    :cond_50
    const/4 v3, 0x0

    return-object v3
.end method

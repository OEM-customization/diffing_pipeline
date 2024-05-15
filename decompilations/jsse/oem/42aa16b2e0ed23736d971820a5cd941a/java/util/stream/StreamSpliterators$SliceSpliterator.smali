.class abstract Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SliceSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;,
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;,
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;,
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;,
        Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field blacklist fence:J

.field blacklist index:J

.field blacklist s:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field final blacklist sliceFence:J

.field final blacklist sliceOrigin:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 610
    const-class v0, Ljava/util/stream/StreamSpliterators;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator;JJJJ)V
    .registers 10
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)V"
        }
    .end annotation

    .line 623
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava/util/Spliterator;, "TT_SPLITR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    nop

    .line 625
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    .line 626
    iput-wide p2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    .line 627
    iput-wide p4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    .line 628
    iput-wide p6, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 629
    iput-wide p8, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    .line 630
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api characteristics()I
    .registers 2

    .line 686
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api estimateSize()J
    .registers 7

    .line 681
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_10

    .line 682
    iget-wide v4, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    goto :goto_12

    :cond_10
    const-wide/16 v2, 0x0

    .line 681
    :goto_12
    return-wide v2
.end method

.method protected abstract blacklist makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 635
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    move-object/from16 v10, p0

    iget-wide v0, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_c

    .line 636
    return-object v1

    .line 638
    :cond_c
    iget-wide v4, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_13

    .line 639
    return-object v1

    .line 648
    :cond_13
    :goto_13
    iget-object v0, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v11

    .line 649
    .local v11, "leftSplit":Ljava/util/Spliterator;, "TT_SPLITR;"
    if-nez v11, :cond_1c

    .line 650
    return-object v1

    .line 652
    :cond_1c
    iget-wide v2, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    invoke-interface {v11}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v4

    add-long v12, v2, v4

    .line 653
    .local v12, "leftSplitFenceUnbounded":J
    iget-wide v2, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 654
    .local v14, "leftSplitFence":J
    iget-wide v2, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    cmp-long v0, v2, v14

    if-ltz v0, :cond_33

    .line 658
    iput-wide v14, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_3d

    .line 660
    :cond_33
    iget-wide v4, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    cmp-long v0, v14, v4

    if-ltz v0, :cond_3e

    .line 664
    iput-object v11, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->s:Ljava/util/Spliterator;

    .line 665
    iput-wide v14, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    .line 677
    .end local v11    # "leftSplit":Ljava/util/Spliterator;, "TT_SPLITR;"
    .end local v12    # "leftSplitFenceUnbounded":J
    .end local v14    # "leftSplitFence":J
    :goto_3d
    goto :goto_13

    .line 667
    .restart local v11    # "leftSplit":Ljava/util/Spliterator;, "TT_SPLITR;"
    .restart local v12    # "leftSplitFenceUnbounded":J
    .restart local v14    # "leftSplitFence":J
    :cond_3e
    iget-wide v0, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4b

    cmp-long v0, v12, v4

    if-gtz v0, :cond_4b

    .line 670
    iput-wide v14, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 671
    return-object v11

    .line 675
    :cond_4b
    iget-wide v2, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v4, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    iget-wide v6, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iput-wide v14, v10, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v8, v14

    invoke-virtual/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;->makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

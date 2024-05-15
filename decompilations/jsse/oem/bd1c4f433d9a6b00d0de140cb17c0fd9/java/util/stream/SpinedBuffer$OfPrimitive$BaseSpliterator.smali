.class abstract Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.super Ljava/lang/Object;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/SpinedBuffer$OfPrimitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_SP",
        "LITR::Ljava/util/Spliterator$OfPrimitive",
        "<TE;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator$OfPrimitive",
        "<TE;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field final lastSpineElementFence:I

.field final lastSpineIndex:I

.field splChunk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field

.field splElementIndex:I

.field splSpineIndex:I

.field final synthetic this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->-assertionsDisabled:Z

    .line 598
    return-void
.end method

.method constructor <init>(Ljava/util/stream/SpinedBuffer$OfPrimitive;IIII)V
    .registers 7
    .param p2, "firstSpineIndex"    # I
    .param p3, "lastSpineIndex"    # I
    .param p4, "firstSpineElementIndex"    # I
    .param p5, "lastSpineElementFence"    # I

    .prologue
    .line 620
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    .local p1, "this$1":Ljava/util/stream/SpinedBuffer$OfPrimitive;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>;"
    iput-object p1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    iput p2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 623
    iput p3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    .line 624
    iput p4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 625
    iput p5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    .line 626
    sget-boolean v0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->-assertionsDisabled:Z

    if-nez v0, :cond_1f

    iget-object v0, p1, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-nez v0, :cond_1f

    if-nez p2, :cond_19

    if-eqz p3, :cond_1f

    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 627
    :cond_1f
    iget-object v0, p1, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-nez v0, :cond_28

    iget-object v0, p1, Ljava/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    :goto_25
    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    .line 628
    return-void

    .line 627
    :cond_28
    iget-object v0, p1, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v0, v0, p2

    goto :goto_25
.end method


# virtual methods
.method abstract arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;ITT_CONS;)V"
        }
    .end annotation
.end method

.method abstract arraySpliterator(Ljava/lang/Object;II)Ljava/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;II)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public characteristics()I
    .registers 2

    .prologue
    .line 649
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .registers 5

    .prologue
    .line 639
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v0, v1, :cond_e

    .line 640
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    int-to-long v0, v0

    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 639
    :goto_d
    return-wide v0

    .line 642
    :cond_e
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    aget-wide v0, v0, v1

    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 644
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v2, v2, Ljava/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-wide v2, v2, v3

    .line 642
    sub-long/2addr v0, v2

    .line 644
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    int-to-long v2, v2

    .line 642
    sub-long/2addr v0, v2

    goto :goto_d
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-lt v3, v4, :cond_15

    .line 676
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v3, v4, :cond_49

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    if-ge v3, v4, :cond_49

    .line 677
    :cond_15
    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 679
    .local v1, "i":I
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .local v2, "sp":I
    :goto_19
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ge v2, v3, :cond_32

    .line 680
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v3, v3, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v0, v3, v2

    .line 681
    .local v0, "chunk":Ljava/lang/Object;, "TT_ARR;"
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    invoke-virtual {v4, v0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v0, v1, v4, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 682
    const/4 v1, 0x0

    .line 679
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 685
    .end local v0    # "chunk":Ljava/lang/Object;, "TT_ARR;"
    :cond_32
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v3, v4, :cond_4a

    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    .line 686
    .restart local v0    # "chunk":Ljava/lang/Object;, "TT_ARR;"
    :goto_3a
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    invoke-virtual {v3, v0, v1, v4, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 688
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    iput v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 689
    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    iput v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 691
    .end local v0    # "chunk":Ljava/lang/Object;, "TT_ARR;"
    .end local v1    # "i":I
    .end local v2    # "sp":I
    :cond_49
    return-void

    .line 685
    .restart local v1    # "i":I
    .restart local v2    # "sp":I
    :cond_4a
    iget-object v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v3, v3, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    aget-object v0, v3, v4

    .restart local v0    # "chunk":Ljava/lang/Object;, "TT_ARR;"
    goto :goto_3a
.end method

.method abstract newSpliterator(IIII)Ljava/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    .local p1, "consumer":Ljava/lang/Object;, "TT_CONS;"
    const/4 v3, 0x0

    .line 654
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-lt v0, v1, :cond_16

    .line 657
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v0, v1, :cond_4d

    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    if-ge v0, v1, :cond_4d

    .line 658
    :cond_16
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 660
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget-object v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_4b

    .line 661
    iput v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 662
    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 663
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-eqz v0, :cond_4b

    iget v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-gt v0, v1, :cond_4b

    .line 664
    iget-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    .line 666
    :cond_4b
    const/4 v0, 0x1

    return v0

    .line 668
    :cond_4d
    return v3
.end method

.method public trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 695
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ge v2, v3, :cond_35

    .line 697
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    add-int/lit8 v3, v3, -0x1

    .line 698
    iget v4, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget-object v5, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v6, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v6, v6, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v7, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v5

    .line 697
    invoke-virtual {p0, v2, v3, v4, v5}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->newSpliterator(IIII)Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    .line 700
    .local v0, "ret":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    iput v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 701
    iput v8, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 702
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$1:Ljava/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v2, v2, Ljava/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-object v2, v2, v3

    iput-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    .line 703
    return-object v0

    .line 705
    .end local v0    # "ret":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    :cond_35
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v2, v3, :cond_53

    .line 706
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 707
    .local v1, "t":I
    if-nez v1, :cond_45

    .line 708
    return-object v4

    .line 710
    :cond_45
    iget-object v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    iget v3, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    invoke-virtual {p0, v2, v3, v1}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->arraySpliterator(Ljava/lang/Object;II)Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    .line 711
    .restart local v0    # "ret":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    iget v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 712
    return-object v0

    .line 716
    .end local v0    # "ret":Ljava/util/Spliterator$OfPrimitive;, "TT_SPLITR;"
    .end local v1    # "t":I
    :cond_53
    return-object v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 693
    .local p0, "this":Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;, "Ljava/util/stream/SpinedBuffer$OfPrimitive<TE;TT_ARR;TT_CONS;>.BaseSpliterator<TT_SPLITR;>;"
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method

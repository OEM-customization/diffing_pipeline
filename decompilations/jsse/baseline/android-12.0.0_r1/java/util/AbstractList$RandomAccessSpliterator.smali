.class final Ljava/util/AbstractList$RandomAccessSpliterator;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RandomAccessSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist alist:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private blacklist expectedModCount:I

.field private blacklist fence:I

.field private blacklist index:I

.field private final blacklist list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 650
    const-class v0, Ljava/util/AbstractList;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/AbstractList$RandomAccessSpliterator;II)V
    .registers 5
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList$RandomAccessSpliterator<",
            "TE;>;II)V"
        }
    .end annotation

    .line 673
    .local p0, "this":Ljava/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    .local p1, "parent":Ljava/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iget-object v0, p1, Ljava/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    iput-object v0, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    .line 675
    iput p2, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->index:I

    .line 676
    iput p3, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->fence:I

    .line 678
    iget-object v0, p1, Ljava/util/AbstractList$RandomAccessSpliterator;->alist:Ljava/util/AbstractList;

    iput-object v0, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->alist:Ljava/util/AbstractList;

    .line 679
    iget v0, p1, Ljava/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    iput v0, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    .line 680
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 660
    .local p0, "this":Ljava/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    nop

    .line 663
    iput-object p1, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    .line 664
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->index:I

    .line 665
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->fence:I

    .line 667
    instance-of v1, p1, Ljava/util/AbstractList;

    if-eqz v1, :cond_14

    move-object v1, p1

    check-cast v1, Ljava/util/AbstractList;

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    iput-object v1, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->alist:Ljava/util/AbstractList;

    .line 668
    if-eqz v1, :cond_1b

    iget v0, v1, Ljava/util/AbstractList;->modCount:I

    :cond_1b
    iput v0, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    .line 669
    return-void
.end method

.method static blacklist checkAbstractListModCount(Ljava/util/AbstractList;I)V
    .registers 3
    .param p1, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList<",
            "*>;I)V"
        }
    .end annotation

    .line 742
    .local p0, "alist":Ljava/util/AbstractList;, "Ljava/util/AbstractList<*>;"
    if-eqz p0, :cond_d

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    if-ne v0, p1, :cond_7

    goto :goto_d

    .line 743
    :cond_7
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 745
    :cond_d
    :goto_d
    return-void
.end method

.method private static blacklist get(Ljava/util/List;I)Ljava/lang/Object;
    .registers 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;I)TE;"
        }
    .end annotation

    .line 735
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 736
    :catch_5
    move-exception v0

    .line 737
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method private blacklist getFence()I
    .registers 4

    .line 684
    .local p0, "this":Ljava/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    iget-object v0, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    .line 685
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget v1, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->fence:I

    move v2, v1

    .local v2, "hi":I
    if-gez v1, :cond_16

    .line 686
    iget-object v1, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->alist:Ljava/util/AbstractList;

    if-eqz v1, :cond_f

    .line 687
    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    .line 689
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->fence:I

    move v2, v1

    .line 691
    :cond_16
    return v2
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 730
    .local p0, "this":Ljava/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    const/16 v0, 0x4050

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 726
    .local p0, "this":Ljava/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList$RandomAccessSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 714
    .local p0, "this":Ljava/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object v0, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    .line 716
    .local v0, "lst":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList$RandomAccessSpliterator;->getFence()I

    move-result v1

    .line 717
    .local v1, "hi":I
    iget v2, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->index:I

    .line 718
    .local v2, "i":I
    iput v1, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->index:I

    .line 719
    :goto_d
    if-ge v2, v1, :cond_19

    .line 720
    invoke-static {v0, v2}, Ljava/util/AbstractList$RandomAccessSpliterator;->get(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 719
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 722
    :cond_19
    iget-object v3, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->alist:Ljava/util/AbstractList;

    iget v4, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    invoke-static {v3, v4}, Ljava/util/AbstractList$RandomAccessSpliterator;->checkAbstractListModCount(Ljava/util/AbstractList;I)V

    .line 723
    return-void
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 701
    .local p0, "this":Ljava/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_22

    .line 703
    invoke-direct {p0}, Ljava/util/AbstractList$RandomAccessSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->index:I

    .line 704
    .local v1, "i":I
    if-ge v1, v0, :cond_20

    .line 705
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->index:I

    .line 706
    iget-object v2, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    invoke-static {v2, v1}, Ljava/util/AbstractList$RandomAccessSpliterator;->get(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 707
    iget-object v2, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->alist:Ljava/util/AbstractList;

    iget v3, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    invoke-static {v2, v3}, Ljava/util/AbstractList$RandomAccessSpliterator;->checkAbstractListModCount(Ljava/util/AbstractList;I)V

    .line 708
    const/4 v2, 0x1

    return v2

    .line 710
    :cond_20
    const/4 v2, 0x0

    return v2

    .line 702
    .end local v0    # "hi":I
    .end local v1    # "i":I
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 695
    .local p0, "this":Ljava/util/AbstractList$RandomAccessSpliterator;, "Ljava/util/AbstractList$RandomAccessSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList$RandomAccessSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->index:I

    .local v1, "lo":I
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 696
    .local v2, "mid":I
    if-lt v1, v2, :cond_e

    const/4 v3, 0x0

    goto :goto_15

    .line 697
    :cond_e
    new-instance v3, Ljava/util/AbstractList$RandomAccessSpliterator;

    iput v2, p0, Ljava/util/AbstractList$RandomAccessSpliterator;->index:I

    invoke-direct {v3, p0, v1, v2}, Ljava/util/AbstractList$RandomAccessSpliterator;-><init>(Ljava/util/AbstractList$RandomAccessSpliterator;II)V

    .line 696
    :goto_15
    return-object v3
.end method

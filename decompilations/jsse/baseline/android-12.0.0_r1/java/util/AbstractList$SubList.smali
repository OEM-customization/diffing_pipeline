.class Ljava/util/AbstractList$SubList;
.super Ljava/util/AbstractList;
.source "AbstractList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final blacklist offset:I

.field private final blacklist parent:Ljava/util/AbstractList$SubList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList$SubList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final blacklist root:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected blacklist size:I


# direct methods
.method protected constructor blacklist <init>(Ljava/util/AbstractList$SubList;II)V
    .registers 6
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList$SubList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 769
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p1, "parent":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 770
    iget-object v0, p1, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iput-object v0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    .line 771
    iput-object p1, p0, Ljava/util/AbstractList$SubList;->parent:Ljava/util/AbstractList$SubList;

    .line 772
    iget v1, p1, Ljava/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p2

    iput v1, p0, Ljava/util/AbstractList$SubList;->offset:I

    .line 773
    sub-int v1, p3, p2

    iput v1, p0, Ljava/util/AbstractList$SubList;->size:I

    .line 774
    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList$SubList;->modCount:I

    .line 775
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/AbstractList;II)V
    .registers 5
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 758
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p1, "root":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 759
    iput-object p1, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/AbstractList$SubList;->parent:Ljava/util/AbstractList$SubList;

    .line 761
    iput p2, p0, Ljava/util/AbstractList$SubList;->offset:I

    .line 762
    sub-int v0, p3, p2

    iput v0, p0, Ljava/util/AbstractList$SubList;->size:I

    .line 763
    iget v0, p1, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList$SubList;->modCount:I

    .line 764
    return-void
.end method

.method static synthetic blacklist access$100(Ljava/util/AbstractList$SubList;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/AbstractList$SubList;

    .line 748
    iget v0, p0, Ljava/util/AbstractList$SubList;->offset:I

    return v0
.end method

.method static synthetic blacklist access$200(Ljava/util/AbstractList$SubList;)Ljava/util/AbstractList;
    .registers 2
    .param p0, "x0"    # Ljava/util/AbstractList$SubList;

    .line 748
    iget-object v0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    return-object v0
.end method

.method static synthetic blacklist access$300(Ljava/util/AbstractList$SubList;I)V
    .registers 2
    .param p0, "x0"    # Ljava/util/AbstractList$SubList;
    .param p1, "x1"    # I

    .line 748
    invoke-direct {p0, p1}, Ljava/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    return-void
.end method

.method private blacklist checkForComodification()V
    .registers 3

    .line 903
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    iget-object v0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iget v1, p0, Ljava/util/AbstractList$SubList;->modCount:I

    if-ne v0, v1, :cond_9

    .line 905
    return-void

    .line 904
    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private blacklist outOfBoundsMsg(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 899
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/AbstractList$SubList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist rangeCheckForAdd(I)V
    .registers 4
    .param p1, "index"    # I

    .line 894
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    if-ltz p1, :cond_7

    iget v0, p0, Ljava/util/AbstractList$SubList;->size:I

    if-gt p1, v0, :cond_7

    .line 896
    return-void

    .line 895
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/AbstractList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateSizeAndModCount(I)V
    .registers 4
    .param p1, "sizeChange"    # I

    .line 908
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    move-object v0, p0

    .line 910
    .local v0, "slist":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    :goto_1
    iget v1, v0, Ljava/util/AbstractList$SubList;->size:I

    add-int/2addr v1, p1

    iput v1, v0, Ljava/util/AbstractList$SubList;->size:I

    .line 911
    iget-object v1, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, v0, Ljava/util/AbstractList$SubList;->modCount:I

    .line 912
    iget-object v0, v0, Ljava/util/AbstractList$SubList;->parent:Ljava/util/AbstractList$SubList;

    .line 913
    if-nez v0, :cond_11

    .line 914
    return-void

    .line 913
    :cond_11
    goto :goto_1
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 795
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, p1}, Ljava/util/AbstractList$SubList;->rangeCheckForAdd(I)V

    .line 796
    invoke-direct {p0}, Ljava/util/AbstractList$SubList;->checkForComodification()V

    .line 797
    iget-object v0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 798
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    .line 799
    return-void
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 820
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/AbstractList$SubList;->rangeCheckForAdd(I)V

    .line 821
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 822
    .local v0, "cSize":I
    if-nez v0, :cond_b

    .line 823
    const/4 v1, 0x0

    return v1

    .line 824
    :cond_b
    invoke-direct {p0}, Ljava/util/AbstractList$SubList;->checkForComodification()V

    .line 825
    iget-object v1, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$SubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    .line 826
    invoke-direct {p0, v0}, Ljava/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    .line 827
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 816
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Ljava/util/AbstractList$SubList;->size:I

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractList$SubList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 784
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    iget v0, p0, Ljava/util/AbstractList$SubList;->size:I

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 785
    invoke-direct {p0}, Ljava/util/AbstractList$SubList;->checkForComodification()V

    .line 786
    iget-object v0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 831
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractList$SubList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 835
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList$SubList;->checkForComodification()V

    .line 836
    invoke-direct {p0, p1}, Ljava/util/AbstractList$SubList;->rangeCheckForAdd(I)V

    .line 838
    new-instance v0, Ljava/util/AbstractList$SubList$1;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractList$SubList$1;-><init>(Ljava/util/AbstractList$SubList;I)V

    return-object v0
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 802
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    iget v0, p0, Ljava/util/AbstractList$SubList;->size:I

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 803
    invoke-direct {p0}, Ljava/util/AbstractList$SubList;->checkForComodification()V

    .line 804
    iget-object v0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 805
    .local v0, "result":Ljava/lang/Object;, "TE;"
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Ljava/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    .line 806
    return-object v0
.end method

.method protected whitelist test-api removeRange(II)V
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 810
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList$SubList;->checkForComodification()V

    .line 811
    iget-object v0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubList;->offset:I

    add-int v2, v1, p1

    add-int/2addr v1, p2

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractList;->removeRange(II)V

    .line 812
    sub-int v0, p1, p2

    invoke-direct {p0, v0}, Ljava/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    .line 813
    return-void
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 778
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/AbstractList$SubList;->size:I

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    .line 779
    invoke-direct {p0}, Ljava/util/AbstractList$SubList;->checkForComodification()V

    .line 780
    iget-object v0, p0, Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 790
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList$SubList;->checkForComodification()V

    .line 791
    iget v0, p0, Ljava/util/AbstractList$SubList;->size:I

    return v0
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 889
    .local p0, "this":Ljava/util/AbstractList$SubList;, "Ljava/util/AbstractList$SubList<TE;>;"
    iget v0, p0, Ljava/util/AbstractList$SubList;->size:I

    invoke-static {p1, p2, v0}, Ljava/util/AbstractList$SubList;->subListRangeCheck(III)V

    .line 890
    new-instance v0, Ljava/util/AbstractList$SubList;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/AbstractList$SubList;-><init>(Ljava/util/AbstractList$SubList;II)V

    return-object v0
.end method

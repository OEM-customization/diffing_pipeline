.class Ljava/util/ArrayList$SubList;
.super Ljava/util/AbstractList;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final greylist offset:I

.field private final greylist parent:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final greylist parentOffset:I

.field greylist size:I

.field final synthetic blacklist this$0:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Ljava/util/ArrayList;Ljava/util/AbstractList;III)V
    .registers 7
    .param p3, "offset"    # I
    .param p4, "fromIndex"    # I
    .param p5, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList<",
            "TE;>;III)V"
        }
    .end annotation

    .line 1029
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    .local p2, "parent":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    iput-object p1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 1030
    iput-object p2, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    .line 1031
    iput p4, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    .line 1032
    add-int v0, p3, p4

    iput v0, p0, Ljava/util/ArrayList$SubList;->offset:I

    .line 1033
    sub-int v0, p5, p4

    iput v0, p0, Ljava/util/ArrayList$SubList;->size:I

    .line 1034
    iget p1, p1, Ljava/util/ArrayList;->modCount:I

    iput p1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    .line 1035
    return-void
.end method

.method private greylist-max-o outOfBoundsMsg(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 1243
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api add(ILjava/lang/Object;)V
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1062
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    if-ltz p1, :cond_29

    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    if-gt p1, v0, :cond_29

    .line 1064
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-ne v0, v1, :cond_23

    .line 1066
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 1067
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    .line 1068
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList$SubList;->size:I

    .line 1069
    return-void

    .line 1065
    :cond_23
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1063
    :cond_29
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api addAll(ILjava/util/Collection;)Z
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1096
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-ltz p1, :cond_31

    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    if-gt p1, v0, :cond_31

    .line 1098
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1099
    .local v0, "cSize":I
    if-nez v0, :cond_e

    .line 1100
    const/4 v1, 0x0

    return v1

    .line 1102
    :cond_e
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iget v2, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-ne v1, v2, :cond_2b

    .line 1104
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    .line 1105
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    .line 1106
    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/util/ArrayList$SubList;->size:I

    .line 1107
    const/4 v1, 0x1

    return v1

    .line 1103
    :cond_2b
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1097
    .end local v0    # "cSize":I
    :cond_31
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1092
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList$SubList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1048
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    if-ltz p1, :cond_1e

    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    if-ge p1, v0, :cond_1e

    .line 1050
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-ne v0, v1, :cond_18

    .line 1052
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v0, v0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0

    .line 1051
    :cond_18
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1049
    :cond_1e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1111
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    invoke-virtual {p0}, Ljava/util/ArrayList$SubList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1115
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-ne v0, v1, :cond_20

    .line 1117
    if-ltz p1, :cond_16

    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    if-gt p1, v0, :cond_16

    .line 1119
    iget v0, p0, Ljava/util/ArrayList$SubList;->offset:I

    .line 1121
    .local v0, "offset":I
    new-instance v1, Ljava/util/ArrayList$SubList$1;

    invoke-direct {v1, p0, p1, v0}, Ljava/util/ArrayList$SubList$1;-><init>(Ljava/util/ArrayList$SubList;II)V

    return-object v1

    .line 1118
    .end local v0    # "offset":I
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_20
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api remove(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1072
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    if-ltz p1, :cond_2a

    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    if-ge p1, v0, :cond_2a

    .line 1074
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-ne v0, v1, :cond_24

    .line 1076
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 1077
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    .line 1078
    iget v1, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/ArrayList$SubList;->size:I

    .line 1079
    return-object v0

    .line 1075
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    :cond_24
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1073
    :cond_2a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist core-platform-api test-api removeRange(II)V
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 1083
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-ne v0, v1, :cond_20

    .line 1085
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/ArrayList$SubList;->parentOffset:I

    add-int v2, v1, p1

    add-int/2addr v1, p2

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractList;->removeRange(II)V

    .line 1087
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->parent:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    .line 1088
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/ArrayList$SubList;->size:I

    .line 1089
    return-void

    .line 1084
    :cond_20
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1038
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    if-ltz p1, :cond_27

    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    if-ge p1, v0, :cond_27

    .line 1040
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-ne v0, v1, :cond_21

    .line 1042
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v0, v0, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    .line 1043
    .local v0, "oldValue":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    add-int/2addr v2, p1

    aput-object p2, v1, v2

    .line 1044
    return-object v0

    .line 1041
    .end local v0    # "oldValue":Ljava/lang/Object;, "TE;"
    :cond_21
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1039
    :cond_27
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/util/ArrayList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 3

    .line 1056
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iget-object v0, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$SubList;->modCount:I

    if-ne v0, v1, :cond_b

    .line 1058
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    return v0

    .line 1057
    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api spliterator()Ljava/util/Spliterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1247
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iget v0, p0, Ljava/util/ArrayList$SubList;->modCount:I

    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    if-ne v0, v1, :cond_17

    .line 1249
    new-instance v0, Ljava/util/ArrayList$ArrayListSpliterator;

    iget-object v1, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v2, p0, Ljava/util/ArrayList$SubList;->offset:I

    iget v3, p0, Ljava/util/ArrayList$SubList;->size:I

    add-int/2addr v3, v2

    iget v4, p0, Ljava/util/ArrayList$SubList;->modCount:I

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/ArrayList$ArrayListSpliterator;-><init>(Ljava/util/ArrayList;III)V

    return-object v0

    .line 1248
    :cond_17
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api subList(II)Ljava/util/List;
    .registers 10
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1238
    .local p0, "this":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iget v0, p0, Ljava/util/ArrayList$SubList;->size:I

    invoke-static {p1, p2, v0}, Ljava/util/ArrayList$SubList;->subListRangeCheck(III)V

    .line 1239
    new-instance v0, Ljava/util/ArrayList$SubList;

    iget-object v2, p0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v4, p0, Ljava/util/ArrayList$SubList;->offset:I

    move-object v1, v0

    move-object v3, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayList$SubList;-><init>(Ljava/util/ArrayList;Ljava/util/AbstractList;III)V

    return-object v0
.end method

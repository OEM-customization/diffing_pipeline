.class Ljava/util/ArrayList$Itr;
.super Ljava/lang/Object;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field greylist-max-o cursor:I

.field greylist-max-o expectedModCount:I

.field greylist-max-o lastRet:I

.field protected greylist-max-o limit:I

.field final synthetic blacklist this$0:Ljava/util/ArrayList;


# direct methods
.method private constructor blacklist <init>(Ljava/util/ArrayList;)V
    .registers 3

    .line 840
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    # getter for: Ljava/util/ArrayList;->size:I
    invoke-static {p1}, Ljava/util/ArrayList;->access$100(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Ljava/util/ArrayList$Itr;->limit:I

    .line 850
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    .line 851
    iget p1, p1, Ljava/util/ArrayList;->modCount:I

    iput p1, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/ArrayList;Ljava/util/ArrayList$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/ArrayList;
    .param p2, "x1"    # Ljava/util/ArrayList$1;

    .line 840
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList$Itr;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 891
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    iget-object v0, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    # getter for: Ljava/util/ArrayList;->size:I
    invoke-static {v0}, Ljava/util/ArrayList;->access$100(Ljava/util/ArrayList;)I

    move-result v0

    .line 893
    .local v0, "size":I
    iget v1, p0, Ljava/util/ArrayList$Itr;->cursor:I

    .line 894
    .local v1, "i":I
    if-lt v1, v0, :cond_e

    .line 895
    return-void

    .line 897
    :cond_e
    iget-object v2, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget-object v2, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 898
    .local v2, "elementData":[Ljava/lang/Object;
    array-length v3, v2

    if-ge v1, v3, :cond_3d

    .line 901
    :goto_15
    if-eq v1, v0, :cond_28

    iget-object v3, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    iget v4, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    if-ne v3, v4, :cond_28

    .line 902
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget-object v1, v2, v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v1, v3

    goto :goto_15

    .line 905
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_28
    iput v1, p0, Ljava/util/ArrayList$Itr;->cursor:I

    .line 906
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    .line 908
    iget-object v3, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    iget v4, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    if-ne v3, v4, :cond_37

    .line 910
    return-void

    .line 909
    :cond_37
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 899
    :cond_3d
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 854
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    iget v0, p0, Ljava/util/ArrayList$Itr;->cursor:I

    iget v1, p0, Ljava/util/ArrayList$Itr;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 859
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_2a

    .line 861
    iget v0, p0, Ljava/util/ArrayList$Itr;->cursor:I

    .line 862
    .local v0, "i":I
    iget v1, p0, Ljava/util/ArrayList$Itr;->limit:I

    if-ge v0, v1, :cond_24

    .line 864
    iget-object v1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 865
    .local v1, "elementData":[Ljava/lang/Object;
    array-length v2, v1

    if-ge v0, v2, :cond_1e

    .line 867
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava/util/ArrayList$Itr;->cursor:I

    .line 868
    iput v0, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    aget-object v2, v1, v0

    return-object v2

    .line 866
    :cond_1e
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 863
    .end local v1    # "elementData":[Ljava/lang/Object;
    :cond_24
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 860
    .end local v0    # "i":I
    :cond_2a
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 872
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    iget v0, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    if-ltz v0, :cond_35

    .line 874
    iget-object v0, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_2f

    .line 878
    :try_start_c
    iget-object v0, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v1, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 879
    iget v0, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    iput v0, p0, Ljava/util/ArrayList$Itr;->cursor:I

    .line 880
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    .line 881
    iget-object v0, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    .line 882
    iget v0, p0, Ljava/util/ArrayList$Itr;->limit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/ArrayList$Itr;->limit:I
    :try_end_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_26} :catch_28

    .line 885
    nop

    .line 886
    return-void

    .line 883
    :catch_28
    move-exception v0

    .line 884
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 875
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_2f
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 873
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

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
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field cursor:I

.field expectedModCount:I

.field lastRet:I

.field protected limit:I

.field final synthetic this$0:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 840
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iput-object p1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iget-object v0, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/ArrayList;->-get0(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Ljava/util/ArrayList$Itr;->limit:I

    .line 850
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    .line 851
    iget-object v0, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    .line 840
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList$Itr;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/ArrayList;
    .param p2, "-this1"    # Ljava/util/ArrayList$Itr;

    .prologue
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList$Itr;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 891
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    iget-object v4, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/ArrayList;->-get0(Ljava/util/ArrayList;)I

    move-result v3

    .line 893
    .local v3, "size":I
    iget v1, p0, Ljava/util/ArrayList$Itr;->cursor:I

    .line 894
    .local v1, "i":I
    if-lt v1, v3, :cond_e

    .line 895
    return-void

    .line 897
    :cond_e
    iget-object v4, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget-object v0, v4, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 898
    .local v0, "elementData":[Ljava/lang/Object;
    array-length v4, v0

    if-lt v1, v4, :cond_2c

    .line 899
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 901
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1b
    if-eq v2, v3, :cond_2e

    iget-object v4, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v4, v4, Ljava/util/ArrayList;->modCount:I

    iget v5, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    if-ne v4, v5, :cond_2e

    .line 902
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v4, v0, v2

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2c
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1b

    .line 905
    :cond_2e
    iput v2, p0, Ljava/util/ArrayList$Itr;->cursor:I

    .line 906
    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    .line 908
    iget-object v4, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v4, v4, Ljava/util/ArrayList;->modCount:I

    iget v5, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    if-eq v4, v5, :cond_42

    .line 909
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 910
    :cond_42
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 854
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    iget v0, p0, Ljava/util/ArrayList$Itr;->cursor:I

    iget v1, p0, Ljava/util/ArrayList$Itr;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 859
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    iget-object v2, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    iget v3, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    if-eq v2, v3, :cond_e

    .line 860
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 861
    :cond_e
    iget v1, p0, Ljava/util/ArrayList$Itr;->cursor:I

    .line 862
    .local v1, "i":I
    iget v2, p0, Ljava/util/ArrayList$Itr;->limit:I

    if-lt v1, v2, :cond_1a

    .line 863
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 864
    :cond_1a
    iget-object v2, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget-object v0, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 865
    .local v0, "elementData":[Ljava/lang/Object;
    array-length v2, v0

    if-lt v1, v2, :cond_27

    .line 866
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 867
    :cond_27
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/ArrayList$Itr;->cursor:I

    .line 868
    iput v1, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    aget-object v2, v0, v1

    return-object v2
.end method

.method public remove()V
    .registers 4

    .prologue
    .line 872
    .local p0, "this":Ljava/util/ArrayList$Itr;, "Ljava/util/ArrayList<TE;>.Itr;"
    iget v1, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    if-gez v1, :cond_a

    .line 873
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 874
    :cond_a
    iget-object v1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iget v2, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    if-eq v1, v2, :cond_18

    .line 875
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 878
    :cond_18
    :try_start_18
    iget-object v1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v2, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 879
    iget v1, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    iput v1, p0, Ljava/util/ArrayList$Itr;->cursor:I

    .line 880
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    .line 881
    iget-object v1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iput v1, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    .line 882
    iget v1, p0, Ljava/util/ArrayList$Itr;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/ArrayList$Itr;->limit:I
    :try_end_32
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_32} :catch_33

    .line 886
    return-void

    .line 883
    :catch_33
    move-exception v0

    .line 884
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

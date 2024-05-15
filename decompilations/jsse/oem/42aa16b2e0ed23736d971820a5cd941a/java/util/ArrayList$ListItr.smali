.class Ljava/util/ArrayList$ListItr;
.super Ljava/util/ArrayList$Itr;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "TE;>.Itr;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Ljava/util/ArrayList;I)V
    .registers 4
    .param p2, "index"    # I

    .line 917
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    iput-object p1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    .line 918
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/ArrayList$Itr;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList$1;)V

    .line 919
    iput p2, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    .line 920
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 962
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    if-ne v0, v1, :cond_2b

    .line 966
    :try_start_8
    iget v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    .line 967
    .local v0, "i":I
    iget-object v1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 968
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    .line 969
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    .line 970
    iget-object v1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iput v1, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    .line 971
    iget v1, p0, Ljava/util/ArrayList$ListItr;->limit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/ArrayList$ListItr;->limit:I
    :try_end_22
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_22} :catch_24

    .line 974
    .end local v0    # "i":I
    nop

    .line 975
    return-void

    .line 972
    :catch_24
    move-exception v0

    .line 973
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 963
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_2b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api hasPrevious()Z
    .registers 2

    .line 923
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist core-platform-api test-api nextIndex()I
    .registers 2

    .line 927
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    return v0
.end method

.method public whitelist core-platform-api test-api previous()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 936
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    iget-object v0, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    if-ne v0, v1, :cond_28

    .line 938
    iget v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    .line 939
    .local v0, "i":I
    if-ltz v0, :cond_22

    .line 941
    iget-object v1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 942
    .local v1, "elementData":[Ljava/lang/Object;
    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 944
    iput v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    .line 945
    iput v0, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    aget-object v2, v1, v0

    return-object v2

    .line 943
    :cond_1c
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 940
    .end local v1    # "elementData":[Ljava/lang/Object;
    :cond_22
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 937
    .end local v0    # "i":I
    :cond_28
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api previousIndex()I
    .registers 2

    .line 931
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist core-platform-api test-api set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 949
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    if-ltz v0, :cond_22

    .line 951
    iget-object v0, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iget v1, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    if-ne v0, v1, :cond_1c

    .line 955
    :try_start_c
    iget-object v0, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v1, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_13} :catch_15

    .line 958
    nop

    .line 959
    return-void

    .line 956
    :catch_15
    move-exception v0

    .line 957
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 952
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_1c
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 950
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

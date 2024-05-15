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
        "Ljava/util/ArrayList",
        "<TE;>.Itr;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;I)V
    .registers 4
    .param p2, "index"    # I

    .prologue
    .line 917
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    .local p1, "this$0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    iput-object p1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    .line 918
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/ArrayList$Itr;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList$Itr;)V

    .line 919
    iput p2, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    .line 920
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 962
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    iget v3, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    if-eq v2, v3, :cond_e

    .line 963
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 966
    :cond_e
    :try_start_e
    iget v1, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    .line 967
    .local v1, "i":I
    iget-object v2, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 968
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    .line 969
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    .line 970
    iget-object v2, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    iput v2, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    .line 971
    iget v2, p0, Ljava/util/ArrayList$ListItr;->limit:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/ArrayList$ListItr;->limit:I
    :try_end_28
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_28} :catch_29

    .line 975
    return-void

    .line 972
    .end local v1    # "i":I
    :catch_29
    move-exception v0

    .line 973
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public hasPrevious()Z
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    const/4 v0, 0x0

    .line 923
    iget v1, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 927
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 936
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    iget-object v2, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    iget v3, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    if-eq v2, v3, :cond_e

    .line 937
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 938
    :cond_e
    iget v2, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    add-int/lit8 v1, v2, -0x1

    .line 939
    .local v1, "i":I
    if-gez v1, :cond_1a

    .line 940
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 941
    :cond_1a
    iget-object v2, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget-object v0, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 942
    .local v0, "elementData":[Ljava/lang/Object;
    array-length v2, v0

    if-lt v1, v2, :cond_27

    .line 943
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 944
    :cond_27
    iput v1, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    .line 945
    iput v1, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    aget-object v2, v0, v1

    return-object v2
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 931
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 949
    .local p0, "this":Ljava/util/ArrayList$ListItr;, "Ljava/util/ArrayList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v1, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    if-gez v1, :cond_a

    .line 950
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 951
    :cond_a
    iget-object v1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iget v2, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    if-eq v1, v2, :cond_18

    .line 952
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 955
    :cond_18
    :try_start_18
    iget-object v1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v2, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_1f} :catch_20

    .line 959
    return-void

    .line 956
    :catch_20
    move-exception v0

    .line 957
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

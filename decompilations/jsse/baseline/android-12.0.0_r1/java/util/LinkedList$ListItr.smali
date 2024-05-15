.class Ljava/util/LinkedList$ListItr;
.super Ljava/lang/Object;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o expectedModCount:I

.field private greylist-max-o lastReturned:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private greylist-max-o next:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private greylist-max-o nextIndex:I

.field final synthetic blacklist this$0:Ljava/util/LinkedList;


# direct methods
.method constructor blacklist <init>(Ljava/util/LinkedList;I)V
    .registers 4
    .param p2, "index"    # I

    .line 877
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iput-object p1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    iget v0, p1, Ljava/util/LinkedList;->modCount:I

    iput v0, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    .line 879
    iget v0, p1, Ljava/util/LinkedList;->size:I

    if-ne p2, v0, :cond_f

    const/4 p1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    move-result-object p1

    :goto_13
    iput-object p1, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    .line 880
    iput p2, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    .line 881
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 943
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 944
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    .line 945
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_10

    .line 946
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->linkLast(Ljava/lang/Object;)V

    goto :goto_15

    .line 948
    :cond_10
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedList;->linkBefore(Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    .line 949
    :goto_15
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    .line 950
    iget v0, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    .line 951
    return-void
.end method

.method final greylist-max-o checkForComodification()V
    .registers 3

    .line 965
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->modCount:I

    iget v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    if-ne v0, v1, :cond_9

    .line 967
    return-void

    .line 966
    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 954
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    :goto_3
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->modCount:I

    iget v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    if-ne v0, v1, :cond_29

    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget v1, v1, Ljava/util/LinkedList;->size:I

    if-ge v0, v1, :cond_29

    .line 956
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iget-object v0, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 957
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    .line 958
    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    .line 959
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    goto :goto_3

    .line 961
    :cond_29
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 962
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 884
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget v1, v1, Ljava/util/LinkedList;->size:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api hasPrevious()Z
    .registers 2

    .line 899
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 888
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 889
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 892
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    .line 893
    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    .line 894
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    .line 895
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    iget-object v0, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    return-object v0

    .line 890
    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api nextIndex()I
    .registers 2

    .line 913
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    return v0
.end method

.method public whitelist test-api previous()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 903
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 904
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 907
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_12

    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget-object v0, v0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    goto :goto_14

    :cond_12
    iget-object v0, v0, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    :goto_14
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    .line 908
    iget v1, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    .line 909
    iget-object v0, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    return-object v0

    .line 905
    :cond_21
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api previousIndex()I
    .registers 2

    .line 917
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 921
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 922
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    if-eqz v0, :cond_29

    .line 925
    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 926
    .local v0, "lastNext":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget-object v2, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    .line 927
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iget-object v2, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    if-ne v1, v2, :cond_19

    .line 928
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    goto :goto_1f

    .line 930
    :cond_19
    iget v1, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    .line 931
    :goto_1f
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    .line 932
    iget v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    .line 933
    return-void

    .line 923
    .end local v0    # "lastNext":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 936
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    if-eqz v0, :cond_c

    .line 938
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 939
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    iput-object p1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    .line 940
    return-void

    .line 937
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.class Ljava/util/SubList$1;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/SubList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final i:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/SubList;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Ljava/util/SubList;I)V
    .registers 6

    .prologue
    .line 1
    .local p1, "this$0":Ljava/util/SubList;, "Ljava/util/SubList<TE;>;"
    iput-object p1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    iput p2, p0, Ljava/util/SubList$1;->val$index:I

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    iget-object v0, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v0}, Ljava/util/SubList;->-get0(Ljava/util/SubList;)Ljava/util/AbstractList;

    move-result-object v0

    iget v1, p0, Ljava/util/SubList$1;->val$index:I

    iget-object v2, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v2}, Ljava/util/SubList;->-get1(Ljava/util/SubList;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    .line 1
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 742
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 743
    iget-object v0, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    iget-object v1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v1}, Ljava/util/SubList;->-get0(Ljava/util/SubList;)Ljava/util/AbstractList;

    move-result-object v1

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, v0, Ljava/util/SubList;->modCount:I

    .line 744
    iget-object v0, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v0}, Ljava/util/SubList;->-get2(Ljava/util/SubList;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/SubList;->-set0(Ljava/util/SubList;I)I

    .line 745
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 702
    invoke-virtual {p0}, Ljava/util/SubList$1;->nextIndex()I

    move-result v0

    iget-object v1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v1}, Ljava/util/SubList;->-get2(Ljava/util/SubList;)I

    move-result v1

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasPrevious()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 713
    invoke-virtual {p0}, Ljava/util/SubList$1;->previousIndex()I

    move-result v1

    if-ltz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 706
    invoke-virtual {p0}, Ljava/util/SubList$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 707
    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 709
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .registers 3

    .prologue
    .line 724
    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget-object v1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v1}, Ljava/util/SubList;->-get1(Ljava/util/SubList;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 717
    invoke-virtual {p0}, Ljava/util/SubList$1;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 718
    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 720
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 3

    .prologue
    .line 728
    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget-object v1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v1}, Ljava/util/SubList;->-get1(Ljava/util/SubList;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 732
    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 733
    iget-object v0, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    iget-object v1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v1}, Ljava/util/SubList;->-get0(Ljava/util/SubList;)Ljava/util/AbstractList;

    move-result-object v1

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, v0, Ljava/util/SubList;->modCount:I

    .line 734
    iget-object v0, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v0}, Ljava/util/SubList;->-get2(Ljava/util/SubList;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/util/SubList;->-set0(Ljava/util/SubList;I)I

    .line 735
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 738
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 739
    return-void
.end method

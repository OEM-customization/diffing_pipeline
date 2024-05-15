.class Ljava/util/AbstractList$SubList$1;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/AbstractList$SubList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final blacklist i:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/AbstractList$SubList;

.field final synthetic blacklist val$index:I


# direct methods
.method constructor blacklist <init>(Ljava/util/AbstractList$SubList;I)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/AbstractList$SubList;

    .line 838
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    iput-object p1, p0, Ljava/util/AbstractList$SubList$1;->this$0:Ljava/util/AbstractList$SubList;

    iput p2, p0, Ljava/util/AbstractList$SubList$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    iget-object p2, p0, Ljava/util/AbstractList$SubList$1;->this$0:Ljava/util/AbstractList$SubList;

    .line 840
    # getter for: Ljava/util/AbstractList$SubList;->root:Ljava/util/AbstractList;
    invoke-static {p2}, Ljava/util/AbstractList$SubList;->access$200(Ljava/util/AbstractList$SubList;)Ljava/util/AbstractList;

    move-result-object p2

    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->this$0:Ljava/util/AbstractList$SubList;

    # getter for: Ljava/util/AbstractList$SubList;->offset:I
    invoke-static {v0}, Ljava/util/AbstractList$SubList;->access$100(Ljava/util/AbstractList$SubList;)I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubList$1;->val$index:I

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    iput-object p2, p0, Ljava/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    .line 839
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

    .line 882
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 883
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->this$0:Ljava/util/AbstractList$SubList;

    const/4 v1, 0x1

    # invokes: Ljava/util/AbstractList$SubList;->updateSizeAndModCount(I)V
    invoke-static {v0, v1}, Ljava/util/AbstractList$SubList;->access$300(Ljava/util/AbstractList$SubList;I)V

    .line 884
    return-void
.end method

.method public whitelist core-platform-api test-api hasNext()Z
    .registers 3

    .line 843
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    invoke-virtual {p0}, Ljava/util/AbstractList$SubList$1;->nextIndex()I

    move-result v0

    iget-object v1, p0, Ljava/util/AbstractList$SubList$1;->this$0:Ljava/util/AbstractList$SubList;

    iget v1, v1, Ljava/util/AbstractList$SubList;->size:I

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist core-platform-api test-api hasPrevious()Z
    .registers 2

    .line 854
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    invoke-virtual {p0}, Ljava/util/AbstractList$SubList$1;->previousIndex()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 847
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    invoke-virtual {p0}, Ljava/util/AbstractList$SubList$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 848
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 850
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api nextIndex()I
    .registers 3

    .line 865
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget-object v1, p0, Ljava/util/AbstractList$SubList$1;->this$0:Ljava/util/AbstractList$SubList;

    # getter for: Ljava/util/AbstractList$SubList;->offset:I
    invoke-static {v1}, Ljava/util/AbstractList$SubList;->access$100(Ljava/util/AbstractList$SubList;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 858
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    invoke-virtual {p0}, Ljava/util/AbstractList$SubList$1;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 859
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 861
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api previousIndex()I
    .registers 3

    .line 869
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget-object v1, p0, Ljava/util/AbstractList$SubList$1;->this$0:Ljava/util/AbstractList$SubList;

    # getter for: Ljava/util/AbstractList$SubList;->offset:I
    invoke-static {v1}, Ljava/util/AbstractList$SubList;->access$100(Ljava/util/AbstractList$SubList;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api remove()V
    .registers 3

    .line 873
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 874
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->this$0:Ljava/util/AbstractList$SubList;

    const/4 v1, -0x1

    # invokes: Ljava/util/AbstractList$SubList;->updateSizeAndModCount(I)V
    invoke-static {v0, v1}, Ljava/util/AbstractList$SubList;->access$300(Ljava/util/AbstractList$SubList;I)V

    .line 875
    return-void
.end method

.method public whitelist core-platform-api test-api set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 878
    .local p0, "this":Ljava/util/AbstractList$SubList$1;, "Ljava/util/AbstractList$SubList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 879
    return-void
.end method

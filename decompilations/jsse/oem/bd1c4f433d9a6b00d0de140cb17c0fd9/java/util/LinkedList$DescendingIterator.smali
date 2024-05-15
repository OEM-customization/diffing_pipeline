.class Ljava/util/LinkedList$DescendingIterator;
.super Ljava/lang/Object;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final itr:Ljava/util/LinkedList$ListItr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>.",
            "ListItr;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/LinkedList;


# direct methods
.method private constructor <init>(Ljava/util/LinkedList;)V
    .registers 5

    .prologue
    .line 992
    .local p0, "this":Ljava/util/LinkedList$DescendingIterator;, "Ljava/util/LinkedList<TE;>.DescendingIterator;"
    .local p1, "this$0":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    iput-object p1, p0, Ljava/util/LinkedList$DescendingIterator;->this$0:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    new-instance v0, Ljava/util/LinkedList$ListItr;

    iget-object v1, p0, Ljava/util/LinkedList$DescendingIterator;->this$0:Ljava/util/LinkedList;

    iget-object v2, p0, Ljava/util/LinkedList$DescendingIterator;->this$0:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedList$ListItr;-><init>(Ljava/util/LinkedList;I)V

    iput-object v0, p0, Ljava/util/LinkedList$DescendingIterator;->itr:Ljava/util/LinkedList$ListItr;

    .line 992
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/LinkedList;Ljava/util/LinkedList$DescendingIterator;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/LinkedList;
    .param p2, "-this1"    # Ljava/util/LinkedList$DescendingIterator;

    .prologue
    .local p0, "this":Ljava/util/LinkedList$DescendingIterator;, "Ljava/util/LinkedList<TE;>.DescendingIterator;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList$DescendingIterator;-><init>(Ljava/util/LinkedList;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 995
    .local p0, "this":Ljava/util/LinkedList$DescendingIterator;, "Ljava/util/LinkedList<TE;>.DescendingIterator;"
    iget-object v0, p0, Ljava/util/LinkedList$DescendingIterator;->itr:Ljava/util/LinkedList$ListItr;

    invoke-virtual {v0}, Ljava/util/LinkedList$ListItr;->hasPrevious()Z

    move-result v0

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
    .line 998
    .local p0, "this":Ljava/util/LinkedList$DescendingIterator;, "Ljava/util/LinkedList<TE;>.DescendingIterator;"
    iget-object v0, p0, Ljava/util/LinkedList$DescendingIterator;->itr:Ljava/util/LinkedList$ListItr;

    invoke-virtual {v0}, Ljava/util/LinkedList$ListItr;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 1001
    .local p0, "this":Ljava/util/LinkedList$DescendingIterator;, "Ljava/util/LinkedList<TE;>.DescendingIterator;"
    iget-object v0, p0, Ljava/util/LinkedList$DescendingIterator;->itr:Ljava/util/LinkedList$ListItr;

    invoke-virtual {v0}, Ljava/util/LinkedList$ListItr;->remove()V

    .line 1002
    return-void
.end method

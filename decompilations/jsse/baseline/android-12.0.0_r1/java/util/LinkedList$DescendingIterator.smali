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
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o itr:Ljava/util/LinkedList$ListItr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TE;>.",
            "ListItr;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/LinkedList;


# direct methods
.method private constructor blacklist <init>(Ljava/util/LinkedList;)V
    .registers 4

    .line 992
    .local p0, "this":Ljava/util/LinkedList$DescendingIterator;, "Ljava/util/LinkedList<TE;>.DescendingIterator;"
    iput-object p1, p0, Ljava/util/LinkedList$DescendingIterator;->this$0:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    new-instance v0, Ljava/util/LinkedList$ListItr;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ljava/util/LinkedList$ListItr;-><init>(Ljava/util/LinkedList;I)V

    iput-object v0, p0, Ljava/util/LinkedList$DescendingIterator;->itr:Ljava/util/LinkedList$ListItr;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/LinkedList;Ljava/util/LinkedList$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/LinkedList;
    .param p2, "x1"    # Ljava/util/LinkedList$1;

    .line 992
    .local p0, "this":Ljava/util/LinkedList$DescendingIterator;, "Ljava/util/LinkedList<TE;>.DescendingIterator;"
    invoke-direct {p0, p1}, Ljava/util/LinkedList$DescendingIterator;-><init>(Ljava/util/LinkedList;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 995
    .local p0, "this":Ljava/util/LinkedList$DescendingIterator;, "Ljava/util/LinkedList<TE;>.DescendingIterator;"
    iget-object v0, p0, Ljava/util/LinkedList$DescendingIterator;->itr:Ljava/util/LinkedList$ListItr;

    invoke-virtual {v0}, Ljava/util/LinkedList$ListItr;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 998
    .local p0, "this":Ljava/util/LinkedList$DescendingIterator;, "Ljava/util/LinkedList<TE;>.DescendingIterator;"
    iget-object v0, p0, Ljava/util/LinkedList$DescendingIterator;->itr:Ljava/util/LinkedList$ListItr;

    invoke-virtual {v0}, Ljava/util/LinkedList$ListItr;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 1001
    .local p0, "this":Ljava/util/LinkedList$DescendingIterator;, "Ljava/util/LinkedList<TE;>.DescendingIterator;"
    iget-object v0, p0, Ljava/util/LinkedList$DescendingIterator;->itr:Ljava/util/LinkedList$ListItr;

    invoke-virtual {v0}, Ljava/util/LinkedList$ListItr;->remove()V

    .line 1002
    return-void
.end method

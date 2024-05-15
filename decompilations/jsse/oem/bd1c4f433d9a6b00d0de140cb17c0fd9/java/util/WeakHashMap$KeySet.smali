.class Ljava/util/WeakHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/WeakHashMap;


# direct methods
.method private constructor <init>(Ljava/util/WeakHashMap;)V
    .registers 2

    .prologue
    .line 875
    .local p0, "this":Ljava/util/WeakHashMap$KeySet;, "Ljava/util/WeakHashMap<TK;TV;>.KeySet;"
    .local p1, "this$0":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/WeakHashMap$KeySet;->this$0:Ljava/util/WeakHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$KeySet;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/WeakHashMap;
    .param p2, "-this1"    # Ljava/util/WeakHashMap$KeySet;

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$KeySet;, "Ljava/util/WeakHashMap<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$KeySet;-><init>(Ljava/util/WeakHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 898
    .local p0, "this":Ljava/util/WeakHashMap$KeySet;, "Ljava/util/WeakHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/WeakHashMap$KeySet;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 899
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 885
    .local p0, "this":Ljava/util/WeakHashMap$KeySet;, "Ljava/util/WeakHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/WeakHashMap$KeySet;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 877
    .local p0, "this":Ljava/util/WeakHashMap$KeySet;, "Ljava/util/WeakHashMap<TK;TV;>.KeySet;"
    new-instance v0, Ljava/util/WeakHashMap$KeyIterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$KeySet;->this$0:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/WeakHashMap$KeyIterator;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$KeyIterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 889
    .local p0, "this":Ljava/util/WeakHashMap$KeySet;, "Ljava/util/WeakHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/WeakHashMap$KeySet;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 890
    iget-object v0, p0, Ljava/util/WeakHashMap$KeySet;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const/4 v0, 0x1

    return v0

    .line 894
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 881
    .local p0, "this":Ljava/util/WeakHashMap$KeySet;, "Ljava/util/WeakHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/WeakHashMap$KeySet;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$KeySet;, "Ljava/util/WeakHashMap<TK;TV;>.KeySet;"
    const/4 v2, 0x0

    .line 902
    new-instance v0, Ljava/util/WeakHashMap$KeySpliterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$KeySet;->this$0:Ljava/util/WeakHashMap;

    const/4 v3, -0x1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$KeySpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    return-object v0
.end method

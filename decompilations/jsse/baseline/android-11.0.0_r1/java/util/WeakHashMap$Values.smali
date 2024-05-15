.class Ljava/util/WeakHashMap$Values;
.super Ljava/util/AbstractCollection;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/WeakHashMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/WeakHashMap;)V
    .registers 2

    .line 928
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    iput-object p1, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/WeakHashMap;
    .param p2, "x1"    # Ljava/util/WeakHashMap$1;

    .line 928
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$Values;-><init>(Ljava/util/WeakHashMap;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api clear()V
    .registers 2

    .line 942
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 943
    return-void
.end method

.method public whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 938
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 930
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/WeakHashMap$ValueIterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/WeakHashMap$ValueIterator;-><init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$1;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 934
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api spliterator()Ljava/util/Spliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 946
    .local p0, "this":Ljava/util/WeakHashMap$Values;, "Ljava/util/WeakHashMap<TK;TV;>.Values;"
    new-instance v6, Ljava/util/WeakHashMap$ValueSpliterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$Values;->this$0:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$ValueSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    return-object v6
.end method

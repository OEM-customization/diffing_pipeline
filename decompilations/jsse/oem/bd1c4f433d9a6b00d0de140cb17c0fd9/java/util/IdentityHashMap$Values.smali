.class Ljava/util/IdentityHashMap$Values;
.super Ljava/util/AbstractCollection;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor <init>(Ljava/util/IdentityHashMap;)V
    .registers 2

    .prologue
    .line 1080
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    .local p1, "this$0":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$Values;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/IdentityHashMap;
    .param p2, "-this1"    # Ljava/util/IdentityHashMap$Values;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$Values;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1100
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 1101
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1088
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1082
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/IdentityHashMap$ValueIterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$ValueIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$ValueIterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1091
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1092
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 1093
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1094
    const/4 v1, 0x1

    return v1

    .line 1097
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1085
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->size:I

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    const/4 v2, 0x0

    .line 1134
    new-instance v0, Ljava/util/IdentityHashMap$ValueSpliterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    const/4 v3, -0x1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$ValueSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1103
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/IdentityHashMap$Values;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$Values;, "Ljava/util/IdentityHashMap<TK;TV;>.Values;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v7, 0x0

    .line 1107
    iget-object v6, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    iget v0, v6, Ljava/util/IdentityHashMap;->modCount:I

    .line 1108
    .local v0, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$Values;->size()I

    move-result v2

    .line 1109
    .local v2, "size":I
    array-length v6, p1

    if-ge v6, v2, :cond_1a

    .line 1110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    .line 1111
    .restart local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_1a
    iget-object v6, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    iget-object v3, v6, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1112
    .local v3, "tab":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1113
    .local v4, "ti":I
    const/4 v1, 0x0

    .local v1, "si":I
    :goto_20
    array-length v6, v3

    if-ge v1, v6, :cond_3b

    .line 1114
    aget-object v6, v3, v1

    if-eqz v6, :cond_38

    .line 1116
    if-lt v4, v2, :cond_2f

    .line 1117
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 1119
    :cond_2f
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "ti":I
    .local v5, "ti":I
    add-int/lit8 v6, v1, 0x1

    aget-object v6, v3, v6

    aput-object v6, p1, v4

    move v4, v5

    .line 1113
    .end local v5    # "ti":I
    .restart local v4    # "ti":I
    :cond_38
    add-int/lit8 v1, v1, 0x2

    goto :goto_20

    .line 1123
    :cond_3b
    if-lt v4, v2, :cond_43

    iget-object v6, p0, Ljava/util/IdentityHashMap$Values;->this$0:Ljava/util/IdentityHashMap;

    iget v6, v6, Ljava/util/IdentityHashMap;->modCount:I

    if-eq v0, v6, :cond_49

    .line 1124
    :cond_43
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 1127
    :cond_49
    array-length v6, p1

    if-ge v4, v6, :cond_4e

    .line 1128
    aput-object v7, p1, v4

    .line 1130
    :cond_4e
    return-object p1
.end method

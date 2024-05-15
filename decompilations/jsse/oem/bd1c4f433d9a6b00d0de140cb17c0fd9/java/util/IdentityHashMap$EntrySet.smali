.class Ljava/util/IdentityHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor <init>(Ljava/util/IdentityHashMap;)V
    .registers 2

    .prologue
    .line 1184
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    .local p1, "this$0":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$EntrySet;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/IdentityHashMap;
    .param p2, "-this1"    # Ljava/util/IdentityHashMap$EntrySet;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$EntrySet;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1204
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 1205
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1189
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    .line 1190
    const/4 v1, 0x0

    return v1

    :cond_6
    move-object v0, p1

    .line 1191
    check-cast v0, Ljava/util/Map$Entry;

    .line 1192
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/IdentityHashMap;->-wrap0(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1186
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$EntryIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$EntryIterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1195
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    .line 1196
    const/4 v1, 0x0

    return v1

    :cond_6
    move-object v0, p1

    .line 1197
    check-cast v0, Ljava/util/Map$Entry;

    .line 1198
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/IdentityHashMap;->-wrap1(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1212
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    const/4 v1, 0x0

    .line 1214
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1215
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1216
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1217
    const/4 v1, 0x1

    goto :goto_8

    .line 1220
    :cond_1d
    return v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1201
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->size:I

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    .line 1257
    new-instance v0, Ljava/util/IdentityHashMap$EntrySpliterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    const/4 v3, -0x1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$EntrySpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1224
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/IdentityHashMap$EntrySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySet;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySet;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v10, 0x0

    .line 1229
    iget-object v7, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    iget v0, v7, Ljava/util/IdentityHashMap;->modCount:I

    .line 1230
    .local v0, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySet;->size()I

    move-result v3

    .line 1231
    .local v3, "size":I
    array-length v7, p1

    if-ge v7, v3, :cond_1a

    .line 1232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    .line 1233
    .restart local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_1a
    iget-object v7, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    iget-object v4, v7, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1234
    .local v4, "tab":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1235
    .local v5, "ti":I
    const/4 v2, 0x0

    .local v2, "si":I
    :goto_20
    array-length v7, v4

    if-ge v2, v7, :cond_44

    .line 1237
    aget-object v1, v4, v2

    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_41

    .line 1239
    if-lt v5, v3, :cond_2f

    .line 1240
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    .line 1242
    :cond_2f
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ti":I
    .local v6, "ti":I
    new-instance v7, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {v1}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    aget-object v9, v4, v9

    invoke-direct {v7, v8, v9}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, p1, v5

    move v5, v6

    .line 1235
    .end local v6    # "ti":I
    .restart local v5    # "ti":I
    :cond_41
    add-int/lit8 v2, v2, 0x2

    goto :goto_20

    .line 1246
    .end local v1    # "key":Ljava/lang/Object;
    :cond_44
    if-lt v5, v3, :cond_4c

    iget-object v7, p0, Ljava/util/IdentityHashMap$EntrySet;->this$0:Ljava/util/IdentityHashMap;

    iget v7, v7, Ljava/util/IdentityHashMap;->modCount:I

    if-eq v0, v7, :cond_52

    .line 1247
    :cond_4c
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    .line 1250
    :cond_52
    array-length v7, p1

    if-ge v5, v7, :cond_57

    .line 1251
    aput-object v10, p1, v5

    .line 1253
    :cond_57
    return-object p1
.end method

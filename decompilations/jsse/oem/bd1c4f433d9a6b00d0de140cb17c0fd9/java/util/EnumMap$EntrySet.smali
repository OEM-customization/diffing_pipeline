.class Ljava/util/EnumMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
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
.field final synthetic this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .registers 2

    .prologue
    .line 473
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    .local p1, "this$0":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EntrySet;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/EnumMap;
    .param p2, "-this1"    # Ljava/util/EnumMap$EntrySet;

    .prologue
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap$EntrySet;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method

.method private fillEntryArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 510
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    const/4 v1, 0x0

    .line 511
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v3}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_38

    .line 512
    iget-object v3, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v3}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v0

    if-eqz v3, :cond_35

    .line 513
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    .line 514
    iget-object v4, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v4}, Ljava/util/EnumMap;->-get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v5, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    iget-object v6, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v6}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-static {v5, v6}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 513
    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p1, v1

    move v1, v2

    .line 511
    .end local v2    # "j":I
    .restart local v1    # "j":I
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 515
    :cond_38
    return-object p1
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 494
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 495
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 479
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    .line 480
    const/4 v1, 0x0

    return v1

    :cond_6
    move-object v0, p1

    .line 481
    check-cast v0, Ljava/util/Map$Entry;

    .line 482
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/EnumMap;->-wrap0(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .line 475
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/EnumMap$EntryIterator;

    iget-object v1, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$EntryIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EntryIterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 485
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    .line 486
    const/4 v1, 0x0

    return v1

    :cond_6
    move-object v0, p1

    .line 487
    check-cast v0, Ljava/util/Map$Entry;

    .line 488
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/EnumMap;->-wrap1(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 491
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-get1(Ljava/util/EnumMap;)I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 497
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-get1(Ljava/util/EnumMap;)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Ljava/util/EnumMap$EntrySet;->fillEntryArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Ljava/util/EnumMap$EntrySet;, "Ljava/util/EnumMap<TK;TV;>.EntrySet;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/EnumMap$EntrySet;->size()I

    move-result v0

    .line 502
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_15

    .line 504
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 503
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    .line 505
    .restart local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_15
    array-length v1, p1

    if-le v1, v0, :cond_1b

    .line 506
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 507
    :cond_1b
    invoke-direct {p0, p1}, Ljava/util/EnumMap$EntrySet;->fillEntryArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

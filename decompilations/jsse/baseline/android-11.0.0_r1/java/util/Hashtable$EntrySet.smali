.class Ljava/util/Hashtable$EntrySet;
.super Ljava/util/AbstractSet;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor blacklist <init>(Ljava/util/Hashtable;)V
    .registers 2

    .line 687
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iput-object p1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/Hashtable;
    .param p2, "x1"    # Ljava/util/Hashtable$1;

    .line 687
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api add(Ljava/lang/Object;)Z
    .registers 2

    .line 687
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o add(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 693
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    .local p1, "o":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api clear()V
    .registers 2

    .line 743
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 744
    return-void
.end method

.method public whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 697
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 698
    return v1

    .line 699
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 700
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 701
    .local v2, "key":Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    # getter for: Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {v3}, Ljava/util/Hashtable;->access$400(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v3

    .line 702
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 703
    .local v4, "hash":I
    const v5, 0x7fffffff

    and-int/2addr v5, v4

    array-length v6, v3

    rem-int/2addr v5, v6

    .line 705
    .local v5, "index":I
    aget-object v6, v3, v5

    .local v6, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :goto_1f
    if-eqz v6, :cond_30

    .line 706
    iget v7, v6, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v7, v4, :cond_2d

    invoke-virtual {v6, v0}, Ljava/util/Hashtable$HashtableEntry;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 707
    const/4 v1, 0x1

    return v1

    .line 705
    :cond_2d
    iget-object v6, v6, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_1f

    .line 708
    .end local v6    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_30
    return v1
.end method

.method public whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 689
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    const/4 v1, 0x2

    # invokes: Ljava/util/Hashtable;->getIterator(I)Ljava/util/Iterator;
    invoke-static {v0, v1}, Ljava/util/Hashtable;->access$100(Ljava/util/Hashtable;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api remove(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 712
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 713
    return v1

    .line 714
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 715
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 716
    .local v2, "key":Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    # getter for: Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {v3}, Ljava/util/Hashtable;->access$400(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v3

    .line 717
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 718
    .local v4, "hash":I
    const v5, 0x7fffffff

    and-int/2addr v5, v4

    array-length v6, v3

    rem-int/2addr v5, v6

    .line 721
    .local v5, "index":I
    aget-object v6, v3, v5

    .line 722
    .local v6, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v7, 0x0

    .local v7, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_20
    if-eqz v6, :cond_4a

    .line 723
    iget v8, v6, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v8, v4, :cond_46

    invoke-virtual {v6, v0}, Ljava/util/Hashtable$HashtableEntry;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 724
    iget-object v1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    # operator++ for: Ljava/util/Hashtable;->modCount:I
    invoke-static {v1}, Ljava/util/Hashtable;->access$508(Ljava/util/Hashtable;)I

    .line 725
    if-eqz v7, :cond_38

    .line 726
    iget-object v1, v6, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v1, v7, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_3c

    .line 728
    :cond_38
    iget-object v1, v6, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v1, v3, v5

    .line 730
    :goto_3c
    iget-object v1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    # operator-- for: Ljava/util/Hashtable;->count:I
    invoke-static {v1}, Ljava/util/Hashtable;->access$210(Ljava/util/Hashtable;)I

    .line 731
    const/4 v1, 0x0

    iput-object v1, v6, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 732
    const/4 v1, 0x1

    return v1

    .line 722
    :cond_46
    move-object v7, v6

    iget-object v6, v6, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_20

    .line 735
    .end local v7    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_4a
    return v1
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 739
    .local p0, "this":Ljava/util/Hashtable$EntrySet;, "Ljava/util/Hashtable<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    # getter for: Ljava/util/Hashtable;->count:I
    invoke-static {v0}, Ljava/util/Hashtable;->access$200(Ljava/util/Hashtable;)I

    move-result v0

    return v0
.end method

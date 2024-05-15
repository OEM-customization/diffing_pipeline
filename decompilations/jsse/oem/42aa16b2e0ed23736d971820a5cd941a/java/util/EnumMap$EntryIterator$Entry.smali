.class Ljava/util/EnumMap$EntryIterator$Entry;
.super Ljava/lang/Object;
.source "EnumMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap$EntryIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o index:I

.field final synthetic blacklist this$1:Ljava/util/EnumMap$EntryIterator;


# direct methods
.method private constructor blacklist <init>(Ljava/util/EnumMap$EntryIterator;I)V
    .registers 3
    .param p2, "index"    # I

    .line 587
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iput-object p1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iput p2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    .line 589
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/EnumMap$EntryIterator;ILjava/util/EnumMap$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/util/EnumMap$EntryIterator;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/util/EnumMap$1;

    .line 584
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap$EntryIterator$Entry;-><init>(Ljava/util/EnumMap$EntryIterator;I)V

    return-void
.end method

.method static synthetic blacklist access$1500(Ljava/util/EnumMap$EntryIterator$Entry;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/EnumMap$EntryIterator$Entry;

    .line 584
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    return v0
.end method

.method static synthetic blacklist access$1502(Ljava/util/EnumMap$EntryIterator$Entry;I)I
    .registers 2
    .param p0, "x0"    # Ljava/util/EnumMap$EntryIterator$Entry;
    .param p1, "x1"    # I

    .line 584
    iput p1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    return p1
.end method

.method private greylist-max-o checkIndexForEntryUse()V
    .registers 3

    .line 639
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    if-ltz v0, :cond_5

    .line 641
    return-void

    .line 640
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entry was removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 609
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_b

    .line 610
    if-ne p1, p0, :cond_9

    goto :goto_a

    :cond_9
    move v1, v2

    :goto_a
    return v1

    .line 612
    :cond_b
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_10

    .line 613
    return v2

    .line 615
    :cond_10
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 616
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v3, v3, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget-object v4, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v4, v4, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->vals:[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/EnumMap;->access$600(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v4

    iget v5, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v4, v4, v5

    # invokes: Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v3, v4}, Ljava/util/EnumMap;->access$1200(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 617
    .local v3, "ourValue":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 618
    .local v4, "hisValue":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v6, v6, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;
    invoke-static {v6}, Ljava/util/EnumMap;->access$1100(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v6

    iget v7, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_48

    if-eq v3, v4, :cond_47

    if-eqz v3, :cond_48

    .line 620
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    :cond_47
    goto :goto_49

    :cond_48
    move v1, v2

    .line 618
    :goto_49
    return v1
.end method

.method public blacklist getKey()Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 592
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 593
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v0, v0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;
    invoke-static {v0}, Ljava/util/EnumMap;->access$1100(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v0

    iget v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getKey()Ljava/lang/Object;
    .registers 2

    .line 584
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-virtual {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->getKey()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 597
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 598
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v0, v0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->vals:[Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/EnumMap;->access$600(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v1, v1, v2

    # invokes: Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Ljava/util/EnumMap;->access$1200(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 624
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_9

    .line 625
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 627
    :cond_9
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v0, v0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    # invokes: Ljava/util/EnumMap;->entryHashCode(I)I
    invoke-static {v0, v1}, Ljava/util/EnumMap;->access$1600(Ljava/util/EnumMap;I)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 602
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 603
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v0, v0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->vals:[Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/EnumMap;->access$600(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v1, v1, v2

    # invokes: Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Ljava/util/EnumMap;->access$1200(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 604
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->vals:[Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/EnumMap;->access$600(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    iget-object v3, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v3, v3, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    # invokes: Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v3, p1}, Ljava/util/EnumMap;->access$500(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 605
    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 631
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_9

    .line 632
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 634
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;
    invoke-static {v1}, Ljava/util/EnumMap;->access$1100(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget-object v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v2, v2, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    .line 635
    # getter for: Ljava/util/EnumMap;->vals:[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/EnumMap;->access$600(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v2, v2, v3

    # invokes: Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v1, v2}, Ljava/util/EnumMap;->access$1200(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    return-object v0
.end method

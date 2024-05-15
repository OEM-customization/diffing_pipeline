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
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$1:Ljava/util/EnumMap$EntryIterator;


# direct methods
.method static synthetic -get0(Ljava/util/EnumMap$EntryIterator$Entry;)I
    .registers 2
    .param p0, "-this"    # Ljava/util/EnumMap$EntryIterator$Entry;

    .prologue
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    return v0
.end method

.method static synthetic -set0(Ljava/util/EnumMap$EntryIterator$Entry;I)I
    .registers 2
    .param p0, "-this"    # Ljava/util/EnumMap$EntryIterator$Entry;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    return p1
.end method

.method private constructor <init>(Ljava/util/EnumMap$EntryIterator;I)V
    .registers 3
    .param p2, "index"    # I

    .prologue
    .line 587
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    .local p1, "this$1":Ljava/util/EnumMap$EntryIterator;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iput p2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    .line 589
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap$EntryIterator;ILjava/util/EnumMap$EntryIterator$Entry;)V
    .registers 4
    .param p1, "this$1"    # Ljava/util/EnumMap$EntryIterator;
    .param p2, "index"    # I
    .param p3, "-this2"    # Ljava/util/EnumMap$EntryIterator$Entry;

    .prologue
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap$EntryIterator$Entry;-><init>(Ljava/util/EnumMap$EntryIterator;I)V

    return-void
.end method

.method private checkIndexForEntryUse()V
    .registers 3

    .prologue
    .line 639
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_d

    .line 640
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Entry was removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_d
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 609
    iget v5, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    if-gez v5, :cond_b

    .line 610
    if-ne p1, p0, :cond_9

    :goto_8
    return v3

    :cond_9
    move v3, v4

    goto :goto_8

    .line 612
    :cond_b
    instance-of v5, p1, Ljava/util/Map$Entry;

    if-nez v5, :cond_10

    .line 613
    return v4

    :cond_10
    move-object v0, p1

    .line 615
    check-cast v0, Ljava/util/Map$Entry;

    .line 616
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v5, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v5, v5, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget-object v6, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v6, v6, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v6}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v6

    iget v7, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v6, v6, v7

    invoke-static {v5, v6}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 617
    .local v2, "ourValue":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 618
    .local v1, "hisValue":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v6, v6, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v6}, Ljava/util/EnumMap;->-get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v6

    iget v7, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_45

    .line 619
    if-eq v2, v1, :cond_46

    .line 620
    if-eqz v2, :cond_45

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 618
    :cond_45
    :goto_45
    return v4

    :cond_46
    move v4, v3

    .line 619
    goto :goto_45
.end method

.method public getKey()Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 592
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 593
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v0, v0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v0

    iget v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 591
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-virtual {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->getKey()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 597
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 598
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v0, v0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
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

    invoke-static {v0, v1}, Ljava/util/EnumMap;->-wrap2(Ljava/util/EnumMap;I)I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, "this":Ljava/util/EnumMap$EntryIterator$Entry;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator.Entry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/util/EnumMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 603
    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget-object v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v2, v2, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v2}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 604
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    iget-object v3, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v3, v3, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v3, p1}, Ljava/util/EnumMap;->-wrap3(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 605
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
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

    invoke-static {v1}, Ljava/util/EnumMap;->-get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 635
    iget-object v1, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v1, v1, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    iget-object v2, p0, Ljava/util/EnumMap$EntryIterator$Entry;->this$1:Ljava/util/EnumMap$EntryIterator;

    iget-object v2, v2, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    invoke-static {v2}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Ljava/util/EnumMap$EntryIterator$Entry;->index:I

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 634
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

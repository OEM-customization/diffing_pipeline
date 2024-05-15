.class Ljava/util/TreeMap$TreeMapSpliterator;
.super Ljava/lang/Object;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TreeMapSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field current:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field est:I

.field expectedModCount:I

.field fence:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field side:I

.field final tree:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V
    .registers 7
    .param p4, "side"    # I
    .param p5, "est"    # I
    .param p6, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;III)V"
        }
    .end annotation

    .prologue
    .line 2735
    .local p0, "this":Ljava/util/TreeMap$TreeMapSpliterator;, "Ljava/util/TreeMap$TreeMapSpliterator<TK;TV;>;"
    .local p1, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "origin":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2738
    iput-object p1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    .line 2739
    iput-object p2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 2740
    iput-object p3, p0, Ljava/util/TreeMap$TreeMapSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 2741
    iput p4, p0, Ljava/util/TreeMap$TreeMapSpliterator;->side:I

    .line 2742
    iput p5, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    .line 2743
    iput p6, p0, Ljava/util/TreeMap$TreeMapSpliterator;->expectedModCount:I

    .line 2744
    return-void
.end method


# virtual methods
.method public final estimateSize()J
    .registers 3

    .prologue
    .line 2761
    .local p0, "this":Ljava/util/TreeMap$TreeMapSpliterator;, "Ljava/util/TreeMap$TreeMapSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$TreeMapSpliterator;->getEstimate()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method final getEstimate()I
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/TreeMap$TreeMapSpliterator;, "Ljava/util/TreeMap$TreeMapSpliterator<TK;TV;>;"
    const/4 v2, 0x0

    .line 2748
    iget v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    .local v0, "s":I
    if-gez v0, :cond_1e

    .line 2749
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    .local v1, "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    if-eqz v1, :cond_24

    .line 2750
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1f

    invoke-virtual {v1}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    :goto_10
    iput-object v2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 2751
    invoke-static {v1}, Ljava/util/TreeMap;->-get4(Ljava/util/TreeMap;)I

    move-result v0

    .end local v0    # "s":I
    iput v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    .line 2752
    .restart local v0    # "s":I
    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v2

    iput v2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->expectedModCount:I

    .line 2757
    .end local v1    # "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    :cond_1e
    :goto_1e
    return v0

    .line 2750
    .restart local v1    # "t":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    :cond_1f
    invoke-virtual {v1}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    goto :goto_10

    .line 2755
    :cond_24
    iput v2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    const/4 v0, 0x0

    goto :goto_1e
.end method

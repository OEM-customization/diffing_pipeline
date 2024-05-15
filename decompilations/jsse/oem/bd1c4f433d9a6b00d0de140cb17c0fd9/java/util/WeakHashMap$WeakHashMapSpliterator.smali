.class Ljava/util/WeakHashMap$WeakHashMapSpliterator;
.super Ljava/lang/Object;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakHashMapSpliterator"
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
.field current:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field est:I

.field expectedModCount:I

.field fence:I

.field index:I

.field final map:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;IIII)V
    .registers 6
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    .prologue
    .line 1070
    .local p0, "this":Ljava/util/WeakHashMap$WeakHashMapSpliterator;, "Ljava/util/WeakHashMap$WeakHashMapSpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    iput-object p1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    .line 1074
    iput p2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    .line 1075
    iput p3, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    .line 1076
    iput p4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    .line 1077
    iput p5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    .line 1078
    return-void
.end method


# virtual methods
.method public final estimateSize()J
    .registers 3

    .prologue
    .line 1092
    .local p0, "this":Ljava/util/WeakHashMap$WeakHashMapSpliterator;, "Ljava/util/WeakHashMap$WeakHashMapSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    .line 1093
    iget v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    int-to-long v0, v0

    return-wide v0
.end method

.method final getFence()I
    .registers 4

    .prologue
    .line 1082
    .local p0, "this":Ljava/util/WeakHashMap$WeakHashMapSpliterator;, "Ljava/util/WeakHashMap$WeakHashMapSpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    .local v0, "hi":I
    if-gez v0, :cond_15

    .line 1083
    iget-object v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    .line 1084
    .local v1, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    iput v2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    .line 1085
    iget v2, v1, Ljava/util/WeakHashMap;->modCount:I

    iput v2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    .line 1086
    iget-object v2, v1, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v0, v2

    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    .line 1088
    .end local v1    # "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .restart local v0    # "hi":I
    :cond_15
    return v0
.end method

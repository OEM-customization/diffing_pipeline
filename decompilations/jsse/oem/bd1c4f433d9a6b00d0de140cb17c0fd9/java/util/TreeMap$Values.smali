.class Ljava/util/TreeMap$Values;
.super Ljava/util/AbstractCollection;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;)V
    .registers 2

    .prologue
    .line 1056
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    .local p1, "this$0":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1080
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 1081
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1066
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsValue(Ljava/lang/Object;)Z

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
    .line 1058
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/TreeMap$ValueIterator;

    iget-object v1, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/TreeMap$ValueIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1070
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    iget-object v1, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_6
    if-eqz v0, :cond_1e

    .line 1071
    invoke-virtual {v0}, Ljava/util/TreeMap$TreeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1072
    iget-object v1, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    invoke-static {v1, v0}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1073
    const/4 v1, 0x1

    return v1

    .line 1070
    :cond_19
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    goto :goto_6

    .line 1076
    :cond_1e
    const/4 v1, 0x0

    return v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1062
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$Values;, "Ljava/util/TreeMap<TK;TV;>.Values;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1084
    new-instance v0, Ljava/util/TreeMap$ValueSpliterator;

    iget-object v1, p0, Ljava/util/TreeMap$Values;->this$0:Ljava/util/TreeMap;

    const/4 v5, -0x1

    move-object v3, v2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$ValueSpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v0
.end method

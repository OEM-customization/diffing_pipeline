.class final Ljava/util/LinkedHashMap$LinkedEntryIterator;
.super Ljava/util/LinkedHashMap$LinkedHashIterator;
.source "LinkedHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LinkedEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>.",
        "LinkedHashIterator;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/LinkedHashMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/LinkedHashMap;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/LinkedHashMap;

    .line 791
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntryIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntryIterator;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedEntryIterator;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap$LinkedHashIterator;-><init>(Ljava/util/LinkedHashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 791
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntryIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntryIterator;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedEntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 793
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntryIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntryIterator;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedEntryIterator;->nextNode()Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    move-result-object v0

    return-object v0
.end method
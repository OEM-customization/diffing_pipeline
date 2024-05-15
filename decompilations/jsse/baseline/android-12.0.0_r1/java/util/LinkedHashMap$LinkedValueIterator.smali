.class final Ljava/util/LinkedHashMap$LinkedValueIterator;
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
    name = "LinkedValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>.",
        "LinkedHashIterator;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/LinkedHashMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/LinkedHashMap;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/LinkedHashMap;

    .line 786
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValueIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValueIterator;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedValueIterator;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap$LinkedHashIterator;-><init>(Ljava/util/LinkedHashMap;)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 788
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValueIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValueIterator;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedValueIterator;->nextNode()Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

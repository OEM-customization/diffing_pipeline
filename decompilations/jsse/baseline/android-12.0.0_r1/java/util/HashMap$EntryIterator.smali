.class final Ljava/util/HashMap$EntryIterator;
.super Ljava/util/HashMap$HashIterator;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "TK;TV;>.HashIterator;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/HashMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/HashMap;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/HashMap;

    .line 1473
    .local p0, "this":Ljava/util/HashMap$EntryIterator;, "Ljava/util/HashMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Ljava/util/HashMap$EntryIterator;->this$0:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Ljava/util/HashMap$HashIterator;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 1473
    .local p0, "this":Ljava/util/HashMap$EntryIterator;, "Ljava/util/HashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/HashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final greylist next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1475
    .local p0, "this":Ljava/util/HashMap$EntryIterator;, "Ljava/util/HashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/HashMap$EntryIterator;->nextNode()Ljava/util/HashMap$Node;

    move-result-object v0

    return-object v0
.end method
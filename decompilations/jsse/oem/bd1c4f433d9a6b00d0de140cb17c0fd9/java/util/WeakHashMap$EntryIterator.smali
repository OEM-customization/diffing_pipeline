.class Ljava/util/WeakHashMap$EntryIterator;
.super Ljava/util/WeakHashMap$HashIterator;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/WeakHashMap",
        "<TK;TV;>.HashIterator<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/WeakHashMap;


# direct methods
.method private constructor <init>(Ljava/util/WeakHashMap;)V
    .registers 2

    .prologue
    .line 843
    .local p0, "this":Ljava/util/WeakHashMap$EntryIterator;, "Ljava/util/WeakHashMap<TK;TV;>.EntryIterator;"
    .local p1, "this$0":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/WeakHashMap$EntryIterator;->this$0:Ljava/util/WeakHashMap;

    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$HashIterator;-><init>(Ljava/util/WeakHashMap;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$EntryIterator;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/WeakHashMap;
    .param p2, "-this1"    # Ljava/util/WeakHashMap$EntryIterator;

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$EntryIterator;, "Ljava/util/WeakHashMap<TK;TV;>.EntryIterator;"
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$EntryIterator;-><init>(Ljava/util/WeakHashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 844
    .local p0, "this":Ljava/util/WeakHashMap$EntryIterator;, "Ljava/util/WeakHashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 845
    .local p0, "this":Ljava/util/WeakHashMap$EntryIterator;, "Ljava/util/WeakHashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$EntryIterator;->nextEntry()Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    return-object v0
.end method

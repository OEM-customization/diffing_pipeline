.class Ljava/util/WeakHashMap$KeyIterator;
.super Ljava/util/WeakHashMap$HashIterator;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/WeakHashMap<",
        "TK;TV;>.HashIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/WeakHashMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/WeakHashMap;)V
    .registers 2

    .line 837
    .local p0, "this":Ljava/util/WeakHashMap$KeyIterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeyIterator;"
    iput-object p1, p0, Ljava/util/WeakHashMap$KeyIterator;->this$0:Ljava/util/WeakHashMap;

    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$HashIterator;-><init>(Ljava/util/WeakHashMap;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/WeakHashMap;
    .param p2, "x1"    # Ljava/util/WeakHashMap$1;

    .line 837
    .local p0, "this":Ljava/util/WeakHashMap$KeyIterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeyIterator;"
    invoke-direct {p0, p1}, Ljava/util/WeakHashMap$KeyIterator;-><init>(Ljava/util/WeakHashMap;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 839
    .local p0, "this":Ljava/util/WeakHashMap$KeyIterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$KeyIterator;->nextEntry()Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

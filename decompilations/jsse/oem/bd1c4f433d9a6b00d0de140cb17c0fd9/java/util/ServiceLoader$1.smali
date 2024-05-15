.class Ljava/util/ServiceLoader$1;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TS;>;"
    }
.end annotation


# instance fields
.field knownProviders:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TS;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/ServiceLoader;


# direct methods
.method constructor <init>(Ljava/util/ServiceLoader;)V
    .registers 3

    .prologue
    .line 1
    .local p1, "this$0":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    iput-object p1, p0, Ljava/util/ServiceLoader$1;->this$0:Ljava/util/ServiceLoader;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iget-object v0, p0, Ljava/util/ServiceLoader$1;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v0}, Ljava/util/ServiceLoader;->-get1(Ljava/util/ServiceLoader;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 482
    iput-object v0, p0, Ljava/util/ServiceLoader$1;->knownProviders:Ljava/util/Iterator;

    .line 1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Ljava/util/ServiceLoader$1;->knownProviders:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 487
    const/4 v0, 0x1

    return v0

    .line 488
    :cond_a
    iget-object v0, p0, Ljava/util/ServiceLoader$1;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v0}, Ljava/util/ServiceLoader;->-get0(Ljava/util/ServiceLoader;)Ljava/util/ServiceLoader$LazyIterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader$LazyIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Ljava/util/ServiceLoader$1;->knownProviders:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 493
    iget-object v0, p0, Ljava/util/ServiceLoader$1;->knownProviders:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 494
    :cond_15
    iget-object v0, p0, Ljava/util/ServiceLoader$1;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v0}, Ljava/util/ServiceLoader;->-get0(Ljava/util/ServiceLoader;)Ljava/util/ServiceLoader$LazyIterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader$LazyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 498
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

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
        "Ljava/util/Iterator<",
        "TS;>;"
    }
.end annotation


# instance fields
.field blacklist knownProviders:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TS;>;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/ServiceLoader;


# direct methods
.method constructor blacklist <init>(Ljava/util/ServiceLoader;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/ServiceLoader;

    .line 480
    .local p0, "this":Ljava/util/ServiceLoader$1;, "Ljava/util/ServiceLoader$1;"
    iput-object p1, p0, Ljava/util/ServiceLoader$1;->this$0:Ljava/util/ServiceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iget-object v0, p0, Ljava/util/ServiceLoader$1;->this$0:Ljava/util/ServiceLoader;

    .line 483
    # getter for: Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Ljava/util/ServiceLoader;->access$300(Ljava/util/ServiceLoader;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ServiceLoader$1;->knownProviders:Ljava/util/Iterator;

    .line 482
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasNext()Z
    .registers 2

    .line 486
    .local p0, "this":Ljava/util/ServiceLoader$1;, "Ljava/util/ServiceLoader$1;"
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

    # getter for: Ljava/util/ServiceLoader;->lookupIterator:Ljava/util/ServiceLoader$LazyIterator;
    invoke-static {v0}, Ljava/util/ServiceLoader;->access$400(Ljava/util/ServiceLoader;)Ljava/util/ServiceLoader$LazyIterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader$LazyIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 492
    .local p0, "this":Ljava/util/ServiceLoader$1;, "Ljava/util/ServiceLoader$1;"
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

    # getter for: Ljava/util/ServiceLoader;->lookupIterator:Ljava/util/ServiceLoader$LazyIterator;
    invoke-static {v0}, Ljava/util/ServiceLoader;->access$400(Ljava/util/ServiceLoader;)Ljava/util/ServiceLoader$LazyIterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader$LazyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api remove()V
    .registers 2

    .line 498
    .local p0, "this":Ljava/util/ServiceLoader$1;, "Ljava/util/ServiceLoader$1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

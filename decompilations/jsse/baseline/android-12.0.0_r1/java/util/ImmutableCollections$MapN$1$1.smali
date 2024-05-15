.class Ljava/util/ImmutableCollections$MapN$1$1;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ImmutableCollections$MapN$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field blacklist idx:I

.field final synthetic blacklist this$1:Ljava/util/ImmutableCollections$MapN$1;


# direct methods
.method constructor blacklist <init>(Ljava/util/ImmutableCollections$MapN$1;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/ImmutableCollections$MapN$1;

    .line 918
    .local p0, "this":Ljava/util/ImmutableCollections$MapN$1$1;, "Ljava/util/ImmutableCollections$MapN$1$1;"
    iput-object p1, p0, Ljava/util/ImmutableCollections$MapN$1$1;->this$1:Ljava/util/ImmutableCollections$MapN$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/ImmutableCollections$MapN$1$1;->idx:I

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 923
    .local p0, "this":Ljava/util/ImmutableCollections$MapN$1$1;, "Ljava/util/ImmutableCollections$MapN$1$1;"
    :goto_0
    iget v0, p0, Ljava/util/ImmutableCollections$MapN$1$1;->idx:I

    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN$1$1;->this$1:Ljava/util/ImmutableCollections$MapN$1;

    iget-object v1, v1, Ljava/util/ImmutableCollections$MapN$1;->this$0:Ljava/util/ImmutableCollections$MapN;

    iget-object v1, v1, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    .line 924
    iget-object v0, p0, Ljava/util/ImmutableCollections$MapN$1$1;->this$1:Ljava/util/ImmutableCollections$MapN$1;

    iget-object v0, v0, Ljava/util/ImmutableCollections$MapN$1;->this$0:Ljava/util/ImmutableCollections$MapN;

    iget-object v0, v0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ImmutableCollections$MapN$1$1;->idx:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_19

    .line 925
    const/4 v0, 0x1

    return v0

    .line 926
    :cond_19
    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/util/ImmutableCollections$MapN$1$1;->idx:I

    goto :goto_0

    .line 928
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 918
    .local p0, "this":Ljava/util/ImmutableCollections$MapN$1$1;, "Ljava/util/ImmutableCollections$MapN$1$1;"
    invoke-virtual {p0}, Ljava/util/ImmutableCollections$MapN$1$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 933
    .local p0, "this":Ljava/util/ImmutableCollections$MapN$1$1;, "Ljava/util/ImmutableCollections$MapN$1$1;"
    invoke-virtual {p0}, Ljava/util/ImmutableCollections$MapN$1$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 935
    new-instance v0, Ljava/util/KeyValueHolder;

    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN$1$1;->this$1:Ljava/util/ImmutableCollections$MapN$1;

    iget-object v1, v1, Ljava/util/ImmutableCollections$MapN$1;->this$0:Ljava/util/ImmutableCollections$MapN;

    iget-object v1, v1, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ImmutableCollections$MapN$1$1;->idx:I

    aget-object v1, v1, v2

    iget-object v2, p0, Ljava/util/ImmutableCollections$MapN$1$1;->this$1:Ljava/util/ImmutableCollections$MapN$1;

    iget-object v2, v2, Ljava/util/ImmutableCollections$MapN$1;->this$0:Ljava/util/ImmutableCollections$MapN;

    iget-object v2, v2, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ImmutableCollections$MapN$1$1;->idx:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Ljava/util/KeyValueHolder;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 937
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget v1, p0, Ljava/util/ImmutableCollections$MapN$1$1;->idx:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/util/ImmutableCollections$MapN$1$1;->idx:I

    .line 938
    return-object v0

    .line 940
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_28
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

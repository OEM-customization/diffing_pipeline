.class Ljava/util/stream/Collectors$Partition$1;
.super Ljava/util/AbstractSet;
.source "Collectors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/Collectors$Partition;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Boolean;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/Collectors$Partition;


# direct methods
.method constructor <init>(Ljava/util/stream/Collectors$Partition;)V
    .registers 2

    .prologue
    .line 1
    .local p1, "this$1":Ljava/util/stream/Collectors$Partition;, "Ljava/util/stream/Collectors$Partition<TT;>;"
    iput-object p1, p0, Ljava/util/stream/Collectors$Partition$1;->this$1:Ljava/util/stream/Collectors$Partition;

    .line 1553
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Boolean;",
            "TT;>;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1556
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Ljava/util/stream/Collectors$Partition$1;->this$1:Ljava/util/stream/Collectors$Partition;

    iget-object v3, v3, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1557
    .local v0, "falseEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Boolean;TT;>;"
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Ljava/util/stream/Collectors$Partition$1;->this$1:Ljava/util/stream/Collectors$Partition;

    iget-object v3, v3, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1558
    .local v1, "trueEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Boolean;TT;>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/Map$Entry;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1563
    const/4 v0, 0x2

    return v0
.end method

.class Ljava/util/AbstractMap$2;
.super Ljava/util/AbstractCollection;
.source "AbstractMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/AbstractMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/AbstractMap;


# direct methods
.method constructor <init>(Ljava/util/AbstractMap;)V
    .registers 2

    .prologue
    .line 1
    .local p1, "this$0":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/AbstractMap$2;->this$0:Ljava/util/AbstractMap;

    .line 408
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Ljava/util/AbstractMap$2;->this$0:Ljava/util/AbstractMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    .line 437
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 440
    iget-object v0, p0, Ljava/util/AbstractMap$2;->this$0:Ljava/util/AbstractMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Ljava/util/AbstractMap$2;->this$0:Ljava/util/AbstractMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 410
    new-instance v0, Ljava/util/AbstractMap$2$1;

    invoke-direct {v0, p0}, Ljava/util/AbstractMap$2$1;-><init>(Ljava/util/AbstractMap$2;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Ljava/util/AbstractMap$2;->this$0:Ljava/util/AbstractMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    return v0
.end method

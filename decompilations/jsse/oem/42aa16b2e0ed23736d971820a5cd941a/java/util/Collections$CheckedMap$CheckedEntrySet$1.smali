.class Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$CheckedMap$CheckedEntrySet;->iterator()Ljava/util/Iterator;
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
.field final synthetic blacklist this$0:Ljava/util/Collections$CheckedMap$CheckedEntrySet;

.field final synthetic blacklist val$i:Ljava/util/Iterator;

.field final synthetic blacklist val$valueType:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Ljava/util/Collections$CheckedMap$CheckedEntrySet;Ljava/util/Iterator;Ljava/lang/Class;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/Collections$CheckedMap$CheckedEntrySet;

    .line 3808
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;"
    iput-object p1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->this$0:Ljava/util/Collections$CheckedMap$CheckedEntrySet;

    iput-object p2, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    iput-object p3, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$valueType:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasNext()Z
    .registers 2

    .line 3809
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 2

    .line 3808
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;"
    invoke-virtual {p0}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3813
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$valueType:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api remove()V
    .registers 2

    .line 3810
    .local p0, "this":Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;"
    iget-object v0, p0, Ljava/util/Collections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

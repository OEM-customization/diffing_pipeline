.class Ljava/lang/ProcessEnvironment$StringEntrySet$1;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/ProcessEnvironment$StringEntrySet;->iterator()Ljava/util/Iterator;
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
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field blacklist i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/lang/ProcessEnvironment$StringEntrySet;


# direct methods
.method constructor blacklist <init>(Ljava/lang/ProcessEnvironment$StringEntrySet;)V
    .registers 3
    .param p1, "this$0"    # Ljava/lang/ProcessEnvironment$StringEntrySet;

    .line 329
    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$1;->this$0:Ljava/lang/ProcessEnvironment$StringEntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    # getter for: Ljava/lang/ProcessEnvironment$StringEntrySet;->s:Ljava/util/Set;
    invoke-static {p1}, Ljava/lang/ProcessEnvironment$StringEntrySet;->access$500(Ljava/lang/ProcessEnvironment$StringEntrySet;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$1;->i:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 331
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 329
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringEntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/lang/ProcessEnvironment$StringEntry;

    iget-object v1, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$1;->i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-direct {v0, v1}, Ljava/lang/ProcessEnvironment$StringEntry;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 335
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
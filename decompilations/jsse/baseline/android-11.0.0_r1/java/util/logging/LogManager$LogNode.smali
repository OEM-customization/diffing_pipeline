.class Ljava/util/logging/LogManager$LogNode;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogNode"
.end annotation


# instance fields
.field greylist-max-o children:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/logging/LogManager$LogNode;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o context:Ljava/util/logging/LogManager$LoggerContext;

.field greylist-max-o loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

.field greylist-max-o parent:Ljava/util/logging/LogManager$LogNode;


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/logging/LogManager$LogNode;Ljava/util/logging/LogManager$LoggerContext;)V
    .registers 3
    .param p1, "parent"    # Ljava/util/logging/LogManager$LogNode;
    .param p2, "context"    # Ljava/util/logging/LogManager$LoggerContext;

    .line 1615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1616
    iput-object p1, p0, Ljava/util/logging/LogManager$LogNode;->parent:Ljava/util/logging/LogManager$LogNode;

    .line 1617
    iput-object p2, p0, Ljava/util/logging/LogManager$LogNode;->context:Ljava/util/logging/LogManager$LoggerContext;

    .line 1618
    return-void
.end method


# virtual methods
.method greylist-max-o walkAndSetParent(Ljava/util/logging/Logger;)V
    .registers 6
    .param p1, "parent"    # Ljava/util/logging/Logger;

    .line 1623
    iget-object v0, p0, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 1624
    return-void

    .line 1626
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1627
    .local v0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LogNode;>;"
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1628
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/LogManager$LogNode;

    .line 1629
    .local v1, "node":Ljava/util/logging/LogManager$LogNode;
    iget-object v2, v1, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 1630
    .local v2, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-nez v2, :cond_1f

    const/4 v3, 0x0

    goto :goto_25

    :cond_1f
    invoke-virtual {v2}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/Logger;

    .line 1631
    .local v3, "logger":Ljava/util/logging/Logger;
    :goto_25
    if-nez v3, :cond_2b

    .line 1632
    invoke-virtual {v1, p1}, Ljava/util/logging/LogManager$LogNode;->walkAndSetParent(Ljava/util/logging/Logger;)V

    goto :goto_2e

    .line 1634
    :cond_2b
    # invokes: Ljava/util/logging/LogManager;->doSetParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    invoke-static {v3, p1}, Ljava/util/logging/LogManager;->access$1300(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    .line 1636
    .end local v1    # "node":Ljava/util/logging/LogManager$LogNode;
    .end local v2    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .end local v3    # "logger":Ljava/util/logging/Logger;
    :goto_2e
    goto :goto_d

    .line 1637
    :cond_2f
    return-void
.end method

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
.field children:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/logging/LogManager$LogNode;",
            ">;"
        }
    .end annotation
.end field

.field final context:Ljava/util/logging/LogManager$LoggerContext;

.field loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

.field parent:Ljava/util/logging/LogManager$LogNode;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager$LogNode;Ljava/util/logging/LogManager$LoggerContext;)V
    .registers 3
    .param p1, "parent"    # Ljava/util/logging/LogManager$LogNode;
    .param p2, "context"    # Ljava/util/logging/LogManager$LoggerContext;

    .prologue
    .line 1613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1614
    iput-object p1, p0, Ljava/util/logging/LogManager$LogNode;->parent:Ljava/util/logging/LogManager$LogNode;

    .line 1615
    iput-object p2, p0, Ljava/util/logging/LogManager$LogNode;->context:Ljava/util/logging/LogManager$LoggerContext;

    .line 1616
    return-void
.end method


# virtual methods
.method walkAndSetParent(Ljava/util/logging/Logger;)V
    .registers 7
    .param p1, "parent"    # Ljava/util/logging/Logger;

    .prologue
    .line 1621
    iget-object v4, p0, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    if-nez v4, :cond_5

    .line 1622
    return-void

    .line 1624
    :cond_5
    iget-object v4, p0, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1625
    .local v3, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/logging/LogManager$LogNode;>;"
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1626
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/LogManager$LogNode;

    .line 1627
    .local v1, "node":Ljava/util/logging/LogManager$LogNode;
    iget-object v2, v1, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 1628
    .local v2, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-nez v2, :cond_26

    const/4 v0, 0x0

    .line 1629
    :goto_20
    if-nez v0, :cond_2d

    .line 1630
    invoke-virtual {v1, p1}, Ljava/util/logging/LogManager$LogNode;->walkAndSetParent(Ljava/util/logging/Logger;)V

    goto :goto_f

    .line 1628
    :cond_26
    invoke-virtual {v2}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Logger;

    .local v0, "logger":Ljava/util/logging/Logger;
    goto :goto_20

    .line 1632
    .end local v0    # "logger":Ljava/util/logging/Logger;
    :cond_2d
    invoke-static {v0, p1}, Ljava/util/logging/LogManager;->-wrap3(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    goto :goto_f

    .line 1635
    .end local v1    # "node":Ljava/util/logging/LogManager$LogNode;
    .end local v2    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :cond_31
    return-void
.end method

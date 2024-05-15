.class final Ljava/util/logging/LogManager$LoggerWeakRef;
.super Ljava/lang/ref/WeakReference;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoggerWeakRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/util/logging/Logger;",
        ">;"
    }
.end annotation


# instance fields
.field private disposed:Z

.field private name:Ljava/lang/String;

.field private node:Ljava/util/logging/LogManager$LogNode;

.field private parentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/logging/LogManager;
    .param p2, "logger"    # Ljava/util/logging/Logger;

    .prologue
    .line 1020
    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->this$0:Ljava/util/logging/LogManager;

    .line 1021
    invoke-static {p1}, Ljava/util/logging/LogManager;->-get3(Ljava/util/logging/LogManager;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1018
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->disposed:Z

    .line 1023
    invoke-virtual {p2}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->name:Ljava/lang/String;

    .line 1024
    return-void
.end method


# virtual methods
.method dispose()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1037
    monitor-enter p0

    .line 1044
    :try_start_2
    iget-boolean v2, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->disposed:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_3c

    if-eqz v2, :cond_8

    monitor-exit p0

    return-void

    .line 1045
    :cond_8
    const/4 v2, 0x1

    :try_start_9
    iput-boolean v2, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->disposed:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_3c

    monitor-exit p0

    .line 1048
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    .line 1049
    .local v0, "n":Ljava/util/logging/LogManager$LogNode;
    if-eqz v0, :cond_28

    .line 1054
    iget-object v3, v0, Ljava/util/logging/LogManager$LogNode;->context:Ljava/util/logging/LogManager$LoggerContext;

    monitor-enter v3

    .line 1057
    :try_start_13
    iget-object v2, v0, Ljava/util/logging/LogManager$LogNode;->context:Ljava/util/logging/LogManager$LoggerContext;

    iget-object v4, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, p0}, Ljava/util/logging/LogManager$LoggerContext;->removeLoggerRef(Ljava/lang/String;Ljava/util/logging/LogManager$LoggerWeakRef;)V

    .line 1058
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->name:Ljava/lang/String;

    .line 1062
    iget-object v2, v0, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    if-ne v2, p0, :cond_24

    .line 1063
    const/4 v2, 0x0

    iput-object v2, v0, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 1065
    :cond_24
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_3f

    monitor-exit v3

    .line 1069
    :cond_28
    iget-object v2, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3b

    .line 1071
    iget-object v2, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Logger;

    .line 1072
    .local v1, "parent":Ljava/util/logging/Logger;
    if-eqz v1, :cond_39

    .line 1075
    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->removeChildLogger(Ljava/util/logging/LogManager$LoggerWeakRef;)V

    .line 1077
    :cond_39
    iput-object v5, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    .line 1079
    .end local v1    # "parent":Ljava/util/logging/Logger;
    :cond_3b
    return-void

    .line 1037
    .end local v0    # "n":Ljava/util/logging/LogManager$LogNode;
    :catchall_3c
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1054
    .restart local v0    # "n":Ljava/util/logging/LogManager$LogNode;
    :catchall_3f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setNode(Ljava/util/logging/LogManager$LogNode;)V
    .registers 2
    .param p1, "node"    # Ljava/util/logging/LogManager$LogNode;

    .prologue
    .line 1083
    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->node:Ljava/util/logging/LogManager$LogNode;

    .line 1084
    return-void
.end method

.method setParentRef(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/logging/Logger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1088
    .local p1, "parentRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/logging/Logger;>;"
    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerWeakRef;->parentRef:Ljava/lang/ref/WeakReference;

    .line 1089
    return-void
.end method

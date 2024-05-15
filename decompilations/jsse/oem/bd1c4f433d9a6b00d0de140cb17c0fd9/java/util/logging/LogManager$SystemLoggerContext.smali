.class final Ljava/util/logging/LogManager$SystemLoggerContext;
.super Ljava/util/logging/LogManager$LoggerContext;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SystemLoggerContext"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/logging/LogManager;

    .prologue
    .line 910
    iput-object p1, p0, Ljava/util/logging/LogManager$SystemLoggerContext;->this$0:Ljava/util/logging/LogManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/logging/LogManager$LoggerContext;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$LoggerContext;)V

    return-void
.end method


# virtual methods
.method demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 917
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager$SystemLoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    .line 918
    .local v6, "result":Ljava/util/logging/Logger;
    if-nez v6, :cond_1c

    .line 920
    new-instance v0, Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/util/logging/LogManager$SystemLoggerContext;->getOwner()Ljava/util/logging/LogManager;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V

    .line 922
    .local v0, "newLogger":Ljava/util/logging/Logger;
    :cond_13
    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager$SystemLoggerContext;->addLocalLogger(Ljava/util/logging/Logger;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 925
    move-object v6, v0

    .line 940
    :goto_1a
    if-eqz v6, :cond_13

    .line 942
    .end local v0    # "newLogger":Ljava/util/logging/Logger;
    :cond_1c
    return-object v6

    .line 938
    .restart local v0    # "newLogger":Ljava/util/logging/Logger;
    :cond_1d
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager$SystemLoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    goto :goto_1a
.end method

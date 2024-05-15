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
.field final synthetic blacklist this$0:Ljava/util/logging/LogManager;


# direct methods
.method constructor blacklist <init>(Ljava/util/logging/LogManager;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/logging/LogManager;

    .line 894
    iput-object p1, p0, Ljava/util/logging/LogManager$SystemLoggerContext;->this$0:Ljava/util/logging/LogManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/logging/LogManager$LoggerContext;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$1;)V

    return-void
.end method


# virtual methods
.method greylist-max-o demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    .line 901
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager$SystemLoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 902
    .local v0, "result":Ljava/util/logging/Logger;
    if-nez v0, :cond_22

    .line 904
    new-instance v7, Ljava/util/logging/Logger;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/util/logging/LogManager$SystemLoggerContext;->getOwner()Ljava/util/logging/LogManager;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V

    .line 906
    .local v1, "newLogger":Ljava/util/logging/Logger;
    :cond_14
    invoke-virtual {p0, v1}, Ljava/util/logging/LogManager$SystemLoggerContext;->addLocalLogger(Ljava/util/logging/Logger;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 909
    move-object v0, v1

    goto :goto_20

    .line 922
    :cond_1c
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager$SystemLoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 924
    :goto_20
    if-eqz v0, :cond_14

    .line 926
    .end local v1    # "newLogger":Ljava/util/logging/Logger;
    :cond_22
    return-object v0
.end method

.class final Ljava/util/logging/LogManager$RootLogger;
.super Ljava/util/logging/Logger;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootLogger"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method private constructor <init>(Ljava/util/logging/LogManager;)V
    .registers 8
    .param p1, "this$0"    # Ljava/util/logging/LogManager;

    .prologue
    const/4 v2, 0x0

    .line 1642
    iput-object p1, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    .line 1646
    const-string/jumbo v1, ""

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V

    .line 1647
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$RootLogger;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/logging/LogManager;
    .param p2, "-this1"    # Ljava/util/logging/LogManager$RootLogger;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager$RootLogger;-><init>(Ljava/util/logging/LogManager;)V

    return-void
.end method


# virtual methods
.method accessCheckedHandlers()[Ljava/util/logging/Handler;
    .registers 2

    .prologue
    .line 1670
    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap4(Ljava/util/logging/LogManager;)V

    .line 1671
    invoke-super {p0}, Ljava/util/logging/Logger;->accessCheckedHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    return-object v0
.end method

.method public addHandler(Ljava/util/logging/Handler;)V
    .registers 3
    .param p1, "h"    # Ljava/util/logging/Handler;

    .prologue
    .line 1658
    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap4(Ljava/util/logging/LogManager;)V

    .line 1659
    invoke-super {p0, p1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 1660
    return-void
.end method

.method public log(Ljava/util/logging/LogRecord;)V
    .registers 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 1652
    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap4(Ljava/util/logging/LogManager;)V

    .line 1653
    invoke-super {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 1654
    return-void
.end method

.method public removeHandler(Ljava/util/logging/Handler;)V
    .registers 3
    .param p1, "h"    # Ljava/util/logging/Handler;

    .prologue
    .line 1664
    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap4(Ljava/util/logging/LogManager;)V

    .line 1665
    invoke-super {p0, p1}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    .line 1666
    return-void
.end method

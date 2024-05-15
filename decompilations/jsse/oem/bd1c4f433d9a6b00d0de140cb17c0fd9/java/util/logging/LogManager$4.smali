.class Ljava/util/logging/LogManager$4;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/LogManager;->demandSystemLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;

.field final synthetic val$l:Ljava/util/logging/Logger;

.field final synthetic val$sysLogger:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/logging/LogManager;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/util/logging/LogManager$4;->this$0:Ljava/util/logging/LogManager;

    iput-object p2, p0, Ljava/util/logging/LogManager$4;->val$l:Ljava/util/logging/Logger;

    iput-object p3, p0, Ljava/util/logging/LogManager$4;->val$sysLogger:Ljava/util/logging/Logger;

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 573
    invoke-virtual {p0}, Ljava/util/logging/LogManager$4;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 6

    .prologue
    .line 575
    iget-object v1, p0, Ljava/util/logging/LogManager$4;->val$l:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/util/logging/Logger;->accessCheckedHandlers()[Ljava/util/logging/Handler;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_8
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 576
    .local v0, "hdl":Ljava/util/logging/Handler;
    iget-object v4, p0, Ljava/util/logging/LogManager$4;->val$sysLogger:Ljava/util/logging/Logger;

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 578
    .end local v0    # "hdl":Ljava/util/logging/Handler;
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method

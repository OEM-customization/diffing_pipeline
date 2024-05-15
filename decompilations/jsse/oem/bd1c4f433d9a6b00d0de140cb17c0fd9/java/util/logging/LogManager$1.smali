.class final Ljava/util/logging/LogManager$1;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/logging/LogManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 181
    invoke-virtual {p0}, Ljava/util/logging/LogManager$1;->run()Ljava/util/logging/LogManager;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/logging/LogManager;
    .registers 8

    .prologue
    .line 183
    const/4 v3, 0x0

    .line 184
    .local v3, "mgr":Ljava/util/logging/LogManager;
    const/4 v1, 0x0

    .line 186
    .local v1, "cname":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v4, "java.util.logging.manager"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "cname":Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 188
    invoke-static {v1}, Ljava/util/logging/LogManager;->-wrap0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/logging/LogManager;

    move-object v3, v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_1f

    .line 194
    .end local v1    # "cname":Ljava/lang/String;
    .end local v3    # "mgr":Ljava/util/logging/LogManager;
    :cond_17
    :goto_17
    if-nez v3, :cond_1e

    .line 195
    new-instance v3, Ljava/util/logging/LogManager;

    invoke-direct {v3}, Ljava/util/logging/LogManager;-><init>()V

    .line 197
    :cond_1e
    return-object v3

    .line 190
    .restart local v3    # "mgr":Ljava/util/logging/LogManager;
    :catch_1f
    move-exception v2

    .line 191
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not load Logmanager \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

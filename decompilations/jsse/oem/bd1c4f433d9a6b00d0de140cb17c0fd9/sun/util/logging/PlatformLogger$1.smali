.class final Lsun/util/logging/PlatformLogger$1;
.super Ljava/lang/Object;
.source "PlatformLogger.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/PlatformLogger;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 162
    const-string/jumbo v3, "java.util.logging.config.class"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "cname":Ljava/lang/String;
    const-string/jumbo v3, "java.util.logging.config.file"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "fname":Ljava/lang/String;
    if-nez v0, :cond_13

    if-eqz v1, :cond_18

    :cond_13
    :goto_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lsun/util/logging/PlatformLogger$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.class public Ljava/net/cta/CtaAdapter;
.super Ljava/lang/Object;
.source "CtaAdapter.java"


# static fields
.field private static enforceCheckPermissionMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSendingPermitted(I)Z
    .registers 12
    .param p0, "port"    # I

    .prologue
    const/4 v10, 0x1

    .line 20
    :try_start_1
    sget-object v6, Ljava/net/cta/CtaAdapter;->enforceCheckPermissionMethod:Ljava/lang/reflect/Method;

    if-nez v6, :cond_2a

    .line 21
    const-string/jumbo v5, "system/framework/mediatek-cta.jar"

    .line 22
    .local v5, "jarPath":Ljava/lang/String;
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 23
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-string/jumbo v1, "com.mediatek.cta.CtaHttp"

    .line 25
    .local v1, "className":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v1, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 27
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "isSendingPermitted"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 26
    sput-object v6, Ljava/net/cta/CtaAdapter;->enforceCheckPermissionMethod:Ljava/lang/reflect/Method;

    .line 29
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "jarPath":Ljava/lang/String;
    :cond_2a
    sget-object v6, Ljava/net/cta/CtaAdapter;->enforceCheckPermissionMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_40
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_40} :catch_5d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_42

    move-result v6

    return v6

    .line 35
    :catch_42
    move-exception v4

    .line 36
    .local v4, "ee":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ee:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    .end local v4    # "ee":Ljava/lang/Exception;
    :cond_5c
    return v10

    .line 30
    :catch_5d
    move-exception v3

    .line 31
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/SecurityException;

    if-eqz v6, :cond_5c

    .line 33
    new-instance v6, Ljava/lang/SecurityException;

    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

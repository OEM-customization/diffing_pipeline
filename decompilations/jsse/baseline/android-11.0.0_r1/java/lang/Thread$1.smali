.class Ljava/lang/Thread$1;
.super Ljava/lang/Object;
.source "Thread.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/Thread;->auditSubclass(Ljava/lang/Class;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$subcl:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;)V
    .registers 2

    .line 1864
    iput-object p1, p0, Ljava/lang/Thread$1;->val$subcl:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/lang/Boolean;
    .registers 5

    .line 1866
    iget-object v0, p0, Ljava/lang/Thread$1;->val$subcl:Ljava/lang/Class;

    .line 1867
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    const-class v1, Ljava/lang/Thread;

    if-eq v0, v1, :cond_28

    .line 1871
    const/4 v1, 0x0

    :try_start_7
    const-string v2, "getContextClassLoader"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1872
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_10} :catch_11

    return-object v1

    .line 1873
    :catch_11
    move-exception v2

    .line 1876
    const/4 v2, 0x1

    :try_start_13
    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/ClassLoader;

    aput-object v3, v2, v1

    move-object v1, v2

    .line 1877
    .local v1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v2, "setContextClassLoader"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1878
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_21} :catch_22

    return-object v2

    .line 1879
    .end local v1    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_22
    move-exception v1

    .line 1868
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 1882
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_28
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api run()Ljava/lang/Object;
    .registers 2

    .line 1864
    invoke-virtual {p0}, Ljava/lang/Thread$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

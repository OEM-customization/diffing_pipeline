.class public final Lsun/reflect/misc/ReflectUtil;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static checkPackageAccess(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/String;)V

    .line 73
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->isNonPublicProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 74
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkProxyPackageAccess(Ljava/lang/Class;)V

    .line 76
    :cond_10
    return-void
.end method

.method public static checkPackageAccess(Ljava/lang/String;)V
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2e

    .line 85
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 86
    .local v3, "s":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_3b

    .line 87
    const/16 v4, 0x2f

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "cname":Ljava/lang/String;
    const-string/jumbo v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 89
    const/16 v4, 0x5b

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v0, v4, 0x2

    .line 90
    .local v0, "b":I
    const/4 v4, 0x1

    if-le v0, v4, :cond_2c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2c

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    .end local v0    # "b":I
    :cond_2c
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 95
    .local v2, "i":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_3b

    .line 96
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    .line 99
    .end local v1    # "cname":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3b
    return-void
.end method

.method public static checkProxyPackageAccess(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 152
    .local v1, "s":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1c

    .line 154
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 155
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_12
    if-ge v2, v4, :cond_1c

    aget-object v0, v3, v2

    .line 156
    .local v0, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 160
    .end local v0    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1c
    return-void
.end method

.method public static varargs checkProxyPackageAccess(Ljava/lang/ClassLoader;[Ljava/lang/Class;)V
    .registers 8
    .param p0, "ccl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 174
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_1c

    .line 175
    const/4 v3, 0x0

    array-length v4, p1

    :goto_8
    if-ge v3, v4, :cond_1c

    aget-object v1, p1, v3

    .line 176
    .local v1, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 177
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-static {p0, v0}, Lsun/reflect/misc/ReflectUtil;->needsPackageAccessCheck(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 178
    invoke-static {v1}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 175
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 182
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1c
    return-void
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/String;)V

    .line 39
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static isAncestor(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z
    .registers 4
    .param p0, "p"    # Ljava/lang/ClassLoader;
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 113
    move-object v0, p1

    .line 115
    .local v0, "acl":Ljava/lang/ClassLoader;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 116
    if-ne p0, v0, :cond_9

    .line 117
    const/4 v1, 0x1

    return v1

    .line 119
    :cond_9
    if-nez v0, :cond_1

    .line 120
    const/4 v1, 0x0

    return v1
.end method

.method public static isNonPublicProxyClass(Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "name":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 199
    .local v0, "i":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1f

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "pkg":Ljava/lang/String;
    :goto_12
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    :cond_1e
    return v3

    .line 199
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v2, ""

    .restart local v2    # "pkg":Ljava/lang/String;
    goto :goto_12
.end method

.method public static isPackageAccessible(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    .line 107
    const/4 v1, 0x1

    return v1

    .line 104
    :catch_5
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method private static isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "ofClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz p0, :cond_b

    .line 54
    if-ne p0, p1, :cond_6

    .line 55
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 59
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static needsPackageAccessCheck(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z
    .registers 3
    .param p0, "from"    # Ljava/lang/ClassLoader;
    .param p1, "to"    # Ljava/lang/ClassLoader;

    .prologue
    .line 135
    if-eqz p0, :cond_4

    if-ne p0, p1, :cond_6

    .line 136
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_6
    if-nez p1, :cond_a

    .line 139
    const/4 v0, 0x1

    return v0

    .line 141
    :cond_a
    invoke-static {p0, p1}, Lsun/reflect/misc/ReflectUtil;->isAncestor(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

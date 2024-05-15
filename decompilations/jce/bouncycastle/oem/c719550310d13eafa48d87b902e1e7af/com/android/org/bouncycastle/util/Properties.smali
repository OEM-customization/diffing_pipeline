.class public Lcom/android/org/bouncycastle/util/Properties;
.super Ljava/lang/Object;
.source "Properties.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asKeySet(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 44
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_29

    .line 47
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v3, ","

    invoke-direct {v1, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .local v1, "sTok":Ljava/util/StringTokenizer;
    :goto_13
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 50
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 53
    .end local v1    # "sTok":Ljava/util/StringTokenizer;
    :cond_29
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3
.end method

.method public static isOverrideSet(Ljava/lang/String;)Z
    .registers 4
    .param p0, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 20
    :try_start_0
    const-string/jumbo v1, "true"

    new-instance v2, Lcom/android/org/bouncycastle/util/Properties$1;

    invoke-direct {v2, p0}, Lcom/android/org/bouncycastle/util/Properties$1;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_f} :catch_11

    move-result v1

    return v1

    .line 36
    :catch_11
    move-exception v0

    .line 37
    .local v0, "e":Ljava/security/AccessControlException;
    const/4 v1, 0x0

    return v1
.end method

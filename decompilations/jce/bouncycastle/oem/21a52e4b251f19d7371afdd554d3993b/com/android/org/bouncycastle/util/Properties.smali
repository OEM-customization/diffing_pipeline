.class public Lcom/android/org/bouncycastle/util/Properties;
.super Ljava/lang/Object;
.source "Properties.java"


# static fields
.field private static final blacklist threadProperties:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic blacklist access$000()Ljava/lang/ThreadLocal;
    .registers 1

    .line 19
    sget-object v0, Lcom/android/org/bouncycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static blacklist asBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 3
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 109
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->fetchProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 113
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 116
    :cond_c
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist asKeySet(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 123
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->fetchProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "p":Ljava/lang/String;
    if-eqz v1, :cond_28

    .line 127
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v2, "sTok":Ljava/util/StringTokenizer;
    :goto_12
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 130
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 134
    .end local v2    # "sTok":Ljava/util/StringTokenizer;
    :cond_28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist fetchProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 139
    new-instance v0, Lcom/android/org/bouncycastle/util/Properties$1;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/util/Properties$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist isOverrideSet(Ljava/lang/String;)Z
    .registers 5
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->fetchProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "p":Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 42
    const-string v2, "true"

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_11
    .catch Ljava/security/AccessControlException; {:try_start_1 .. :try_end_11} :catch_13

    return v0

    .line 45
    :cond_12
    return v0

    .line 47
    .end local v1    # "p":Ljava/lang/String;
    :catch_13
    move-exception v1

    .line 49
    .local v1, "e":Ljava/security/AccessControlException;
    return v0
.end method

.method public static blacklist removeThreadOverride(Ljava/lang/String;)Z
    .registers 4
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 85
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    .line 87
    .local v0, "isSet":Z
    sget-object v1, Lcom/android/org/bouncycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 88
    .local v1, "localProps":Ljava/util/Map;
    if-nez v1, :cond_10

    .line 90
    const/4 v2, 0x0

    return v2

    .line 93
    :cond_10
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 97
    sget-object v2, Lcom/android/org/bouncycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_24

    .line 101
    :cond_1f
    sget-object v2, Lcom/android/org/bouncycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 104
    :goto_24
    return v0
.end method

.method public static blacklist setThreadOverride(Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .line 62
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    .line 64
    .local v0, "isSet":Z
    sget-object v1, Lcom/android/org/bouncycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 65
    .local v1, "localProps":Ljava/util/Map;
    if-nez v1, :cond_14

    .line 67
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 70
    :cond_14
    if-eqz p1, :cond_19

    const-string v2, "true"

    goto :goto_1b

    :cond_19
    const-string v2, "false"

    :goto_1b
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v2, Lcom/android/org/bouncycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 74
    return v0
.end method

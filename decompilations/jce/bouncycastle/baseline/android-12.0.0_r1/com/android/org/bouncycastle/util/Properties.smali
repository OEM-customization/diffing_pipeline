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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static blacklist asBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 3
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 122
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 126
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 129
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

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 136
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "p":Ljava/lang/String;
    if-eqz v1, :cond_28

    .line 140
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v2, "sTok":Ljava/util/StringTokenizer;
    :goto_12
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 143
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 147
    .end local v2    # "sTok":Ljava/util/StringTokenizer;
    :cond_28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getPropertyValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/android/org/bouncycastle/util/Properties$1;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/util/Properties$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 161
    return-object v0

    .line 164
    :cond_e
    sget-object v1, Lcom/android/org/bouncycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 165
    .local v1, "localProps":Ljava/util/Map;
    if-eqz v1, :cond_21

    .line 167
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    .local v2, "p":Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 170
    return-object v2

    .line 174
    .end local v2    # "p":Ljava/lang/String;
    :cond_21
    new-instance v2, Lcom/android/org/bouncycastle/util/Properties$2;

    invoke-direct {v2, p0}, Lcom/android/org/bouncycastle/util/Properties$2;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public static blacklist isOverrideSet(Ljava/lang/String;)Z
    .registers 3
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 38
    :try_start_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Properties;->isSetTrue(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 40
    :catch_9
    move-exception v0

    .line 42
    .local v0, "e":Ljava/security/AccessControlException;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isOverrideSetTo(Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "isTrue"    # Z

    .line 57
    :try_start_0
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "propertyValue":Ljava/lang/String;
    if-eqz p1, :cond_b

    .line 60
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Properties;->isSetTrue(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 62
    :cond_b
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Properties;->isSetFalse(Ljava/lang/String;)Z

    move-result v1
    :try_end_f
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_f} :catch_10

    return v1

    .line 64
    .end local v0    # "propertyValue":Ljava/lang/String;
    :catch_10
    move-exception v0

    .line 66
    .local v0, "e":Ljava/security/AccessControlException;
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist isSetFalse(Ljava/lang/String;)Z
    .registers 6
    .param p0, "p"    # Ljava/lang/String;

    .line 185
    const/4 v0, 0x0

    if-eqz p0, :cond_63

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_b

    goto :goto_63

    .line 190
    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x66

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1c

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x46

    if-ne v1, v2, :cond_60

    .line 191
    :cond_1c
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-eq v1, v2, :cond_2c

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-ne v1, v2, :cond_60

    .line 192
    :cond_2c
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x6c

    if-eq v2, v4, :cond_3d

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_60

    .line 193
    :cond_3d
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x73

    if-eq v2, v4, :cond_4e

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x53

    if-ne v1, v2, :cond_60

    .line 194
    :cond_4e
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x65

    if-eq v2, v4, :cond_61

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x45

    if-ne v1, v2, :cond_60

    goto :goto_61

    :cond_60
    goto :goto_62

    :cond_61
    :goto_61
    move v0, v3

    .line 190
    :goto_62
    return v0

    .line 187
    :cond_63
    :goto_63
    return v0
.end method

.method private static blacklist isSetTrue(Ljava/lang/String;)Z
    .registers 6
    .param p0, "p"    # Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    if-eqz p0, :cond_52

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_b

    goto :goto_52

    .line 204
    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x74

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1c

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_4f

    .line 205
    :cond_1c
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-eq v1, v2, :cond_2c

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_4f

    .line 206
    :cond_2c
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x75

    if-eq v2, v4, :cond_3d

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x55

    if-ne v1, v2, :cond_4f

    .line 207
    :cond_3d
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x65

    if-eq v2, v4, :cond_50

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x45

    if-ne v1, v2, :cond_4f

    goto :goto_50

    :cond_4f
    goto :goto_51

    :cond_50
    :goto_50
    move v0, v3

    .line 204
    :goto_51
    return v0

    .line 201
    :cond_52
    :goto_52
    return v0
.end method

.method public static blacklist removeThreadOverride(Ljava/lang/String;)Z
    .registers 5
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/android/org/bouncycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 103
    .local v1, "localProps":Ljava/util/Map;
    if-eqz v1, :cond_26

    .line 105
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    .local v2, "p":Ljava/lang/String;
    if-eqz v2, :cond_26

    .line 108
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 110
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 113
    :cond_1b
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 117
    .end local v2    # "p":Ljava/lang/String;
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist setThreadOverride(Ljava/lang/String;Z)Z
    .registers 6
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .line 79
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    .line 81
    .local v0, "isSet":Z
    sget-object v1, Lcom/android/org/bouncycastle/util/Properties;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 82
    .local v2, "localProps":Ljava/util/Map;
    if-nez v2, :cond_17

    .line 84
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 89
    :cond_17
    if-eqz p1, :cond_1c

    const-string v1, "true"

    goto :goto_1e

    :cond_1c
    const-string v1, "false"

    :goto_1e
    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return v0
.end method

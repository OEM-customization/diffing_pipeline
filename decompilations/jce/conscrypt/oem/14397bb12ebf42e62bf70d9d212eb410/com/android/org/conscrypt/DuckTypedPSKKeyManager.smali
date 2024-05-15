.class final Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;
.super Ljava/lang/Object;
.source "DuckTypedPSKKeyManager.java"

# interfaces
.implements Lcom/android/org/conscrypt/PSKKeyManager;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mDelegate:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "delegate"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0x8
    nop

    .line 42
    return-void
.end method

.method static getInstance(Ljava/lang/Object;)Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;
    .registers 11
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 52
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@3
    nop

    move-result-object v0

    .line 53
    .local v0, "sourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/android/org/conscrypt/PSKKeyManager;

    #disallowed odex opcode
    #invoke-virtual-quick {v5}, vtable@48
    nop

    move-result-object v6

    const/4 v5, 0x0

    array-length v7, v6

    :goto_c
    if-ge v5, v7, :cond_63

    aget-object v3, v6, v5

    .line 54
    .local v3, "targetMethod":Ljava/lang/reflect/Method;
    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@50
    nop

    move-result v8

    if-eqz v8, :cond_19

    .line 53
    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 59
    :cond_19
    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@36
    nop

    move-result-object v8

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@41
    nop

    move-result-object v9

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v8, v9}, vtable@47
    nop

    move-result-object v1

    .line 61
    .local v1, "sourceMethod":Ljava/lang/reflect/Method;
    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@62
    nop

    move-result-object v2

    .line 62
    .local v2, "sourceReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@62
    nop

    move-result-object v4

    .line 63
    .local v4, "targetReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    #disallowed odex opcode
    #invoke-virtual-quick {v4, v2}, vtable@65
    nop

    move-result v8

    if-nez v8, :cond_16

    .line 64
    new-instance v5, Ljava/lang/NoSuchMethodException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #disallowed odex opcode
    #invoke-virtual-quick {v6, v1}, vtable@76
    nop

    move-result-object v6

    const-string/jumbo v7, " return value ("

    #disallowed odex opcode
    #invoke-virtual-quick {v6, v7}, vtable@77
    nop

    move-result-object v6

    #disallowed odex opcode
    #invoke-virtual-quick {v6, v2}, vtable@76
    nop

    move-result-object v6

    .line 65
    const-string/jumbo v7, ") incompatible with target return value ("

    .line 64
    #disallowed odex opcode
    #invoke-virtual-quick {v6, v7}, vtable@77
    nop

    move-result-object v6

    #disallowed odex opcode
    #invoke-virtual-quick {v6, v4}, vtable@76
    nop

    move-result-object v6

    .line 65
    const-string/jumbo v7, ")"

    .line 64
    #disallowed odex opcode
    #invoke-virtual-quick {v6, v7}, vtable@77
    nop

    move-result-object v6

    #disallowed odex opcode
    #invoke-virtual-quick {v6}, vtable@7
    nop

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 69
    .end local v1    # "sourceMethod":Ljava/lang/reflect/Method;
    .end local v2    # "sourceReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "targetMethod":Ljava/lang/reflect/Method;
    .end local v4    # "targetReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_63
    new-instance v5, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;

    invoke-direct {v5, p0}, Lcom/android/org/conscrypt/DuckTypedPSKKeyManager;-><init>(Ljava/lang/Object;)V

    return-object v5
.end method


# virtual methods
.method public chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;
    .registers 9
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "socket"    # Ljava/net/Socket;

    .prologue
    .line 97
    :try_start_0
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@3
    nop

    move-result-object v1

    .line 98
    const-string/jumbo v2, "chooseClientKeyIdentity"

    .line 97
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 98
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/net/Socket;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 97
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@47
    nop

    move-result-object v1

    .line 99
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x8
    nop

    .line 97
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 99
    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 97
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@63
    nop

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    return-object v1

    .line 100
    :catch_2c
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to invoke chooseClientKeyIdentity"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 9
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 108
    :try_start_0
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@3
    nop

    move-result-object v1

    .line 109
    const-string/jumbo v2, "chooseClientKeyIdentity"

    .line 108
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 109
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljavax/net/ssl/SSLEngine;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 108
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@47
    nop

    move-result-object v1

    .line 110
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x8
    nop

    .line 108
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 110
    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 108
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@63
    nop

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    return-object v1

    .line 111
    :catch_2c
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to invoke chooseClientKeyIdentity"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;
    .registers 8
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 75
    :try_start_0
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@3
    nop

    move-result-object v1

    .line 76
    const-string/jumbo v2, "chooseServerKeyIdentityHint"

    .line 75
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 76
    const-class v4, Ljava/net/Socket;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 75
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@47
    nop

    move-result-object v1

    .line 77
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x8
    nop

    .line 75
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 77
    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 75
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@63
    nop

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-object v1

    .line 78
    :catch_24
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to invoke chooseServerKeyIdentityHint"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 8
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 86
    :try_start_0
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@3
    nop

    move-result-object v1

    .line 87
    const-string/jumbo v2, "chooseServerKeyIdentityHint"

    .line 86
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 87
    const-class v4, Ljavax/net/ssl/SSLEngine;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 86
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@47
    nop

    move-result-object v1

    .line 88
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x8
    nop

    .line 86
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 88
    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 86
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@63
    nop

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-object v1

    .line 89
    :catch_24
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to invoke chooseServerKeyIdentityHint"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;
    .registers 10
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    .line 119
    :try_start_0
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@3
    nop

    move-result-object v1

    .line 120
    const-string/jumbo v2, "getKey"

    .line 119
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    .line 120
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Ljava/net/Socket;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 119
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@47
    nop

    move-result-object v1

    .line 121
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x8
    nop

    .line 119
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 121
    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    .line 119
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@63
    nop

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    return-object v1

    .line 122
    :catch_34
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to invoke getKey"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;
    .registers 10
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 130
    :try_start_0
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x8
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@3
    nop

    move-result-object v1

    .line 131
    const-string/jumbo v2, "getKey"

    .line 130
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    .line 131
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Ljavax/net/ssl/SSLEngine;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 130
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@47
    nop

    move-result-object v1

    .line 132
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x8
    nop

    .line 130
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 132
    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    .line 130
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@63
    nop

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    return-object v1

    .line 133
    :catch_34
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to invoke getKey"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.class public final Lcom/android/org/conscrypt/Conscrypt$Contexts;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/Conscrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contexts"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLContext;)Z
    .registers 2
    .param p0, "context"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 120
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@16
    nop

    move-result-object v0

    instance-of v0, v0, Lcom/android/org/conscrypt/OpenSSLProvider;

    return v0
.end method

.method public static setClientSessionCache(Ljavax/net/ssl/SSLContext;Lcom/android/org/conscrypt/SSLClientSessionCache;)V
    .registers 6
    .param p0, "context"    # Ljavax/net/ssl/SSLContext;
    .param p1, "cache"    # Lcom/android/org/conscrypt/SSLClientSessionCache;

    .prologue
    .line 127
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@13
    nop

    move-result-object v0

    .line 128
    .local v0, "clientContext":Ljavax/net/ssl/SSLSessionContext;
    instance-of v1, v0, Lcom/android/org/conscrypt/ClientSessionContext;

    if-nez v1, :cond_2a

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not a conscrypt client context: "

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@3
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@50
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@7
    nop

    move-result-object v2

    .line 129
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_2a
    nop

    nop

    .end local v0    # "clientContext":Ljavax/net/ssl/SSLSessionContext;
    #disallowed odex opcode
    #invoke-virtual-quick {v0, p1}, vtable@23
    nop

    .line 133
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setServerSessionCache(Ljavax/net/ssl/SSLContext;Lcom/android/org/conscrypt/SSLServerSessionCache;)V
    .registers 6
    .param p0, "context"    # Ljavax/net/ssl/SSLContext;
    .param p1, "cache"    # Lcom/android/org/conscrypt/SSLServerSessionCache;

    .prologue
    .line 139
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@17
    nop

    move-result-object v0

    .line 140
    .local v0, "serverContext":Ljavax/net/ssl/SSLSessionContext;
    instance-of v1, v0, Lcom/android/org/conscrypt/ServerSessionContext;

    if-nez v1, :cond_2a

    .line 141
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not a conscrypt client context: "

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@3
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@50
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@77
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@7
    nop

    move-result-object v2

    .line 141
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_2a
    nop

    nop

    .end local v0    # "serverContext":Ljavax/net/ssl/SSLSessionContext;
    #disallowed odex opcode
    #invoke-virtual-quick {v0, p1}, vtable@22
    nop

    .line 145
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

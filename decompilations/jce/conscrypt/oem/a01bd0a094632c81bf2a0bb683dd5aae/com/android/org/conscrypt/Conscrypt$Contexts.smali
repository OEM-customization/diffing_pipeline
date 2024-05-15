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

    return-void
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLContext;)Z
    .registers 2
    .param p0, "context"    # Ljavax/net/ssl/SSLContext;

    .prologue
    .line 120
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

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
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

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

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_2a
    check-cast v0, Lcom/android/org/conscrypt/ClientSessionContext;

    .end local v0    # "clientContext":Ljavax/net/ssl/SSLSessionContext;
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ClientSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V

    .line 133
    return-void
.end method

.method public static setServerSessionCache(Ljavax/net/ssl/SSLContext;Lcom/android/org/conscrypt/SSLServerSessionCache;)V
    .registers 6
    .param p0, "context"    # Ljavax/net/ssl/SSLContext;
    .param p1, "cache"    # Lcom/android/org/conscrypt/SSLServerSessionCache;

    .prologue
    .line 139
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

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

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_2a
    check-cast v0, Lcom/android/org/conscrypt/ServerSessionContext;

    .end local v0    # "serverContext":Ljavax/net/ssl/SSLSessionContext;
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ServerSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLServerSessionCache;)V

    .line 145
    return-void
.end method

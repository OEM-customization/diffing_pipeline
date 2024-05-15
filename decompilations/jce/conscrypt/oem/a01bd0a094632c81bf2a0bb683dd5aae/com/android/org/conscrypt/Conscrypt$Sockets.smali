.class public final Lcom/android/org/conscrypt/Conscrypt$Sockets;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/Conscrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sockets"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlpnSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 2
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 337
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getAlpnSelectedProtocol()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/Conscrypt;->-wrap0([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelId(Ljavax/net/ssl/SSLSocket;)[B
    .registers 2
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getChannelId()[B

    move-result-object v0

    return-object v0
.end method

.method public static getHostname(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 2
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 263
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHostnameOrIP(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 2
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 271
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLSocket;)Z
    .registers 2
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 235
    instance-of v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;

    return v0
.end method

.method public static setAlpnProtocols(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)V
    .registers 3
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "alpnProtocols"    # [Ljava/lang/String;

    .prologue
    .line 347
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setAlpnProtocols([Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public static setChannelIdEnabled(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 3
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "enabled"    # Z

    .prologue
    .line 295
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setChannelIdEnabled(Z)V

    .line 296
    return-void
.end method

.method public static setChannelIdPrivateKey(Ljavax/net/ssl/SSLSocket;Ljava/security/PrivateKey;)V
    .registers 3
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .prologue
    .line 327
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 328
    return-void
.end method

.method public static setHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .registers 3
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setHostname(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public static setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 3
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "useSessionTickets"    # Z

    .prologue
    .line 281
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setUseSessionTickets(Z)V

    .line 282
    return-void
.end method

.method private static toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;
    .registers 4
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 239
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Sockets;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a conscrypt socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_28
    check-cast p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;

    .end local p0    # "socket":Ljavax/net/ssl/SSLSocket;
    return-object p0
.end method

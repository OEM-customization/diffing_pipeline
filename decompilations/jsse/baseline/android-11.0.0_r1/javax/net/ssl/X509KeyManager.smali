.class public interface abstract Ljavax/net/ssl/X509KeyManager;
.super Ljava/lang/Object;
.source "X509KeyManager.java"

# interfaces
.implements Ljavax/net/ssl/KeyManager;


# virtual methods
.method public abstract whitelist core-platform-api test-api chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
.end method

.method public abstract whitelist core-platform-api test-api chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
.end method

.method public abstract whitelist core-platform-api test-api getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
.end method

.method public abstract whitelist core-platform-api test-api getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
.end method

.method public abstract whitelist core-platform-api test-api getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
.end method

.method public abstract whitelist core-platform-api test-api getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
.end method

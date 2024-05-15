.class public abstract Ljava/security/KeyStoreSpi;
.super Ljava/lang/Object;
.source "KeyStoreSpi.java"


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist core-platform-api test-api engineAliases()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api engineContainsAlias(Ljava/lang/String;)Z
.end method

.method public blacklist engineContainsAlias(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist engineContainsUniquePrivateKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist core-platform-api test-api engineDeleteEntry(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public whitelist core-platform-api test-api engineEntryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/KeyStore$Entry;",
            ">;)Z"
        }
    .end annotation

    .line 616
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/KeyStore$Entry;>;"
    const-class v0, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-ne p2, v0, :cond_9

    .line 617
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 619
    :cond_9
    const-class v0, Ljava/security/KeyStore$PrivateKeyEntry;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1e

    .line 620
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 621
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    .line 620
    :goto_1d
    return v1

    .line 623
    :cond_1e
    const-class v0, Ljava/security/KeyStore$SecretKeyEntry;

    if-ne p2, v0, :cond_31

    .line 624
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 625
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    if-nez v0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    .line 624
    :goto_30
    return v1

    .line 627
    :cond_31
    return v2
.end method

.method public blacklist engineGetCSR(Ljava/lang/String;)[B
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist core-platform-api test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
.end method

.method public abstract whitelist core-platform-api test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
.end method

.method public abstract whitelist core-platform-api test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
.end method

.method public abstract whitelist core-platform-api test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
.end method

.method public whitelist core-platform-api test-api engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    .line 493
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 494
    const/4 v0, 0x0

    return-object v0

    .line 497
    :cond_8
    if-nez p2, :cond_1a

    .line 498
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 499
    new-instance v0, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 500
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStore$TrustedCertificateEntry;-><init>(Ljava/security/cert/Certificate;)V

    .line 499
    return-object v0

    .line 509
    :cond_1a
    if-eqz p2, :cond_20

    instance-of v0, p2, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v0, :cond_58

    .line 510
    :cond_20
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 513
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "password":[C
    if-eqz p2, :cond_36

    .line 520
    move-object v1, p2

    check-cast v1, Ljava/security/KeyStore$PasswordProtection;

    .line 522
    .local v1, "pp":Ljava/security/KeyStore$PasswordProtection;
    invoke-virtual {v1}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v0

    .line 524
    .end local v1    # "pp":Ljava/security/KeyStore$PasswordProtection;
    :cond_36
    invoke-virtual {p0, p1, v0}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    .line 525
    .local v1, "key":Ljava/security/Key;
    instance-of v2, v1, Ljava/security/PrivateKey;

    if-eqz v2, :cond_4b

    .line 526
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 527
    .local v2, "chain":[Ljava/security/cert/Certificate;
    new-instance v3, Ljava/security/KeyStore$PrivateKeyEntry;

    move-object v4, v1

    check-cast v4, Ljava/security/PrivateKey;

    invoke-direct {v3, v4, v2}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    return-object v3

    .line 528
    .end local v2    # "chain":[Ljava/security/cert/Certificate;
    :cond_4b
    instance-of v2, v1, Ljavax/crypto/SecretKey;

    if-eqz v2, :cond_58

    .line 529
    new-instance v2, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v3, v1

    check-cast v3, Ljavax/crypto/SecretKey;

    invoke-direct {v2, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    return-object v2

    .line 534
    .end local v0    # "password":[C
    .end local v1    # "key":Ljava/security/Key;
    :cond_58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 511
    :cond_5e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "trusted certificate entries are not password-protected"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist core-platform-api test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api engineIsCertificateEntry(Ljava/lang/String;)Z
.end method

.method public abstract whitelist core-platform-api test-api engineIsKeyEntry(Ljava/lang/String;)Z
.end method

.method public blacklist engineList(I)Ljava/util/Enumeration;
    .registers 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist engineList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist core-platform-api test-api engineLoad(Ljava/io/InputStream;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public whitelist core-platform-api test-api engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 8
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 426
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 427
    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    check-cast v0, [C

    invoke-virtual {p0, v1, v0}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 428
    return-void

    .line 431
    :cond_c
    instance-of v1, p1, Ljava/security/KeyStore$SimpleLoadStoreParameter;

    if-eqz v1, :cond_63

    .line 432
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v1

    .line 434
    .local v1, "protection":Ljava/security/KeyStore$ProtectionParameter;
    instance-of v2, v1, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v2, :cond_20

    .line 435
    move-object v2, v1

    check-cast v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v2

    .local v2, "password":[C
    goto :goto_46

    .line 436
    .end local v2    # "password":[C
    :cond_20
    instance-of v2, v1, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v2, :cond_5b

    .line 437
    move-object v2, v1

    check-cast v2, Ljava/security/KeyStore$CallbackHandlerProtection;

    .line 438
    invoke-virtual {v2}, Ljava/security/KeyStore$CallbackHandlerProtection;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object v2

    .line 439
    .local v2, "handler":Ljavax/security/auth/callback/CallbackHandler;
    new-instance v3, Ljavax/security/auth/callback/PasswordCallback;

    const-string v4, "Password: "

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    .line 442
    .local v3, "callback":Ljavax/security/auth/callback/PasswordCallback;
    const/4 v4, 0x1

    :try_start_34
    new-array v4, v4, [Ljavax/security/auth/callback/Callback;

    aput-object v3, v4, v5

    invoke-interface {v2, v4}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V
    :try_end_3b
    .catch Ljavax/security/auth/callback/UnsupportedCallbackException; {:try_start_34 .. :try_end_3b} :catch_52

    .line 446
    nop

    .line 447
    invoke-virtual {v3}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v4

    .line 448
    .local v4, "password":[C
    invoke-virtual {v3}, Ljavax/security/auth/callback/PasswordCallback;->clearPassword()V

    .line 449
    if-eqz v4, :cond_4a

    .line 453
    .end local v2    # "handler":Ljavax/security/auth/callback/CallbackHandler;
    .end local v3    # "callback":Ljavax/security/auth/callback/PasswordCallback;
    move-object v2, v4

    .line 457
    .end local v4    # "password":[C
    .local v2, "password":[C
    :goto_46
    invoke-virtual {p0, v0, v2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 458
    return-void

    .line 450
    .local v2, "handler":Ljavax/security/auth/callback/CallbackHandler;
    .restart local v3    # "callback":Ljavax/security/auth/callback/PasswordCallback;
    .restart local v4    # "password":[C
    :cond_4a
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v5, "No password provided"

    invoke-direct {v0, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    .end local v4    # "password":[C
    :catch_52
    move-exception v0

    .line 444
    .local v0, "e":Ljavax/security/auth/callback/UnsupportedCallbackException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    const-string v5, "Could not obtain password"

    invoke-direct {v4, v5, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 454
    .end local v0    # "e":Ljavax/security/auth/callback/UnsupportedCallbackException;
    .end local v2    # "handler":Ljavax/security/auth/callback/CallbackHandler;
    .end local v3    # "callback":Ljavax/security/auth/callback/PasswordCallback;
    :cond_5b
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "ProtectionParameter must be PasswordProtection or CallbackHandlerProtection"

    invoke-direct {v0, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    .end local v1    # "protection":Ljava/security/KeyStore$ProtectionParameter;
    :cond_63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist engineRetrieveUniquePrivateKeyAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist core-platform-api test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public whitelist core-platform-api test-api engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 560
    if-eqz p3, :cond_f

    instance-of v0, p3, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v0, :cond_7

    goto :goto_f

    .line 562
    :cond_7
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "unsupported protection parameter"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_f
    :goto_f
    const/4 v0, 0x0

    .line 565
    .local v0, "pProtect":Ljava/security/KeyStore$PasswordProtection;
    if-eqz p3, :cond_15

    .line 566
    move-object v0, p3

    check-cast v0, Ljava/security/KeyStore$PasswordProtection;

    .line 570
    :cond_15
    const/4 v1, 0x0

    if-nez v0, :cond_1a

    move-object v2, v1

    goto :goto_1e

    :cond_1a
    invoke-virtual {v0}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v2

    .line 572
    .local v2, "password":[C
    :goto_1e
    instance-of v3, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v3, :cond_2d

    .line 573
    move-object v1, p2

    check-cast v1, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 575
    .local v1, "tce":Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {v1}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 576
    return-void

    .line 577
    .end local v1    # "tce":Ljava/security/KeyStore$TrustedCertificateEntry;
    :cond_2d
    instance-of v3, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v3, :cond_43

    .line 578
    move-object v1, p2

    check-cast v1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 580
    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 582
    invoke-virtual {v3}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 579
    invoke-virtual {p0, p1, v1, v2, v3}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 583
    return-void

    .line 584
    :cond_43
    instance-of v3, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v3, :cond_54

    .line 585
    move-object v3, p2

    check-cast v3, Ljava/security/KeyStore$SecretKeyEntry;

    .line 587
    invoke-virtual {v3}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    check-cast v1, [Ljava/security/cert/Certificate;

    .line 586
    invoke-virtual {p0, p1, v3, v2, v1}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 590
    return-void

    .line 594
    :cond_54
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported entry type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract whitelist core-platform-api test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api engineSize()I
.end method

.method public abstract whitelist core-platform-api test-api engineStore(Ljava/io/OutputStream;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public whitelist core-platform-api test-api engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

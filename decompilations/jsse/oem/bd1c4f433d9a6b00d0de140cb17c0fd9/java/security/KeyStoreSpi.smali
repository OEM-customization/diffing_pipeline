.class public abstract Ljava/security/KeyStoreSpi;
.super Ljava/lang/Object;
.source "KeyStoreSpi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract engineAliases()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract engineContainsAlias(Ljava/lang/String;)Z
.end method

.method public abstract engineDeleteEntry(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public engineEntryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/security/KeyStore$Entry;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/KeyStore$Entry;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 574
    const-class v2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-ne p2, v2, :cond_b

    .line 575
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 577
    :cond_b
    const-class v2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-ne p2, v2, :cond_20

    .line 578
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 579
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 578
    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    .line 579
    goto :goto_1b

    :cond_1e
    move v0, v1

    .line 578
    goto :goto_1b

    .line 581
    :cond_20
    const-class v2, Ljava/security/KeyStore$SecretKeyEntry;

    if-ne p2, v2, :cond_32

    .line 582
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 583
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    if-nez v2, :cond_31

    move v1, v0

    .line 582
    :cond_31
    return v1

    .line 585
    :cond_32
    return v1
.end method

.method public abstract engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
.end method

.method public abstract engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
.end method

.method public abstract engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
.end method

.method public abstract engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
.end method

.method public engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 451
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 452
    return-object v5

    .line 455
    :cond_8
    if-nez p2, :cond_1a

    .line 456
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 457
    new-instance v4, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 458
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 457
    invoke-direct {v4, v5}, Ljava/security/KeyStore$TrustedCertificateEntry;-><init>(Ljava/security/cert/Certificate;)V

    return-object v4

    .line 467
    :cond_1a
    if-eqz p2, :cond_20

    instance-of v4, p2, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v4, :cond_5f

    .line 468
    :cond_20
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 469
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .line 470
    const-string/jumbo v5, "trusted certificate entries are not password-protected"

    .line 469
    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 471
    :cond_2f
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 476
    const/4 v2, 0x0

    .line 477
    .local v2, "password":[C
    if-eqz p2, :cond_3f

    move-object v3, p2

    .line 479
    check-cast v3, Ljava/security/KeyStore$PasswordProtection;

    .line 480
    .local v3, "pp":Ljava/security/KeyStore$PasswordProtection;
    invoke-virtual {v3}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v2

    .line 482
    .end local v2    # "password":[C
    .end local v3    # "pp":Ljava/security/KeyStore$PasswordProtection;
    :cond_3f
    invoke-virtual {p0, p1, v2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    .line 483
    .local v1, "key":Ljava/security/Key;
    instance-of v4, v1, Ljava/security/PrivateKey;

    if-eqz v4, :cond_53

    .line 484
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 485
    .local v0, "chain":[Ljava/security/cert/Certificate;
    new-instance v4, Ljava/security/KeyStore$PrivateKeyEntry;

    check-cast v1, Ljava/security/PrivateKey;

    .end local v1    # "key":Ljava/security/Key;
    invoke-direct {v4, v1, v0}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    return-object v4

    .line 486
    .end local v0    # "chain":[Ljava/security/cert/Certificate;
    .restart local v1    # "key":Ljava/security/Key;
    :cond_53
    instance-of v4, v1, Ljavax/crypto/SecretKey;

    if-eqz v4, :cond_5f

    .line 487
    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    check-cast v1, Ljavax/crypto/SecretKey;

    .end local v1    # "key":Ljava/security/Key;
    invoke-direct {v4, v1}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    return-object v4

    .line 492
    :cond_5f
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method public abstract engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation
.end method

.method public abstract engineIsCertificateEntry(Ljava/lang/String;)Z
.end method

.method public abstract engineIsKeyEntry(Ljava/lang/String;)Z
.end method

.method public abstract engineLoad(Ljava/io/InputStream;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 10
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 384
    if-nez p1, :cond_d

    move-object v5, v6

    .line 385
    check-cast v5, Ljava/io/InputStream;

    check-cast v6, [C

    invoke-virtual {p0, v5, v6}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 386
    return-void

    .line 389
    :cond_d
    instance-of v5, p1, Ljava/security/KeyStore$SimpleLoadStoreParameter;

    if-eqz v5, :cond_63

    .line 390
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v4

    .line 392
    .local v4, "protection":Ljava/security/KeyStore$ProtectionParameter;
    instance-of v5, v4, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v5, :cond_23

    .line 393
    check-cast v4, Ljava/security/KeyStore$PasswordProtection;

    .end local v4    # "protection":Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {v4}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v3

    .line 415
    .local v3, "password":[C
    :cond_1f
    invoke-virtual {p0, v6, v3}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 416
    return-void

    .line 394
    .end local v3    # "password":[C
    .restart local v4    # "protection":Ljava/security/KeyStore$ProtectionParameter;
    :cond_23
    instance-of v5, v4, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v5, :cond_5a

    .line 396
    check-cast v4, Ljava/security/KeyStore$CallbackHandlerProtection;

    .end local v4    # "protection":Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {v4}, Ljava/security/KeyStore$CallbackHandlerProtection;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object v2

    .line 398
    .local v2, "handler":Ljavax/security/auth/callback/CallbackHandler;
    new-instance v0, Ljavax/security/auth/callback/PasswordCallback;

    const-string/jumbo v5, "Password: "

    invoke-direct {v0, v5, v7}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    .line 400
    .local v0, "callback":Ljavax/security/auth/callback/PasswordCallback;
    const/4 v5, 0x1

    :try_start_36
    new-array v5, v5, [Ljavax/security/auth/callback/Callback;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    invoke-interface {v2, v5}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V
    :try_end_3e
    .catch Ljavax/security/auth/callback/UnsupportedCallbackException; {:try_start_36 .. :try_end_3e} :catch_50

    .line 405
    invoke-virtual {v0}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v3

    .line 406
    .restart local v3    # "password":[C
    invoke-virtual {v0}, Ljavax/security/auth/callback/PasswordCallback;->clearPassword()V

    .line 407
    if-nez v3, :cond_1f

    .line 408
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    .line 409
    const-string/jumbo v6, "No password provided"

    .line 408
    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 401
    .end local v3    # "password":[C
    :catch_50
    move-exception v1

    .line 402
    .local v1, "e":Ljavax/security/auth/callback/UnsupportedCallbackException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    .line 403
    const-string/jumbo v6, "Could not obtain password"

    .line 402
    invoke-direct {v5, v6, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 412
    .end local v0    # "callback":Ljavax/security/auth/callback/PasswordCallback;
    .end local v1    # "e":Ljavax/security/auth/callback/UnsupportedCallbackException;
    .end local v2    # "handler":Ljavax/security/auth/callback/CallbackHandler;
    .restart local v4    # "protection":Ljava/security/KeyStore$ProtectionParameter;
    :cond_5a
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v6, "ProtectionParameter must be PasswordProtection or CallbackHandlerProtection"

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 419
    .end local v4    # "protection":Ljava/security/KeyStore$ProtectionParameter;
    :cond_63
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
.end method

.method public abstract engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 10
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 518
    if-eqz p3, :cond_12

    .line 519
    instance-of v4, p3, Ljava/security/KeyStore$PasswordProtection;

    xor-int/lit8 v4, v4, 0x1

    .line 518
    if-eqz v4, :cond_12

    .line 520
    new-instance v3, Ljava/security/KeyStoreException;

    const-string/jumbo v4, "unsupported protection parameter"

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 522
    :cond_12
    const/4 v0, 0x0

    .line 523
    .local v0, "pProtect":Ljava/security/KeyStore$PasswordProtection;
    if-eqz p3, :cond_18

    move-object v0, p3

    .line 524
    check-cast v0, Ljava/security/KeyStore$PasswordProtection;

    .line 528
    .end local v0    # "pProtect":Ljava/security/KeyStore$PasswordProtection;
    :cond_18
    if-nez v0, :cond_2a

    const/4 v1, 0x0

    .line 530
    :goto_1b
    instance-of v4, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v4, :cond_2f

    move-object v2, p2

    .line 532
    check-cast v2, Ljava/security/KeyStore$TrustedCertificateEntry;

    .line 533
    .local v2, "tce":Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {v2}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 534
    return-void

    .line 528
    .end local v2    # "tce":Ljava/security/KeyStore$TrustedCertificateEntry;
    :cond_2a
    invoke-virtual {v0}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v1

    .local v1, "password":[C
    goto :goto_1b

    .line 535
    .end local v1    # "password":[C
    :cond_2f
    instance-of v4, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v4, :cond_44

    move-object v3, p2

    .line 538
    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v3}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    .line 540
    check-cast p2, Ljava/security/KeyStore$PrivateKeyEntry;

    .end local p2    # "entry":Ljava/security/KeyStore$Entry;
    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 536
    invoke-virtual {p0, p1, v3, v1, v4}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 541
    return-void

    .line 542
    .restart local p2    # "entry":Ljava/security/KeyStore$Entry;
    :cond_44
    instance-of v4, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v4, :cond_54

    .line 545
    check-cast p2, Ljava/security/KeyStore$SecretKeyEntry;

    .end local p2    # "entry":Ljava/security/KeyStore$Entry;
    invoke-virtual {p2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 547
    check-cast v3, [Ljava/security/cert/Certificate;

    .line 543
    invoke-virtual {p0, p1, v4, v1, v3}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 548
    return-void

    .line 552
    .restart local p2    # "entry":Ljava/security/KeyStore$Entry;
    :cond_54
    new-instance v3, Ljava/security/KeyStoreException;

    .line 553
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupported entry type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 552
    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public abstract engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract engineSize()I
.end method

.method public abstract engineStore(Ljava/io/OutputStream;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.class public Ljava/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyStore$SimpleLoadStoreParameter;,
        Ljava/security/KeyStore$Builder;,
        Ljava/security/KeyStore$TrustedCertificateEntry;,
        Ljava/security/KeyStore$SecretKeyEntry;,
        Ljava/security/KeyStore$PrivateKeyEntry;,
        Ljava/security/KeyStore$Entry;,
        Ljava/security/KeyStore$CallbackHandlerProtection;,
        Ljava/security/KeyStore$PasswordProtection;,
        Ljava/security/KeyStore$ProtectionParameter;,
        Ljava/security/KeyStore$LoadStoreParameter;
    }
.end annotation


# static fields
.field private static final greylist-max-o KEYSTORE_TYPE:Ljava/lang/String; = "keystore.type"


# instance fields
.field private greylist-max-o initialized:Z

.field private greylist keyStoreSpi:Ljava/security/KeyStoreSpi;

.field private greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o type:Ljava/lang/String;


# direct methods
.method protected constructor whitelist core-platform-api test-api <init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .param p1, "keyStoreSpi"    # Ljava/security/KeyStoreSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "type"    # Ljava/lang/String;

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    .line 843
    iput-object p1, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    .line 844
    iput-object p2, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    .line 845
    iput-object p3, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    .line 855
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/security/KeyStore;)Z
    .registers 2
    .param p0, "x0"    # Ljava/security/KeyStore;

    .line 211
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    return v0
.end method

.method public static final whitelist core-platform-api test-api getDefaultType()Ljava/lang/String;
    .registers 1

    .line 1004
    new-instance v0, Ljava/security/KeyStore$1;

    invoke-direct {v0}, Ljava/security/KeyStore$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1009
    .local v0, "kstype":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 1010
    const-string v0, "jks"

    .line 1012
    :cond_f
    return-object v0
.end method

.method public static whitelist core-platform-api test-api getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 6
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 887
    const-string v0, " not found"

    :try_start_2
    const-string v1, "KeyStore"

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v1, v2}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    .line 888
    .local v1, "objs":[Ljava/lang/Object;
    new-instance v2, Ljava/security/KeyStore;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    check-cast v3, Ljava/security/KeyStoreSpi;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    check-cast v4, Ljava/security/Provider;

    invoke-direct {v2, v3, v4, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_1a} :catch_31
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_1a} :catch_1b

    return-object v2

    .line 891
    .end local v1    # "objs":[Ljava/lang/Object;
    :catch_1b
    move-exception v1

    .line 892
    .local v1, "nspe":Ljava/security/NoSuchProviderException;
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 889
    .end local v1    # "nspe":Ljava/security/NoSuchProviderException;
    :catch_31
    move-exception v1

    .line 890
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static whitelist core-platform-api test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 932
    if-eqz p1, :cond_36

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_36

    .line 935
    :try_start_8
    const-string v0, "KeyStore"

    invoke-static {p0, v0, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 936
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Ljava/security/KeyStore;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/KeyStoreSpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_1d} :catch_1e

    return-object v1

    .line 937
    .end local v0    # "objs":[Ljava/lang/Object;
    :catch_1e
    move-exception v0

    .line 938
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 933
    .end local v0    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist core-platform-api test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;
    .registers 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 973
    if-eqz p1, :cond_30

    .line 976
    :try_start_2
    const-string v0, "KeyStore"

    invoke-static {p0, v0, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    move-result-object v0

    .line 977
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v1, Ljava/security/KeyStore;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/KeyStoreSpi;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_17} :catch_18

    return-object v1

    .line 978
    .end local v0    # "objs":[Ljava/lang/Object;
    :catch_18
    move-exception v0

    .line 979
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 974
    .end local v0    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist core-platform-api test-api aliases()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1271
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1274
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineAliases()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 1272
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api containsAlias(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1290
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1293
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1291
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api deleteEntry(Ljava/lang/String;)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1254
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_a

    .line 1257
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 1258
    return-void

    .line 1255
    :cond_a
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1625
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/KeyStore$Entry;>;"
    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    .line 1628
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_f

    .line 1631
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineEntryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 1629
    :cond_f
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1626
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1117
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1120
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 1118
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1388
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1391
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1389
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1084
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1087
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 1085
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1137
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1140
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 1138
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1554
    if-eqz p1, :cond_15

    .line 1557
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_d

    .line 1560
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    return-object v0

    .line 1558
    :cond_d
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1555
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api getKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 1059
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1062
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0

    .line 1060
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 1022
    iget-object v0, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getType()Ljava/lang/String;
    .registers 2

    .line 1032
    iget-object v0, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api isCertificateEntry(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1353
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1356
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1354
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api isKeyEntry(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1330
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1333
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1331
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api load(Ljava/io/InputStream;[C)V
    .registers 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1484
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 1485
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    .line 1486
    return-void
.end method

.method public final whitelist core-platform-api test-api load(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1518
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1519
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    .line 1520
    return-void
.end method

.method public final whitelist core-platform-api test-api setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1237
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_a

    .line 1240
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1241
    return-void

    .line 1238
    :cond_a
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1590
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    .line 1593
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_e

    .line 1596
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1597
    return-void

    .line 1594
    :cond_e
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1591
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1170
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_1c

    .line 1173
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_16

    if-eqz p4, :cond_e

    array-length v0, p4

    if-eqz v0, :cond_e

    goto :goto_16

    .line 1175
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Private key must be accompanied by certificate chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1179
    :cond_16
    :goto_16
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 1180
    return-void

    .line 1171
    :cond_1c
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api setKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1210
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_a

    .line 1213
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    .line 1214
    return-void

    .line 1211
    :cond_a
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api size()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1307
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_b

    .line 1310
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineSize()I

    move-result v0

    return v0

    .line 1308
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api store(Ljava/io/OutputStream;[C)V
    .registers 5
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1413
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_a

    .line 1416
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/io/OutputStream;[C)V

    .line 1417
    return-void

    .line 1414
    :cond_a
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api store(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 4
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1442
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-eqz v0, :cond_a

    .line 1445
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1446
    return-void

    .line 1443
    :cond_a
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

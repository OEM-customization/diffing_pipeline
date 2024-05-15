.class public Ljava/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyStore$Builder;,
        Ljava/security/KeyStore$CallbackHandlerProtection;,
        Ljava/security/KeyStore$Entry;,
        Ljava/security/KeyStore$LoadStoreParameter;,
        Ljava/security/KeyStore$PasswordProtection;,
        Ljava/security/KeyStore$PrivateKeyEntry;,
        Ljava/security/KeyStore$ProtectionParameter;,
        Ljava/security/KeyStore$SecretKeyEntry;,
        Ljava/security/KeyStore$SimpleLoadStoreParameter;,
        Ljava/security/KeyStore$TrustedCertificateEntry;
    }
.end annotation


# static fields
.field private static final KEYSTORE_TYPE:Ljava/lang/String; = "keystore.type"


# instance fields
.field private initialized:Z

.field private keyStoreSpi:Ljava/security/KeyStoreSpi;

.field private provider:Ljava/security/Provider;

.field private type:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/security/KeyStore;)Z
    .registers 2
    .param p0, "-this"    # Ljava/security/KeyStore;

    .prologue
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    return v0
.end method

.method protected constructor <init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .param p1, "keyStoreSpi"    # Ljava/security/KeyStoreSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 841
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

.method public static final getDefaultType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1004
    new-instance v1, Ljava/security/KeyStore$1;

    invoke-direct {v1}, Ljava/security/KeyStore$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1009
    .local v0, "kstype":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 1010
    const-string/jumbo v0, "jks"

    .line 1012
    :cond_10
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 7
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 887
    :try_start_0
    const-string/jumbo v4, "KeyStore"

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v4, v3}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    .line 888
    .local v2, "objs":[Ljava/lang/Object;
    new-instance v5, Ljava/security/KeyStore;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/security/KeyStoreSpi;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    check-cast v4, Ljava/security/Provider;

    invoke-direct {v5, v3, v4, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_19} :catch_35
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v5

    .line 891
    .end local v2    # "objs":[Ljava/lang/Object;
    :catch_1a
    move-exception v1

    .line 892
    .local v1, "nspe":Ljava/security/NoSuchProviderException;
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 889
    .end local v1    # "nspe":Ljava/security/NoSuchProviderException;
    :catch_35
    move-exception v0

    .line 890
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 932
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11

    .line 933
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "missing provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 935
    :cond_11
    :try_start_11
    const-string/jumbo v2, "KeyStore"

    invoke-static {p0, v2, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    .line 936
    .local v1, "objs":[Ljava/lang/Object;
    new-instance v4, Ljava/security/KeyStore;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/security/KeyStoreSpi;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v4, v2, v3, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_27} :catch_28

    return-object v4

    .line 937
    .end local v1    # "objs":[Ljava/lang/Object;
    :catch_28
    move-exception v0

    .line 938
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;
    .registers 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 973
    if-nez p1, :cond_b

    .line 974
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "missing provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 976
    :cond_b
    :try_start_b
    const-string/jumbo v2, "KeyStore"

    invoke-static {p0, v2, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    move-result-object v1

    .line 977
    .local v1, "objs":[Ljava/lang/Object;
    new-instance v4, Ljava/security/KeyStore;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/security/KeyStoreSpi;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v4, v2, v3, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_21} :catch_22

    return-object v4

    .line 978
    .end local v1    # "objs":[Ljava/lang/Object;
    :catch_22
    move-exception v0

    .line 979
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final aliases()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1271
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_d

    .line 1272
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1274
    :cond_d
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineAliases()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final containsAlias(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1290
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_d

    .line 1291
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1293
    :cond_d
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final deleteEntry(Ljava/lang/String;)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1254
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_d

    .line 1255
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1257
    :cond_d
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 1258
    return-void
.end method

.method public final entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1625
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/KeyStore$Entry;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    .line 1626
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1628
    :cond_d
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_1a

    .line 1629
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1631
    :cond_1a
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineEntryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1117
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_d

    .line 1118
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1120
    :cond_d
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 4
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1388
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_d

    .line 1389
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1391
    :cond_d
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1084
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_d

    .line 1085
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_d
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1137
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_d

    .line 1138
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1140
    :cond_d
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
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

    .prologue
    .line 1554
    if-nez p1, :cond_b

    .line 1555
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1557
    :cond_b
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_18

    .line 1558
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1560
    :cond_18
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final getKey(Ljava/lang/String;[C)Ljava/security/Key;
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

    .prologue
    .line 1059
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_d

    .line 1060
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1062
    :cond_d
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 1022
    iget-object v0, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1032
    iget-object v0, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final isCertificateEntry(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1353
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_d

    .line 1354
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1356
    :cond_d
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isKeyEntry(Ljava/lang/String;)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1330
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_d

    .line 1331
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1333
    :cond_d
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final load(Ljava/io/InputStream;[C)V
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

    .prologue
    .line 1484
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 1485
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    .line 1486
    return-void
.end method

.method public final load(Ljava/security/KeyStore$LoadStoreParameter;)V
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
    .line 1518
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1519
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    .line 1520
    return-void
.end method

.method public final setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1237
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_d

    .line 1238
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1240
    :cond_d
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 1241
    return-void
.end method

.method public final setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1590
    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    .line 1591
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1593
    :cond_d
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_1a

    .line 1594
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1596
    :cond_1a
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1597
    return-void
.end method

.method public final setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
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

    .prologue
    .line 1170
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_d

    .line 1171
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1173
    :cond_d
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_1f

    .line 1174
    if-eqz p4, :cond_16

    array-length v0, p4

    if-nez v0, :cond_1f

    .line 1175
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Private key must be accompanied by certificate chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1179
    :cond_1f
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 1180
    return-void
.end method

.method public final setKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1210
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_d

    .line 1211
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1213
    :cond_d
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    .line 1214
    return-void
.end method

.method public final size()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1307
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_d

    .line 1308
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1310
    :cond_d
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineSize()I

    move-result v0

    return v0
.end method

.method public final store(Ljava/io/OutputStream;[C)V
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

    .prologue
    .line 1413
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_d

    .line 1414
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1416
    :cond_d
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/io/OutputStream;[C)V

    .line 1417
    return-void
.end method

.method public final store(Ljava/security/KeyStore$LoadStoreParameter;)V
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

    .prologue
    .line 1442
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_d

    .line 1443
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1445
    :cond_d
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1446
    return-void
.end method

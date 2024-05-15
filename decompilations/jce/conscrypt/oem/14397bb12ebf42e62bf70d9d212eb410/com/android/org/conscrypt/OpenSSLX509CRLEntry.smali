.class final Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;
.super Ljava/security/cert/X509CRLEntry;
.source "OpenSSLX509CRLEntry.java"


# instance fields
.field private final mContext:J


# direct methods
.method constructor <init>(J)V
    .registers 4
    .param p1, "ctx"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 37
    #disallowed odex opcode
    #iput-wide-quick p1, p0, field@0x8
    nop

    .line 38
    return-void
.end method


# virtual methods
.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 43
    #disallowed odex opcode
    #iget-wide-quick v2, p0, field@0x8
    nop

    .line 44
    const/4 v1, 0x1

    .line 43
    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_16

    .line 52
    #disallowed odex opcode
    #iget-wide-quick v2, p0, field@0x8
    nop

    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_16

    .line 54
    const/4 v1, 0x0

    return-object v1

    .line 57
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getEncoded()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 102
    #disallowed odex opcode
    #iget-wide-quick v0, p0, field@0x8
    nop

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509_REVOKED(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 4
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 62
    #disallowed odex opcode
    #iget-wide-quick v0, p0, field@0x8
    nop

    invoke-static {v0, v1, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_get_ext_oid(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 68
    #disallowed odex opcode
    #iget-wide-quick v2, p0, field@0x8
    nop

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_16

    .line 77
    #disallowed odex opcode
    #iget-wide-quick v2, p0, field@0x8
    nop

    .line 78
    const/4 v1, 0x1

    .line 77
    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_16

    .line 79
    const/4 v1, 0x0

    return-object v1

    .line 82
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getRevocationDate()Ljava/util/Date;
    .registers 5

    .prologue
    .line 112
    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 113
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@53
    nop

    .line 114
    #disallowed odex opcode
    #iget-wide-quick v2, p0, field@0x8
    nop

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_revocationDate(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 116
    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@36
    nop

    move-result-object v1

    return-object v1
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 5

    .prologue
    .line 107
    new-instance v0, Ljava/math/BigInteger;

    #disallowed odex opcode
    #iget-wide-quick v2, p0, field@0x8
    nop

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_get_serialNumber(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hasExtensions()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    #disallowed odex opcode
    #iget-wide-quick v2, p0, field@0x8
    nop

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_14

    .line 123
    #disallowed odex opcode
    #iget-wide-quick v2, p0, field@0x8
    nop

    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_15

    .line 121
    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 123
    goto :goto_14
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 12

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 88
    #disallowed odex opcode
    #iget-wide-quick v6, p0, field@0x8
    nop

    invoke-static {v6, v7, v10}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "criticalOids":[Ljava/lang/String;
    array-length v6, v0

    move v4, v5

    :goto_a
    if-ge v4, v6, :cond_1e

    aget-object v1, v0, v4

    .line 91
    .local v1, "oid":Ljava/lang/String;
    #disallowed odex opcode
    #iget-wide-quick v8, p0, field@0x8
    nop

    invoke-static {v8, v9, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_get_ext(JLjava/lang/String;)J

    move-result-wide v2

    .line 92
    .local v2, "extensionRef":J
    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_supported_extension(J)I

    move-result v7

    if-eq v7, v10, :cond_1b

    .line 93
    return v10

    .line 90
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 97
    .end local v1    # "oid":Ljava/lang/String;
    .end local v2    # "extensionRef":J
    :cond_1e
    return v5
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 129
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 132
    .local v0, "bioCtx":J
    :try_start_9
    #disallowed odex opcode
    #iget-wide-quick v4, p0, field@0x8
    nop

    invoke-static {v0, v1, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_print(JJ)V

    .line 133
    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@7
    nop
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    move-result-object v3

    .line 135
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 133
    return-object v3

    .line 134
    :catchall_16
    move-exception v3

    .line 135
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 134
    throw v3
.end method

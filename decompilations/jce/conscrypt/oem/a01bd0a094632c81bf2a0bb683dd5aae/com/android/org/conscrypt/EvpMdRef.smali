.class final Lcom/android/org/conscrypt/EvpMdRef;
.super Ljava/lang/Object;
.source "EvpMdRef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/EvpMdRef$MD5;,
        Lcom/android/org/conscrypt/EvpMdRef$SHA1;,
        Lcom/android/org/conscrypt/EvpMdRef$SHA224;,
        Lcom/android/org/conscrypt/EvpMdRef$SHA256;,
        Lcom/android/org/conscrypt/EvpMdRef$SHA384;,
        Lcom/android/org/conscrypt/EvpMdRef$SHA512;
    }
.end annotation


# static fields
.field static final MGF1_ALGORITHM_NAME:Ljava/lang/String; = "MGF1"

.field static final MGF1_OID:Ljava/lang/String; = "1.2.840.113549.1.1.8"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDigestSizeBytesByJcaDigestAlgorithmStandardName(Ljava/lang/String;)I
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 73
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "algorithmUpper":Ljava/lang/String;
    const-string/jumbo v1, "SHA-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 75
    sget v1, Lcom/android/org/conscrypt/EvpMdRef$SHA256;->SIZE_BYTES:I

    return v1

    .line 76
    :cond_12
    const-string/jumbo v1, "SHA-512"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 77
    sget v1, Lcom/android/org/conscrypt/EvpMdRef$SHA512;->SIZE_BYTES:I

    return v1

    .line 78
    :cond_1e
    const-string/jumbo v1, "SHA-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 79
    sget v1, Lcom/android/org/conscrypt/EvpMdRef$SHA1;->SIZE_BYTES:I

    return v1

    .line 80
    :cond_2a
    const-string/jumbo v1, "SHA-384"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 81
    sget v1, Lcom/android/org/conscrypt/EvpMdRef$SHA384;->SIZE_BYTES:I

    return v1

    .line 82
    :cond_36
    const-string/jumbo v1, "SHA-224"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 83
    sget v1, Lcom/android/org/conscrypt/EvpMdRef$SHA224;->SIZE_BYTES:I

    return v1

    .line 85
    :cond_42
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 55
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "algorithmUpper":Ljava/lang/String;
    const-string/jumbo v1, "SHA-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 57
    sget-wide v2, Lcom/android/org/conscrypt/EvpMdRef$SHA256;->EVP_MD:J

    return-wide v2

    .line 58
    :cond_12
    const-string/jumbo v1, "SHA-512"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 59
    sget-wide v2, Lcom/android/org/conscrypt/EvpMdRef$SHA512;->EVP_MD:J

    return-wide v2

    .line 60
    :cond_1e
    const-string/jumbo v1, "SHA-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 61
    sget-wide v2, Lcom/android/org/conscrypt/EvpMdRef$SHA1;->EVP_MD:J

    return-wide v2

    .line 62
    :cond_2a
    const-string/jumbo v1, "SHA-384"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 63
    sget-wide v2, Lcom/android/org/conscrypt/EvpMdRef$SHA384;->EVP_MD:J

    return-wide v2

    .line 64
    :cond_36
    const-string/jumbo v1, "SHA-224"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 65
    sget-wide v2, Lcom/android/org/conscrypt/EvpMdRef$SHA224;->EVP_MD:J

    return-wide v2

    .line 67
    :cond_42
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getJcaDigestAlgorithmStandardName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "algorithmUpper":Ljava/lang/String;
    const-string/jumbo v1, "SHA-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string/jumbo v1, "2.16.840.1.101.3.4.2.1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 36
    :cond_18
    const-string/jumbo v1, "SHA-256"

    return-object v1

    .line 37
    :cond_1c
    const-string/jumbo v1, "SHA-512"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 38
    const-string/jumbo v1, "2.16.840.1.101.3.4.2.3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 37
    if-eqz v1, :cond_32

    .line 39
    :cond_2e
    const-string/jumbo v1, "SHA-512"

    return-object v1

    .line 40
    :cond_32
    const-string/jumbo v1, "SHA-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    const-string/jumbo v1, "1.3.14.3.2.26"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 41
    :cond_44
    const-string/jumbo v1, "SHA-1"

    return-object v1

    .line 42
    :cond_48
    const-string/jumbo v1, "SHA-384"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 43
    const-string/jumbo v1, "2.16.840.1.101.3.4.2.2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 42
    if-eqz v1, :cond_5e

    .line 44
    :cond_5a
    const-string/jumbo v1, "SHA-384"

    return-object v1

    .line 45
    :cond_5e
    const-string/jumbo v1, "SHA-224"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 46
    const-string/jumbo v1, "2.16.840.1.101.3.4.2.4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 45
    if-eqz v1, :cond_74

    .line 47
    :cond_70
    const-string/jumbo v1, "SHA-224"

    return-object v1

    .line 49
    :cond_74
    const/4 v1, 0x0

    return-object v1
.end method

.method static getJcaDigestAlgorithmStandardNameFromEVP_MD(J)Ljava/lang/String;
    .registers 4
    .param p0, "evpMdRef"    # J

    .prologue
    .line 90
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$MD5;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_a

    .line 91
    const-string/jumbo v0, "MD5"

    return-object v0

    .line 92
    :cond_a
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA1;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_14

    .line 93
    const-string/jumbo v0, "SHA-1"

    return-object v0

    .line 94
    :cond_14
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA224;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1e

    .line 95
    const-string/jumbo v0, "SHA-224"

    return-object v0

    .line 96
    :cond_1e
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA256;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_28

    .line 97
    const-string/jumbo v0, "SHA-256"

    return-object v0

    .line 98
    :cond_28
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA384;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_32

    .line 99
    const-string/jumbo v0, "SHA-384"

    return-object v0

    .line 100
    :cond_32
    sget-wide v0, Lcom/android/org/conscrypt/EvpMdRef$SHA512;->EVP_MD:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_3c

    .line 101
    const-string/jumbo v0, "SHA-512"

    return-object v0

    .line 103
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown EVP_MD reference"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

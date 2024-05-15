.class public Lcom/android/org/conscrypt/ct/DigitallySigned;
.super Ljava/lang/Object;
.source "DigitallySigned.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;,
        Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    }
.end annotation


# instance fields
.field private final hashAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field private final signature:[B

.field private final signatureAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;


# direct methods
.method public constructor <init>(II[B)V
    .registers 6
    .param p1, "hashAlgorithm"    # I
    .param p2, "signatureAlgorithm"    # I
    .param p3, "signature"    # [B

    .prologue
    .line 81
    invoke-static {p1}, Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;->valueOf(I)Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    move-result-object v0

    .line 82
    invoke-static {p2}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->valueOf(I)Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    move-result-object v1

    .line 80
    invoke-direct {p0, v0, v1, p3}, Lcom/android/org/conscrypt/ct/DigitallySigned;-><init>(Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;[B)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;[B)V
    .registers 4
    .param p1, "hashAlgorithm"    # Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .param p2, "signatureAlgorithm"    # Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .param p3, "signature"    # [B

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 73
    iput-object p2, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    .line 74
    iput-object p3, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signature:[B

    .line 75
    return-void
.end method

.method public static decode(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/DigitallySigned;
    .registers 6
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 111
    :try_start_0
    new-instance v1, Lcom/android/org/conscrypt/ct/DigitallySigned;

    .line 112
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v2

    .line 113
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/android/org/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v3

    .line 114
    const/4 v4, 0x2

    invoke-static {p0, v4}, Lcom/android/org/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object v4

    .line 111
    invoke-direct {v1, v2, v3, v4}, Lcom/android/org/conscrypt/ct/DigitallySigned;-><init>(II[B)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v1

    .line 116
    :catch_15
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/android/org/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decode([B)Lcom/android/org/conscrypt/ct/DigitallySigned;
    .registers 2
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/android/org/conscrypt/ct/DigitallySigned;->decode(Ljava/io/InputStream;)Lcom/android/org/conscrypt/ct/DigitallySigned;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 5

    .prologue
    .line 102
    const-string/jumbo v0, "%swith%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHashAlgorithm()Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->hashAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$HashAlgorithm;

    return-object v0
.end method

.method public getSignature()[B
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signature:[B

    return-object v0
.end method

.method public getSignatureAlgorithm()Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/DigitallySigned;->signatureAlgorithm:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    return-object v0
.end method

.class public Lcom/android/org/bouncycastle/jcajce/PKCS12Key;
.super Ljava/lang/Object;
.source "PKCS12Key.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/PBKDFKey;


# instance fields
.field private final password:[C

.field private final useWrongZeroLengthConversion:Z


# direct methods
.method public constructor <init>([C)V
    .registers 3
    .param p1, "password"    # [C

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 21
    return-void
.end method

.method public constructor <init>([CZ)V
    .registers 6
    .param p1, "password"    # [C
    .param p2, "useWrongZeroLengthConversion"    # Z

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p1, :cond_8

    .line 34
    new-array p1, v2, [C

    .line 37
    :cond_8
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    .line 38
    iput-boolean p2, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->useWrongZeroLengthConversion:Z

    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 41
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    const-string/jumbo v0, "PKCS12"

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->useWrongZeroLengthConversion:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    array-length v0, v0

    if-nez v0, :cond_d

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0

    .line 85
    :cond_d
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    const-string/jumbo v0, "PKCS12"

    return-object v0
.end method

.method public getPassword()[C
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    return-object v0
.end method

.class public Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/LongDigest;
.source "SHA512Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x40


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;)V
    .registers 2
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    .line 37
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .param p1, "encodedState"    # [B

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->restoreState([B)V

    .line 47
    return-void
.end method


# virtual methods
.method public copy()Lcom/android/org/bouncycastle/util/Memoable;
    .registers 2

    .prologue
    .line 102
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .registers 6
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->finish()V

    .line 65
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H1:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 66
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 67
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 68
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 69
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 70
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H6:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 71
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H7:J

    add-int/lit8 v2, p2, 0x30

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 72
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H8:J

    add-int/lit8 v2, p2, 0x38

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 74
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->reset()V

    .line 76
    const/16 v0, 0x40

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const-string/jumbo v0, "SHA-512"

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    .prologue
    .line 56
    const/16 v0, 0x40

    return v0
.end method

.method public getEncodedState()[B
    .registers 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->getEncodedStateSize()I

    move-result v1

    new-array v0, v1, [B

    .line 115
    .local v0, "encoded":[B
    invoke-super {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->populateState([B)V

    .line 116
    return-object v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 90
    const-wide v0, 0x6a09e667f3bcc908L    # 6.344059688352415E202

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H1:J

    .line 91
    const-wide v0, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H2:J

    .line 92
    const-wide v0, 0x3c6ef372fe94f82bL    # 1.342284505169847E-17

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H3:J

    .line 93
    const-wide v0, -0x5ab00ac5a0e2c90fL

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H4:J

    .line 94
    const-wide v0, 0x510e527fade682d1L    # 2.876275032471325E82

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H5:J

    .line 95
    const-wide v0, -0x64fa9773d4c193e1L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H6:J

    .line 96
    const-wide v0, 0x1f83d9abfb41bd6bL    # 7.229011495228878E-157

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H7:J

    .line 97
    const-wide v0, 0x5be0cd19137e2179L    # 3.816167663240759E134

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H8:J

    .line 98
    return-void
.end method

.method public reset(Lcom/android/org/bouncycastle/util/Memoable;)V
    .registers 3
    .param p1, "other"    # Lcom/android/org/bouncycastle/util/Memoable;

    .prologue
    move-object v0, p1

    .line 107
    check-cast v0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;

    .line 109
    .local v0, "d":Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    .line 110
    return-void
.end method

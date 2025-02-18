.class public Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/LongDigest;
.source "SHA384Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x30


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;)V
    .registers 2
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;

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
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->restoreState([B)V

    .line 47
    return-void
.end method


# virtual methods
.method public copy()Lcom/android/org/bouncycastle/util/Memoable;
    .registers 2

    .prologue
    .line 100
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .registers 6
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->finish()V

    .line 65
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H1:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 66
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 67
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 68
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 69
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 70
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H6:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 72
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->reset()V

    .line 74
    const/16 v0, 0x30

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const-string/jumbo v0, "SHA-384"

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    .prologue
    .line 56
    const/16 v0, 0x30

    return v0
.end method

.method public getEncodedState()[B
    .registers 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->getEncodedStateSize()I

    move-result v1

    new-array v0, v1, [B

    .line 113
    .local v0, "encoded":[B
    invoke-super {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->populateState([B)V

    .line 114
    return-object v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 88
    const-wide v0, -0x344462a23efa6128L    # -6.771107636816954E56

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H1:J

    .line 89
    const-wide v0, 0x629a292a367cd507L    # 9.641589608180943E166

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H2:J

    .line 90
    const-wide v0, -0x6ea6fea5cf8f22e9L    # -4.222163200156129E-225

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H3:J

    .line 91
    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H4:J

    .line 92
    const-wide v0, 0x67332667ffc00b31L    # 1.3331733573491853E189

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H5:J

    .line 93
    const-wide v0, -0x714bb57897a7eaefL    # -7.790218494879152E-238

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H6:J

    .line 94
    const-wide v0, -0x24f3d1f29b067059L    # -3.9066766103558855E130

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H7:J

    .line 95
    const-wide v0, 0x47b5481dbefa4fa4L    # 2.8288236605994657E37

    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H8:J

    .line 96
    return-void
.end method

.method public reset(Lcom/android/org/bouncycastle/util/Memoable;)V
    .registers 3
    .param p1, "other"    # Lcom/android/org/bouncycastle/util/Memoable;

    .prologue
    move-object v0, p1

    .line 105
    check-cast v0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;

    .line 107
    .local v0, "d":Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;
    invoke-super {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    .line 108
    return-void
.end method

.class public Lcom/android/org/bouncycastle/crypto/params/DHParameters;
.super Ljava/lang/Object;
.source "DHParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# static fields
.field private static final DEFAULT_MINIMUM_LENGTH:I = 0xa0


# instance fields
.field private g:Ljava/math/BigInteger;

.field private j:Ljava/math/BigInteger;

.field private l:I

.field private m:I

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private validation:Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;

    .prologue
    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 13
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "l"    # I

    .prologue
    const/4 v6, 0x0

    .line 53
    invoke-static {p4}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getDefaultMParam(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V
    .registers 14
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "m"    # I
    .param p5, "l"    # I

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, v6

    .line 63
    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V
    .registers 10
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "m"    # I
    .param p5, "l"    # I
    .param p6, "j"    # Ljava/math/BigInteger;
    .param p7, "validation"    # Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-eqz p5, :cond_1f

    .line 87
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-le p5, v0, :cond_14

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "when l value specified, it must satisfy 2^(l-1) <= p"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_14
    if-ge p5, p4, :cond_1f

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "when l value specified, it may not be less than m value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1f
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    .line 98
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    .line 99
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    .line 100
    iput p4, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->m:I

    .line 101
    iput p5, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->l:I

    .line 102
    iput-object p6, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->j:Ljava/math/BigInteger;

    .line 103
    iput-object p7, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->validation:Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V
    .registers 14
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "j"    # Ljava/math/BigInteger;
    .param p5, "validation"    # Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    .prologue
    .line 73
    const/16 v4, 0xa0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 74
    return-void
.end method

.method private static getDefaultMParam(I)I
    .registers 2
    .param p0, "lParam"    # I

    .prologue
    const/16 v0, 0xa0

    .line 24
    if-nez p0, :cond_5

    .line 26
    return v0

    .line 29
    :cond_5
    if-ge p0, v0, :cond_8

    .end local p0    # "lParam":I
    :goto_7
    return p0

    .restart local p0    # "lParam":I
    :cond_8
    move p0, v0

    goto :goto_7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 159
    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    if-nez v2, :cond_6

    .line 161
    return v1

    :cond_6
    move-object v0, p1

    .line 164
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    .line 166
    .local v0, "pm":Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 168
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 170
    return v1

    .line 175
    :cond_1e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 177
    return v1

    .line 181
    :cond_25
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3b
    return v1
.end method

.method public getG()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getJ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->j:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getL()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->l:I

    return v0
.end method

.method public getM()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->m:I

    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getValidationParameters()Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->validation:Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    :goto_1f
    xor-int/2addr v0, v1

    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_1f
.end method

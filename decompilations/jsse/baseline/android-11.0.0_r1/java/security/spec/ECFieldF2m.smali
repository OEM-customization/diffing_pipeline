.class public Ljava/security/spec/ECFieldF2m;
.super Ljava/lang/Object;
.source "ECFieldF2m.java"

# interfaces
.implements Ljava/security/spec/ECField;


# instance fields
.field private greylist-max-o ks:[I

.field private greylist-max-o m:I

.field private greylist-max-o rp:Ljava/math/BigInteger;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(I)V
    .registers 4
    .param p1, "m"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-lez p1, :cond_d

    .line 57
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    .line 59
    iput-object v0, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    .line 60
    return-void

    .line 55
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>(ILjava/math/BigInteger;)V
    .registers 8
    .param p1, "m"    # I
    .param p2, "rp"    # Ljava/math/BigInteger;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    .line 87
    iput-object p2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    .line 88
    if-lez p1, :cond_51

    .line 91
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitCount()I

    move-result v0

    .line 92
    .local v0, "bitCount":I
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_49

    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    const/4 v1, 0x5

    if-ne v0, v1, :cond_49

    .line 98
    :cond_24
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 99
    .local v1, "temp":Ljava/math/BigInteger;
    add-int/lit8 v2, v0, -0x2

    new-array v2, v2, [I

    iput-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    .line 100
    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_37
    if-ltz v2, :cond_48

    .line 101
    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v3

    .line 102
    .local v3, "index":I
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aput v3, v4, v2

    .line 103
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 100
    .end local v3    # "index":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_37

    .line 105
    .end local v2    # "i":I
    :cond_48
    return-void

    .line 94
    .end local v1    # "temp":Ljava/math/BigInteger;
    :cond_49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "rp does not represent a valid reduction polynomial"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    .end local v0    # "bitCount":I
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>(I[I)V
    .registers 8
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    .line 136
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    .line 137
    if-lez p1, :cond_80

    .line 140
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_20

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    goto :goto_20

    .line 141
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length of ks is neither 1 nor 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_20
    :goto_20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v3, v1

    if-ge v0, v3, :cond_62

    .line 145
    aget v3, v1, v0

    if-lt v3, v2, :cond_46

    aget v3, v1, v0

    add-int/lit8 v4, p1, -0x1

    if-gt v3, v4, :cond_46

    .line 149
    if-eqz v0, :cond_43

    aget v3, v1, v0

    add-int/lit8 v4, v0, -0x1

    aget v1, v1, v4

    if-ge v3, v1, :cond_3b

    goto :goto_43

    .line 150
    :cond_3b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "values in ks are not in descending order"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_43
    :goto_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 146
    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ks["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] is out of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    .end local v0    # "i":I
    :cond_62
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    .line 156
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    .line 157
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_6d
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v2, v1

    if-ge v0, v2, :cond_7f

    .line 158
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    aget v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 160
    .end local v0    # "j":I
    :cond_7f
    return-void

    .line 138
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 219
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 220
    :cond_4
    instance-of v1, p1, Ljava/security/spec/ECFieldF2m;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 223
    iget v1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    move-object v3, p1

    check-cast v3, Ljava/security/spec/ECFieldF2m;

    iget v3, v3, Ljava/security/spec/ECFieldF2m;->m:I

    if-ne v1, v3, :cond_20

    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    move-object v3, p1

    check-cast v3, Ljava/security/spec/ECFieldF2m;

    iget-object v3, v3, Ljava/security/spec/ECFieldF2m;->ks:[I

    .line 224
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_21

    :cond_20
    move v0, v2

    .line 223
    :goto_21
    return v0

    .line 226
    :cond_22
    return v2
.end method

.method public whitelist core-platform-api test-api getFieldSize()I
    .registers 2

    .line 168
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    return v0
.end method

.method public whitelist core-platform-api test-api getM()I
    .registers 2

    .line 178
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    return v0
.end method

.method public whitelist core-platform-api test-api getMidTermsOfReductionPolynomial()[I
    .registers 2

    .line 203
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    if-nez v0, :cond_6

    .line 204
    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_6
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public whitelist core-platform-api test-api getReductionPolynomial()Ljava/math/BigInteger;
    .registers 2

    .line 190
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 235
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    shl-int/lit8 v0, v0, 0x5

    .line 236
    .local v0, "value":I
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    .line 239
    return v0
.end method

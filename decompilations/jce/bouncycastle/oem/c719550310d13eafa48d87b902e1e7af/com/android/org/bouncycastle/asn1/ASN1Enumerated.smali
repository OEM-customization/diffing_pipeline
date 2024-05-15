.class public Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Enumerated.java"


# static fields
.field private static cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;


# instance fields
.field private final bytes:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 156
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 80
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 91
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    .line 92
    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .param p1, "bytes"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 102
    array-length v0, p1

    if-le v0, v2, :cond_2f

    .line 104
    aget-byte v0, p1, v1

    if-nez v0, :cond_1b

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1b

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "malformed enumerated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1b
    aget-byte v0, p1, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2f

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2f

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "malformed enumerated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_2f
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    .line 114
    return-void
.end method

.method static fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    .registers 6
    .param p0, "enc"    # [B

    .prologue
    const/4 v4, 0x0

    .line 160
    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_b

    .line 162
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    return-object v2

    .line 165
    :cond_b
    array-length v2, p0

    if-nez v2, :cond_17

    .line 167
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "ENUMERATED has zero length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_17
    aget-byte v2, p0, v4

    and-int/lit16 v1, v2, 0xff

    .line 171
    .local v1, "value":I
    sget-object v2, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    array-length v2, v2

    if-lt v1, v2, :cond_2a

    .line 173
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    return-object v2

    .line 176
    :cond_2a
    sget-object v2, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    aget-object v0, v2, v1

    .line 178
    .local v0, "possibleMatch":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    if-nez v0, :cond_3d

    .line 180
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    .end local v0    # "possibleMatch":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    sget-object v2, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->cache:[Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    aput-object v0, v2, v1

    .line 183
    .restart local v0    # "possibleMatch":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :cond_3d
    return-object v0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    .registers 4
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 62
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_a

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    if-eqz v1, :cond_f

    .line 64
    :cond_a
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v1

    return-object v1

    .line 68
    :cond_f
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 26
    if-eqz p0, :cond_6

    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    if-eqz v1, :cond_9

    .line 28
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 31
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v1, p0, [B

    if-eqz v1, :cond_35

    .line 35
    :try_start_d
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    return-object v1

    .line 38
    :catch_16
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "illegal object in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 5
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    .line 141
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    if-nez v1, :cond_6

    .line 143
    const/4 v1, 0x0

    return v1

    :cond_6
    move-object v0, p1

    .line 146
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    .line 148
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    return v1
.end method

.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 4
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 136
    return-void
.end method

.method encodedLength()I
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 118
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->bytes:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .registers 2

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

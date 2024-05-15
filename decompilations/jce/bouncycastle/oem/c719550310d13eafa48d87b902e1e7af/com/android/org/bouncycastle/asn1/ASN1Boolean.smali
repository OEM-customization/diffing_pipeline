.class public Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Boolean.java"


# static fields
.field public static final FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

.field private static final FALSE_VALUE:[B

.field public static final TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

.field private static final TRUE_VALUE:[B


# instance fields
.field private final value:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-array v0, v3, [B

    const/4 v1, -0x1

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    .line 23
    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .line 19
    return-void
.end method

.method protected constructor <init>(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 153
    if-eqz p1, :cond_a

    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    :goto_7
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    .line 154
    return-void

    .line 153
    :cond_a
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    goto :goto_7
.end method

.method protected constructor <init>([B)V
    .registers 5
    .param p1, "value"    # [B

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 125
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_11
    aget-byte v0, p1, v2

    if-nez v0, :cond_1a

    .line 132
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    .line 142
    :goto_19
    return-void

    .line 134
    :cond_1a
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_27

    .line 136
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    goto :goto_19

    .line 140
    :cond_27
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    goto :goto_19
.end method

.method static fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .registers 4
    .param p0, "value"    # [B

    .prologue
    const/4 v2, 0x0

    .line 202
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "BOOLEAN value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_e
    aget-byte v0, p0, v2

    if-nez v0, :cond_15

    .line 209
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    return-object v0

    .line 211
    :cond_15
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_20

    .line 213
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    return-object v0

    .line 217
    :cond_20
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>([B)V

    return-object v0
.end method

.method public static getInstance(I)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 80
    if-eqz p0, :cond_5

    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_4
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .registers 4
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 110
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_a

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_f

    .line 112
    :cond_a
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    return-object v1

    .line 116
    :cond_f
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .registers 6
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 40
    if-eqz p0, :cond_6

    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v2, :cond_9

    .line 42
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 45
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v2, p0, [B

    if-eqz v2, :cond_36

    move-object v1, p0

    .line 47
    check-cast v1, [B

    .line 50
    .local v1, "enc":[B
    :try_start_10
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_17

    return-object v2

    .line 53
    :catch_17
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to construct boolean from byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "enc":[B
    :cond_36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "illegal object in getInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .registers 2
    .param p0, "value"    # Z

    .prologue
    .line 69
    if-eqz p0, :cond_5

    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_4
.end method

.method public static getInstance([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .registers 2
    .param p0, "octets"    # [B

    .prologue
    const/4 v0, 0x0

    .line 90
    aget-byte v0, p0, v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    :goto_7
    return-object v0

    :cond_8
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_7
.end method


# virtual methods
.method protected asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 5
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    const/4 v0, 0x0

    .line 181
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_13

    .line 183
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    aget-byte v1, v1, v0

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .end local p1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iget-object v2, p1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 186
    .restart local p1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_13
    return v0
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
    .line 175
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 176
    return-void
.end method

.method encodedLength()I
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x3

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method isConstructed()Z
    .registers 2

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public isTrue()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 158
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    aget-byte v0, v0, v1

    if-eqz v0, :cond_b

    const-string/jumbo v0, "TRUE"

    :goto_a
    return-object v0

    :cond_b
    const-string/jumbo v0, "FALSE"

    goto :goto_a
.end method

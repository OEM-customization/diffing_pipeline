.class public Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Boolean.java"


# static fields
.field public static final blacklist FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

.field private static final blacklist FALSE_VALUE:[B

.field public static final blacklist TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

.field private static final blacklist TRUE_VALUE:[B


# instance fields
.field private final blacklist value:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 23
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    sput-object v1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    .line 24
    new-array v1, v0, [B

    aput-byte v3, v1, v3

    sput-object v1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    .line 28
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    .line 29
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    return-void
.end method

.method protected constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 150
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 151
    if-eqz p1, :cond_8

    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    goto :goto_a

    :cond_8
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    :goto_a
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    .line 152
    return-void
.end method

.method constructor blacklist <init>([B)V
    .registers 4
    .param p1, "value"    # [B

    .line 123
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 124
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 129
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-nez v1, :cond_11

    .line 131
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    goto :goto_23

    .line 133
    :cond_11
    aget-byte v0, p1, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1d

    .line 135
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    goto :goto_23

    .line 139
    :cond_1d
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    .line 141
    :goto_23
    return-void

    .line 126
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .registers 3
    .param p0, "value"    # [B

    .line 200
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 205
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    if-nez v1, :cond_c

    .line 207
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    return-object v0

    .line 209
    :cond_c
    aget-byte v0, p0, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_16

    .line 211
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    return-object v0

    .line 215
    :cond_16
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;-><init>([B)V

    return-object v0

    .line 202
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BOOLEAN value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(I)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .registers 2
    .param p0, "value"    # I

    .line 81
    if-eqz p0, :cond_5

    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    :goto_7
    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .registers 4
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 109
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 111
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_17

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_b

    goto :goto_17

    .line 117
    :cond_b
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    return-object v1

    .line 113
    :cond_17
    :goto_17
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .registers 6
    .param p0, "obj"    # Ljava/lang/Object;

    .line 41
    if-eqz p0, :cond_50

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_7

    goto :goto_50

    .line 46
    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_31

    .line 48
    move-object v0, p0

    check-cast v0, [B

    .line 51
    .local v0, "enc":[B
    :try_start_e
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_15

    return-object v1

    .line 53
    :catch_15
    move-exception v1

    .line 55
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct boolean from byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    .end local v0    # "enc":[B
    .end local v1    # "e":Ljava/io/IOException;
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_50
    :goto_50
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    return-object v0
.end method

.method public static blacklist getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .registers 2
    .param p0, "value"    # Z

    .line 70
    if-eqz p0, :cond_5

    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    :goto_7
    return-object v0
.end method

.method public static blacklist getInstance([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .registers 2
    .param p0, "octets"    # [B

    .line 91
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_a

    :cond_8
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    :goto_a
    return-object v0
.end method


# virtual methods
.method protected blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 5
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 179
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 181
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    aget-byte v0, v0, v1

    move-object v2, p1

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    iget-object v2, v2, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    aget-byte v2, v2, v1

    if-ne v0, v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    .line 184
    :cond_14
    return v1
.end method

.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 4
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 174
    return-void
.end method

.method blacklist encodedLength()I
    .registers 2

    .line 166
    const/4 v0, 0x3

    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method blacklist isConstructed()Z
    .registers 2

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTrue()Z
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_a

    const-string v0, "TRUE"

    goto :goto_c

    :cond_a
    const-string v0, "FALSE"

    :goto_c
    return-object v0
.end method

.class public Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1ObjectIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
    }
.end annotation


# static fields
.field private static final LONG_LIMIT:J = 0xffffffffffff80L

.field private static final pool:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;",
            "Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private body:[B

.field private final identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 450
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    .line 14
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .registers 6
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "branchID"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 202
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->isValidBranchID(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not a valid OID branch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 176
    if-nez p1, :cond_e

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'identifier\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_e
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not an OID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_35
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    .line 192
    return-void
.end method

.method constructor <init>([B)V
    .registers 12
    .param p1, "bytes"    # [B

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 88
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v4, "objId":Ljava/lang/StringBuffer;
    const-wide/16 v6, 0x0

    .line 90
    .local v6, "value":J
    const/4 v1, 0x0

    .line 91
    .local v1, "bigValue":Ljava/math/BigInteger;
    const/4 v2, 0x1

    .line 93
    .local v2, "first":Z
    const/4 v3, 0x0

    .end local v1    # "bigValue":Ljava/math/BigInteger;
    .local v3, "i":I
    :goto_d
    array-length v5, p1

    if-eq v3, v5, :cond_94

    .line 95
    aget-byte v5, p1, v3

    and-int/lit16 v0, v5, 0xff

    .line 97
    .local v0, "b":I
    const-wide v8, 0xffffffffffff80L

    cmp-long v5, v6, v8

    if-gtz v5, :cond_5b

    .line 99
    and-int/lit8 v5, v0, 0x7f

    int-to-long v8, v5

    add-long/2addr v6, v8

    .line 100
    and-int/lit16 v5, v0, 0x80

    if-nez v5, :cond_58

    .line 102
    if-eqz v2, :cond_33

    .line 104
    const-wide/16 v8, 0x28

    cmp-long v5, v6, v8

    if-gez v5, :cond_40

    .line 106
    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    :goto_32
    const/4 v2, 0x0

    .line 121
    :cond_33
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 123
    const-wide/16 v6, 0x0

    .line 93
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 108
    :cond_40
    const-wide/16 v8, 0x50

    cmp-long v5, v6, v8

    if-gez v5, :cond_4f

    .line 110
    const/16 v5, 0x31

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    const-wide/16 v8, 0x28

    sub-long/2addr v6, v8

    goto :goto_32

    .line 115
    :cond_4f
    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    const-wide/16 v8, 0x50

    sub-long/2addr v6, v8

    goto :goto_32

    .line 127
    :cond_58
    const/4 v5, 0x7

    shl-long/2addr v6, v5

    goto :goto_3d

    .line 132
    :cond_5b
    if-nez v1, :cond_61

    .line 134
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 136
    :cond_61
    and-int/lit8 v5, v0, 0x7f

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 137
    .local v1, "bigValue":Ljava/math/BigInteger;
    and-int/lit16 v5, v0, 0x80

    if-nez v5, :cond_8e

    .line 139
    if-eqz v2, :cond_82

    .line 141
    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 142
    const-wide/16 v8, 0x50

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 143
    const/4 v2, 0x0

    .line 146
    :cond_82
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 148
    const/4 v1, 0x0

    .line 149
    .local v1, "bigValue":Ljava/math/BigInteger;
    const-wide/16 v6, 0x0

    goto :goto_3d

    .line 153
    .local v1, "bigValue":Ljava/math/BigInteger;
    :cond_8e
    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_3d

    .line 163
    .end local v0    # "b":I
    .end local v1    # "bigValue":Ljava/math/BigInteger;
    :cond_94
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    .line 165
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->body:[B

    .line 166
    return-void
.end method

.method private doOutput(Ljava/io/ByteArrayOutputStream;)V
    .registers 11
    .param p1, "aOut"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/16 v8, 0x12

    .line 283
    new-instance v2, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;

    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    .line 284
    .local v2, "tok":Lcom/android/org/bouncycastle/asn1/OIDTokenizer;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v0, v4, 0x28

    .line 286
    .local v0, "first":I
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "secondToken":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v8, :cond_3e

    .line 289
    int-to-long v4, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {p0, p1, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    .line 296
    :goto_26
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 298
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v8, :cond_50

    .line 301
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_26

    .line 293
    .end local v3    # "token":Ljava/lang/String;
    :cond_3e
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_26

    .line 305
    .restart local v3    # "token":Ljava/lang/String;
    :cond_50
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_26

    .line 308
    .end local v3    # "token":Ljava/lang/String;
    :cond_59
    return-void
.end method

.method static fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 4
    .param p0, "enc"    # [B

    .prologue
    .line 481
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;-><init>([B)V

    .line 482
    .local v0, "hdl":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
    sget-object v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 483
    .local v1, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v1, :cond_15

    .line 485
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    return-object v2

    .line 487
    :cond_15
    return-object v1
.end method

.method private declared-synchronized getBody()[B
    .registers 3

    .prologue
    monitor-enter p0

    .line 312
    :try_start_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->body:[B

    if-nez v1, :cond_13

    .line 314
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 316
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->doOutput(Ljava/io/ByteArrayOutputStream;)V

    .line 318
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->body:[B

    .line 321
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    :cond_13
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->body:[B
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v1

    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 4
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 73
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_a

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_f

    .line 75
    :cond_a
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    return-object v1

    .line 79
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 6
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 31
    if-eqz p0, :cond_6

    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_9

    .line 33
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 36
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_21

    move-object v2, p0

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_21

    .line 38
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v2

    .line 41
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_21
    instance-of v2, p0, [B

    if-eqz v2, :cond_4e

    move-object v1, p0

    .line 43
    check-cast v1, [B

    .line 46
    .local v1, "enc":[B
    :try_start_28
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2e} :catch_2f

    return-object v2

    .line 49
    :catch_2f
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to construct object identifier from byte[]: "

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

    .line 54
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "enc":[B
    :cond_4e
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

.method private static isValidBranchID(Ljava/lang/String;I)Z
    .registers 7
    .param p0, "branchID"    # Ljava/lang/String;
    .param p1, "start"    # I

    .prologue
    const/4 v4, 0x0

    .line 377
    const/4 v1, 0x0

    .line 379
    .local v1, "periodAllowed":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 380
    .local v2, "pos":I
    :goto_6
    add-int/lit8 v2, v2, -0x1

    if-lt v2, p1, :cond_22

    .line 382
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 385
    .local v0, "ch":C
    const/16 v3, 0x30

    if-gt v3, v0, :cond_18

    const/16 v3, 0x39

    if-gt v0, v3, :cond_18

    .line 387
    const/4 v1, 0x1

    .line 388
    goto :goto_6

    .line 391
    :cond_18
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_21

    .line 393
    if-nez v1, :cond_1f

    .line 395
    return v4

    .line 398
    :cond_1f
    const/4 v1, 0x0

    .line 399
    goto :goto_6

    .line 402
    :cond_21
    return v4

    .line 405
    .end local v0    # "ch":C
    :cond_22
    return v1
.end method

.method private static isValidIdentifier(Ljava/lang/String;)Z
    .registers 5
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_11

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_12

    .line 413
    :cond_11
    return v3

    .line 416
    :cond_12
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 417
    .local v0, "first":C
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1e

    const/16 v1, 0x32

    if-le v0, v1, :cond_1f

    .line 419
    :cond_1e
    return v3

    .line 422
    :cond_1f
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->isValidBranchID(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private writeField(Ljava/io/ByteArrayOutputStream;J)V
    .registers 8
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "fieldValue"    # J

    .prologue
    .line 247
    const/16 v2, 0x9

    new-array v1, v2, [B

    .line 248
    .local v1, "result":[B
    const/16 v0, 0x8

    .line 249
    .local v0, "pos":I
    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 250
    :goto_c
    const-wide/16 v2, 0x80

    cmp-long v2, p2, v2

    if-ltz v2, :cond_1f

    .line 252
    const/4 v2, 0x7

    shr-long/2addr p2, v2

    .line 253
    add-int/lit8 v0, v0, -0x1

    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_c

    .line 255
    :cond_1f
    rsub-int/lit8 v2, v0, 0x9

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 256
    return-void
.end method

.method private writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .registers 10
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "fieldValue"    # Ljava/math/BigInteger;

    .prologue
    const/4 v6, 0x0

    .line 262
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    div-int/lit8 v0, v4, 0x7

    .line 263
    .local v0, "byteCount":I
    if-nez v0, :cond_f

    .line 265
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 279
    :goto_e
    return-void

    .line 269
    :cond_f
    move-object v3, p2

    .line 270
    .local v3, "tmpValue":Ljava/math/BigInteger;
    new-array v2, v0, [B

    .line 271
    .local v2, "tmp":[B
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_29

    .line 273
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 274
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 271
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 276
    :cond_29
    add-int/lit8 v4, v0, -0x1

    aget-byte v5, v2, v4

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 277
    array-length v4, v2

    invoke-virtual {p1, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 4
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    .line 356
    if-ne p1, p0, :cond_4

    .line 358
    const/4 v0, 0x1

    return v0

    .line 361
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez v0, :cond_a

    .line 363
    const/4 v0, 0x0

    return v0

    .line 366
    :cond_a
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .end local p1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iget-object v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3
    .param p1, "branchID"    # Ljava/lang/String;

    .prologue
    .line 228
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    return-object v0
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
    .line 341
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v0

    .line 343
    .local v0, "enc":[B
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 344
    array-length v1, v0

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 345
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([B)V

    .line 346
    return-void
.end method

.method encodedLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v1

    array-length v0, v1

    .line 334
    .local v0, "length":I
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 4

    .prologue
    .line 437
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;-><init>([B)V

    .line 438
    .local v0, "hdl":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
    sget-object v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 439
    .local v1, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v1, :cond_1e

    .line 441
    sget-object v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->pool:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 442
    .restart local v1    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v1, :cond_1e

    .line 444
    move-object v1, p0

    .line 447
    :cond_1e
    return-object v1
.end method

.method isConstructed()Z
    .registers 2

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public on(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 6
    .param p1, "stem"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "stemId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_23

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    :goto_22
    return v2

    :cond_23
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

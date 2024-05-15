.class public Lcom/android/org/bouncycastle/asn1/BEROctetString;
.super Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
.source "BEROctetString.java"


# static fields
.field private static final blacklist DEFAULT_LENGTH:I = 0x3e8


# instance fields
.field private final blacklist chunkSize:I

.field private final blacklist octs:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "string"    # [B

    .line 68
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([BI)V

    .line 69
    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 4
    .param p1, "string"    # [B
    .param p2, "chunkSize"    # I

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;I)V

    .line 93
    return-void
.end method

.method private constructor blacklist <init>([B[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;I)V
    .registers 4
    .param p1, "string"    # [B
    .param p2, "octs"    # [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .param p3, "chunkSize"    # I

    .line 111
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 112
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 113
    iput p3, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->chunkSize:I

    .line 114
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 3
    .param p1, "octs"    # [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 80
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;I)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;I)V
    .registers 4
    .param p1, "octs"    # [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .param p2, "chunkSize"    # I

    .line 106
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->toBytes([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)[B

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;I)V

    .line 107
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/org/bouncycastle/asn1/BEROctetString;)[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/asn1/BEROctetString;

    .line 24
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method static blacklist fromSequence(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/BEROctetString;
    .registers 6
    .param p0, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 218
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 219
    .local v0, "v":[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 220
    .local v1, "e":Ljava/util/Enumeration;
    const/4 v2, 0x0

    .line 222
    .local v2, "index":I
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 224
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    aput-object v4, v0, v2

    move v2, v3

    goto :goto_b

    .line 227
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :cond_1d
    new-instance v3, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v3
.end method

.method private blacklist generateOcts()Ljava/util/Vector;
    .registers 8

    .line 155
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 156
    .local v0, "vec":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v2, v2

    if-ge v1, v2, :cond_31

    .line 160
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->chunkSize:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v3, v3

    if-le v2, v3, :cond_17

    .line 162
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v2, v2

    .local v2, "end":I
    goto :goto_1a

    .line 166
    .end local v2    # "end":I
    :cond_17
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->chunkSize:I

    add-int/2addr v2, v1

    .line 169
    .restart local v2    # "end":I
    :goto_1a
    sub-int v3, v2, v1

    new-array v3, v3, [B

    .line 171
    .local v3, "nStr":[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->string:[B

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v4, v1, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v3}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 156
    .end local v2    # "end":I
    .end local v3    # "nStr":[B
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->chunkSize:I

    add-int/2addr v1, v2

    goto :goto_6

    .line 176
    .end local v1    # "i":I
    :cond_31
    return-object v0
.end method

.method private static blacklist toBytes([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)[B
    .registers 7
    .param p0, "octs"    # [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 38
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 40
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-eq v1, v2, :cond_56

    .line 44
    :try_start_9
    aget-object v2, p0, v1

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 46
    .local v2, "o":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_14} :catch_34
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_18

    .line 55
    .end local v2    # "o":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    nop

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 52
    :catch_18
    move-exception v2

    .line 54
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception converting octets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    .end local v2    # "e":Ljava/io/IOException;
    :catch_34
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p0, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " found in input should only contain DEROctetString"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 58
    .end local v1    # "i":I
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_56
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 4
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 202
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 209
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_e

    .line 212
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 213
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 214
    return-void
.end method

.method blacklist encodedLength()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 190
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_5

    .line 193
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_1b
    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public blacklist getObjects()Ljava/util/Enumeration;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-nez v0, :cond_d

    .line 134
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->generateOcts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 137
    :cond_d
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;-><init>(Lcom/android/org/bouncycastle/asn1/BEROctetString;)V

    return-object v0
.end method

.method public blacklist core-platform-api getOctets()[B
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->string:[B

    return-object v0
.end method

.method blacklist isConstructed()Z
    .registers 2

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/android/org/bouncycastle/asn1/BEROctetString;
.super Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
.source "BEROctetString.java"


# static fields
.field private static final MAX_LENGTH:I = 0x3e8


# instance fields
.field private octs:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method static synthetic -get0(Lcom/android/org/bouncycastle/asn1/BEROctetString;)[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/asn1/BEROctetString;

    .prologue
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public constructor <init>([B)V
    .registers 2
    .param p1, "string"    # [B

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 51
    return-void
.end method

.method public constructor <init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 3
    .param p1, "octs"    # [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .prologue
    .line 56
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->toBytes([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 58
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 59
    return-void
.end method

.method static fromSequence(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/BEROctetString;
    .registers 6
    .param p0, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v3, v4, [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 158
    .local v3, "v":[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 159
    .local v0, "e":Ljava/util/Enumeration;
    const/4 v1, 0x0

    .line 161
    .local v1, "index":I
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 163
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    aput-object v4, v3, v1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_b

    .line 166
    :cond_1d
    new-instance v4, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v4, v3}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v4
.end method

.method private generateOcts()Ljava/util/Vector;
    .registers 8

    .prologue
    .line 94
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 95
    .local v3, "vec":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v4, v4

    if-ge v1, v4, :cond_2e

    .line 99
    add-int/lit16 v4, v1, 0x3e8

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v5, v5

    if-le v4, v5, :cond_2b

    .line 101
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v0, v4

    .line 108
    .local v0, "end":I
    :goto_15
    sub-int v4, v0, v1

    new-array v2, v4, [B

    .line 110
    .local v2, "nStr":[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v4, v1, v2, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 112
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 95
    add-int/lit16 v1, v1, 0x3e8

    goto :goto_6

    .line 105
    .end local v0    # "end":I
    .end local v2    # "nStr":[B
    :cond_2b
    add-int/lit16 v0, v1, 0x3e8

    .restart local v0    # "end":I
    goto :goto_15

    .line 115
    .end local v0    # "end":I
    :cond_2e
    return-object v3
.end method

.method private static toBytes([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)[B
    .registers 9
    .param p0, "octs"    # [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .prologue
    .line 21
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    array-length v5, p0

    if-eq v3, v5, :cond_5b

    .line 27
    :try_start_9
    aget-object v4, p0, v3

    check-cast v4, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 29
    .local v4, "o":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_14} :catch_36
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_17

    .line 23
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 36
    .end local v4    # "o":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    :catch_17
    move-exception v1

    .line 37
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "exception converting octets "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 32
    .end local v1    # "e":Ljava/io/IOException;
    :catch_36
    move-exception v2

    .line 33
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p0, v3

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " found in input should only contain DEROctetString"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 41
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_5b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 5
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 139
    const/16 v1, 0x24

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 141
    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 148
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_f

    .line 151
    :cond_1f
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 152
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 153
    return-void
.end method

.method encodedLength()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "length":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 129
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5

    .line 132
    :cond_1b
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x2

    return v2
.end method

.method public getObjects()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->octs:[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-nez v0, :cond_d

    .line 73
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;->generateOcts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 76
    :cond_d
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetString$1;-><init>(Lcom/android/org/bouncycastle/asn1/BEROctetString;)V

    return-object v0
.end method

.method public getOctets()[B
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetString;->string:[B

    return-object v0
.end method

.method isConstructed()Z
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

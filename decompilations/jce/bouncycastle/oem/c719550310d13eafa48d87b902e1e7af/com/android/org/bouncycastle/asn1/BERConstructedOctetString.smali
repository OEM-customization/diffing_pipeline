.class public Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;
.super Lcom/android/org/bouncycastle/asn1/BEROctetString;
.source "BERConstructedOctetString.java"


# static fields
.field private static final MAX_LENGTH:I = 0x3e8


# instance fields
.field private octs:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .prologue
    .line 85
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 3
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->toByteArray(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .registers 3
    .param p1, "octs"    # Ljava/util/Vector;

    .prologue
    .line 59
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->toBytes(Ljava/util/Vector;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    .line 61
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    .line 62
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .param p1, "string"    # [B

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    .line 54
    return-void
.end method

.method public static fromSequence(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/BEROctetString;
    .registers 4
    .param p0, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 134
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 135
    .local v1, "v":Ljava/util/Vector;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 137
    .local v0, "e":Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 139
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_9

    .line 142
    :cond_17
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    return-object v2
.end method

.method private generateOcts()Ljava/util/Vector;
    .registers 8

    .prologue
    .line 108
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 109
    .local v3, "vec":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v4, v4

    if-ge v1, v4, :cond_2e

    .line 113
    add-int/lit16 v4, v1, 0x3e8

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v5, v5

    if-le v4, v5, :cond_2b

    .line 115
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v0, v4

    .line 122
    .local v0, "end":I
    :goto_15
    sub-int v4, v0, v1

    new-array v2, v4, [B

    .line 124
    .local v2, "nStr":[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v4, v1, v2, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 126
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 109
    add-int/lit16 v1, v1, 0x3e8

    goto :goto_6

    .line 119
    .end local v0    # "end":I
    .end local v2    # "nStr":[B
    :cond_2b
    add-int/lit16 v0, v1, 0x3e8

    .restart local v0    # "end":I
    goto :goto_15

    .line 129
    .end local v0    # "end":I
    :cond_2e
    return-object v3
.end method

.method private static toByteArray(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)[B
    .registers 4
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 77
    :catch_5
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unable to encode object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static toBytes(Ljava/util/Vector;)[B
    .registers 9
    .param p0, "octs"    # Ljava/util/Vector;

    .prologue
    .line 22
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 24
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v3, v5, :cond_62

    .line 28
    :try_start_c
    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 30
    .local v4, "o":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_19} :catch_3b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_1c

    .line 24
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 37
    .end local v4    # "o":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    :catch_1c
    move-exception v1

    .line 38
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

    .line 33
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3b
    move-exception v2

    .line 34
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    .line 42
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public getObjects()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    if-nez v0, :cond_d

    .line 100
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->generateOcts()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 103
    :cond_d
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->octs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getOctets()[B
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERConstructedOctetString;->string:[B

    return-object v0
.end method

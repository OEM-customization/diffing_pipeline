.class public Lcom/android/org/bouncycastle/asn1/DERPrintableString;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "DERPrintableString.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1String;


# instance fields
.field private final string:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "validate"    # Z

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 103
    if-eqz p2, :cond_16

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->isPrintableString(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "string contains illegal characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_16
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    .line 109
    return-void
.end method

.method constructor <init>([B)V
    .registers 2
    .param p1, "string"    # [B

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    .line 80
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERPrintableString;
    .registers 5
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 63
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_a

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    if-eqz v1, :cond_f

    .line 65
    :cond_a
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    move-result-object v1

    return-object v1

    .line 69
    :cond_f
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERPrintableString;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 27
    if-eqz p0, :cond_6

    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    if-eqz v1, :cond_9

    .line 29
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 32
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v1, p0, [B

    if-eqz v1, :cond_35

    .line 36
    :try_start_d
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERPrintableString;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    return-object v1

    .line 39
    :catch_16
    move-exception v0

    .line 40
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

    .line 44
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

.method public static isPrintableString(Ljava/lang/String;)Z
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_31

    .line 172
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 174
    .local v0, "ch":C
    const/16 v2, 0x7f

    if-le v0, v2, :cond_12

    .line 176
    return v3

    .line 179
    :cond_12
    const/16 v2, 0x61

    if-gt v2, v0, :cond_1d

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_1d

    .line 170
    :cond_1a
    :sswitch_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 184
    :cond_1d
    const/16 v2, 0x41

    if-gt v2, v0, :cond_25

    const/16 v2, 0x5a

    if-le v0, v2, :cond_1a

    .line 189
    :cond_25
    const/16 v2, 0x30

    if-gt v2, v0, :cond_2d

    const/16 v2, 0x39

    if-le v0, v2, :cond_1a

    .line 194
    :cond_2d
    sparse-switch v0, :sswitch_data_34

    .line 211
    return v3

    .line 214
    .end local v0    # "ch":C
    :cond_31
    const/4 v2, 0x1

    return v2

    .line 194
    nop

    :sswitch_data_34
    .sparse-switch
        0x20 -> :sswitch_1a
        0x27 -> :sswitch_1a
        0x28 -> :sswitch_1a
        0x29 -> :sswitch_1a
        0x2b -> :sswitch_1a
        0x2c -> :sswitch_1a
        0x2d -> :sswitch_1a
        0x2e -> :sswitch_1a
        0x2f -> :sswitch_1a
        0x3a -> :sswitch_1a
        0x3d -> :sswitch_1a
        0x3f -> :sswitch_1a
    .end sparse-switch
.end method


# virtual methods
.method asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 5
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .prologue
    .line 146
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    if-nez v1, :cond_6

    .line 148
    const/4 v1, 0x0

    return v1

    :cond_6
    move-object v0, p1

    .line 151
    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    .line 153
    .local v0, "s":Lcom/android/org/bouncycastle/asn1/DERPrintableString;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    iget-object v2, v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

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
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 136
    return-void
.end method

.method encodedLength()I
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOctets()[B
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->string:[B

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

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

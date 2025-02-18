.class public Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;
.source "ASN1StreamParser.java"


# instance fields
.field private final blacklist _in:Ljava/io/InputStream;

.field private final blacklist _limit:I

.field private final blacklist tmpBuffers:[[B


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 21
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    .line 29
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    .line 31
    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    .line 32
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "encoding"    # [B

    .line 37
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 38
    return-void
.end method

.method private blacklist set00Check(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 227
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v1, :cond_b

    .line 229
    check-cast v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    .line 231
    :cond_b
    return-void
.end method


# virtual methods
.method blacklist readImplicit(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .param p1, "constructed"    # Z
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v1, :cond_15

    .line 64
    if-eqz p1, :cond_d

    .line 69
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0

    .line 66
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_15
    if-eqz p1, :cond_2d

    .line 74
    sparse-switch p2, :sswitch_data_52

    .line 81
    goto :goto_49

    .line 77
    :sswitch_1b
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSetParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DLSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    .line 79
    :sswitch_21
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSequenceParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DLSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    .line 81
    :sswitch_27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    .line 86
    :cond_2d
    sparse-switch p2, :sswitch_data_60

    goto :goto_49

    .line 89
    :sswitch_31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v1, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :sswitch_39
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v1, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :sswitch_41
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    return-object v1

    .line 97
    :goto_49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v1, "implicit tagging not implemented"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_52
    .sparse-switch
        0x4 -> :sswitch_27
        0x10 -> :sswitch_21
        0x11 -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_60
    .sparse-switch
        0x4 -> :sswitch_41
        0x10 -> :sswitch_39
        0x11 -> :sswitch_31
    .end sparse-switch
.end method

.method blacklist readIndef(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .param p1, "tagValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    sparse-switch p1, :sswitch_data_36

    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown BER object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :sswitch_1e
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    .line 52
    :sswitch_24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    .line 48
    :sswitch_2a
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    .line 50
    :sswitch_30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :sswitch_data_36
    .sparse-switch
        0x4 -> :sswitch_30
        0x8 -> :sswitch_2a
        0x10 -> :sswitch_24
        0x11 -> :sswitch_1e
    .end sparse-switch
.end method

.method public blacklist readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 127
    .local v0, "tag":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 129
    const/4 v1, 0x0

    return-object v1

    .line 135
    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    .line 140
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v2

    .line 142
    .local v2, "tagNo":I
    and-int/lit8 v3, v0, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_1c

    move v3, v4

    goto :goto_1d

    :cond_1c
    move v3, v1

    .line 147
    .local v3, "isConstructed":Z
    :goto_1d
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    const/4 v7, 0x4

    if-eq v2, v7, :cond_30

    const/16 v7, 0x10

    if-eq v2, v7, :cond_30

    const/16 v7, 0x11

    if-eq v2, v7, :cond_30

    const/16 v7, 0x8

    if-ne v2, v7, :cond_31

    :cond_30
    move v1, v4

    :cond_31
    invoke-static {v5, v6, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result v1

    .line 150
    .local v1, "length":I
    if-gez v1, :cond_6a

    .line 152
    if-eqz v3, :cond_62

    .line 157
    new-instance v5, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v5, v6, v7}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 158
    .local v5, "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v6, v5, v7}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 160
    .local v6, "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_53

    .line 162
    new-instance v4, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v4, v2, v6}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v4

    .line 165
    :cond_53
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_5d

    .line 167
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v7, v4, v2, v6}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v7

    .line 170
    :cond_5d
    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    return-object v4

    .line 154
    .end local v5    # "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v6    # "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_62
    new-instance v4, Ljava/io/IOException;

    const-string v5, "indefinite-length primitive encoding encountered"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 174
    :cond_6a
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v4, v5, v1, v6}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 176
    .local v4, "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_81

    .line 178
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DLApplicationSpecific;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v3, v2, v6}, Lcom/android/org/bouncycastle/asn1/DLApplicationSpecific;-><init>(ZI[B)V

    return-object v5

    .line 181
    :cond_81
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_90

    .line 183
    new-instance v5, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v6, v4}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v3, v2, v6}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v5

    .line 186
    :cond_90
    if-eqz v3, :cond_dd

    .line 189
    sparse-switch v2, :sswitch_data_f8

    .line 203
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " encountered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 199
    :sswitch_b1
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DLSetParser;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v6, v4}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DLSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v5

    .line 197
    :sswitch_bc
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DLSequenceParser;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v6, v4}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DLSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v5

    .line 201
    :sswitch_c7
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v6, v4}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v5

    .line 195
    :sswitch_d2
    new-instance v5, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v6, v4}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v5

    .line 208
    :cond_dd
    packed-switch v2, :pswitch_data_10a

    .line 216
    :try_start_e0
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B
    :try_end_e2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e0 .. :try_end_e2} :catch_ee

    goto :goto_e9

    .line 211
    :pswitch_e3
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;

    invoke-direct {v5, v4}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    return-object v5

    .line 216
    :goto_e9
    :try_start_e9
    invoke-static {v2, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5
    :try_end_ed
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e9 .. :try_end_ed} :catch_ee

    return-object v5

    .line 218
    :catch_ee
    move-exception v5

    .line 220
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v7, "corrupted stream detected"

    invoke-direct {v6, v7, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    nop

    :sswitch_data_f8
    .sparse-switch
        0x4 -> :sswitch_d2
        0x8 -> :sswitch_c7
        0x10 -> :sswitch_bc
        0x11 -> :sswitch_b1
    .end sparse-switch

    :pswitch_data_10a
    .packed-switch 0x4
        :pswitch_e3
    .end packed-switch
.end method

.method blacklist readTaggedObject(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 8
    .param p1, "constructed"    # Z
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    if-nez p1, :cond_16

    .line 105
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    .line 106
    .local v1, "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v0, p2, v3}, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    .line 109
    .end local v1    # "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    :cond_16
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    .line 111
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    const/4 v3, 0x1

    if-eqz v2, :cond_3b

    .line 113
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v3, :cond_31

    .line 114
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {v2, v3, p2, v0}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_3a

    .line 115
    :cond_31
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/BERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/BERSequence;

    move-result-object v3

    invoke-direct {v2, v0, p2, v3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 113
    :goto_3a
    return-object v2

    .line 118
    :cond_3b
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v3, :cond_4b

    .line 119
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {v2, v3, p2, v0}, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_54

    .line 120
    :cond_4b
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-direct {v2, v0, p2, v3}, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 118
    :goto_54
    return-object v2
.end method

.method blacklist readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 236
    .local v0, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-nez v0, :cond_d

    .line 238
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object v1

    .line 241
    :cond_d
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 244
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_12
    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;

    if-eqz v2, :cond_21

    .line 246
    move-object v2, v0

    check-cast v2, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_28

    .line 250
    :cond_21
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 253
    :goto_28
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    move-object v0, v2

    if-nez v2, :cond_30

    .line 254
    return-object v1

    .line 253
    :cond_30
    goto :goto_12
.end method

.class public Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;
.source "ASN1StreamParser.java"


# instance fields
.field private final _in:Ljava/io/InputStream;

.field private final _limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 19
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    .line 27
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    .line 29
    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    .line 30
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "encoding"    # [B

    .prologue
    .line 35
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 36
    return-void
.end method

.method private set00Check(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_d

    .line 226
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    .line 228
    :cond_d
    return-void
.end method


# virtual methods
.method readImplicit(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .param p1, "constructed"    # Z
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_16

    .line 62
    if-nez p1, :cond_11

    .line 64
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_11
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0

    .line 70
    :cond_16
    if-eqz p1, :cond_36

    .line 72
    sparse-switch p2, :sswitch_data_56

    .line 95
    :goto_1b
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string/jumbo v1, "implicit tagging not implemented"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :sswitch_24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSetParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    .line 77
    :sswitch_2a
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    .line 79
    :sswitch_30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    .line 84
    :cond_36
    sparse-switch p2, :sswitch_data_64

    goto :goto_1b

    .line 91
    :sswitch_3a
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    return-object v1

    .line 87
    :sswitch_44
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string/jumbo v1, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :sswitch_4d
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string/jumbo v1, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :sswitch_data_56
    .sparse-switch
        0x4 -> :sswitch_30
        0x10 -> :sswitch_2a
        0x11 -> :sswitch_24
    .end sparse-switch

    .line 84
    :sswitch_data_64
    .sparse-switch
        0x4 -> :sswitch_3a
        0x10 -> :sswitch_4d
        0x11 -> :sswitch_44
    .end sparse-switch
.end method

.method readIndef(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .param p1, "tagValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_3a

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown BER object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :sswitch_21
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    .line 48
    :sswitch_27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    .line 50
    :sswitch_2d
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    .line 52
    :sswitch_33
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    .line 43
    nop

    :sswitch_data_3a
    .sparse-switch
        0x4 -> :sswitch_27
        0x8 -> :sswitch_21
        0x10 -> :sswitch_2d
        0x11 -> :sswitch_33
    .end sparse-switch
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 124
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 125
    .local v6, "tag":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_c

    .line 127
    const/4 v8, 0x0

    return-object v8

    .line 133
    :cond_c
    invoke-direct {p0, v9}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    .line 138
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-static {v8, v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v7

    .line 140
    .local v7, "tagNo":I
    and-int/lit8 v8, v6, 0x20

    if-eqz v8, :cond_2f

    const/4 v3, 0x1

    .line 145
    .local v3, "isConstructed":Z
    :goto_1a
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-static {v8, v9}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v4

    .line 147
    .local v4, "length":I
    if-gez v4, :cond_5b

    .line 149
    if-nez v3, :cond_31

    .line 151
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "indefinite-length primitive encoding encountered"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 140
    .end local v3    # "isConstructed":Z
    .end local v4    # "length":I
    :cond_2f
    const/4 v3, 0x0

    .restart local v3    # "isConstructed":Z
    goto :goto_1a

    .line 154
    .restart local v4    # "length":I
    :cond_31
    new-instance v2, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v9, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v2, v8, v9}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 155
    .local v2, "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v5, v2, v8}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 157
    .local v5, "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_4b

    .line 159
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v8, v7, v5}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v8

    .line 162
    :cond_4b
    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_56

    .line 164
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v7, v5}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v8

    .line 167
    :cond_56
    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    return-object v8

    .line 171
    .end local v2    # "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v5    # "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_5b
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-direct {v0, v8, v4}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 173
    .local v0, "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_70

    .line 175
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v3, v7, v9}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    return-object v8

    .line 178
    :cond_70
    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_7f

    .line 180
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v3, v7, v9}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v8

    .line 183
    :cond_7f
    if-eqz v3, :cond_d1

    .line 186
    sparse-switch v7, :sswitch_data_ec

    .line 200
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unknown tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " encountered"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 192
    :sswitch_a5
    new-instance v8, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v8

    .line 194
    :sswitch_b0
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v8

    .line 196
    :sswitch_bb
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSetParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v8

    .line 198
    :sswitch_c6
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v8

    .line 205
    :cond_d1
    packed-switch v7, :pswitch_data_fe

    .line 213
    :try_start_d4
    iget-object v8, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    invoke-static {v7, v0, v8}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_d9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d4 .. :try_end_d9} :catch_e1

    move-result-object v8

    return-object v8

    .line 208
    :pswitch_db
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;

    invoke-direct {v8, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    return-object v8

    .line 216
    :catch_e1
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string/jumbo v9, "corrupted stream detected"

    invoke-direct {v8, v9, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 186
    nop

    :sswitch_data_ec
    .sparse-switch
        0x4 -> :sswitch_a5
        0x8 -> :sswitch_c6
        0x10 -> :sswitch_b0
        0x11 -> :sswitch_bb
    .end sparse-switch

    .line 205
    :pswitch_data_fe
    .packed-switch 0x4
        :pswitch_db
    .end packed-switch
.end method

.method readTaggedObject(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 9
    .param p1, "constructed"    # Z
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 100
    if-nez p1, :cond_17

    .line 103
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    .line 104
    .local v0, "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v5, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    .line 107
    .end local v0    # "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    :cond_17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    .line 109
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v2, v2, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v2, :cond_3b

    .line 111
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v4, :cond_31

    .line 112
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {v2, v4, p2, v3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 111
    :goto_30
    return-object v2

    .line 113
    :cond_31
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/BERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/BERSequence;

    move-result-object v3

    invoke-direct {v2, v5, p2, v3}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_30

    .line 116
    :cond_3b
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v4, :cond_4b

    .line 117
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {v2, v4, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 116
    :goto_4a
    return-object v2

    .line 118
    :cond_4b
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-direct {v2, v5, p2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_4a
.end method

.method readVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 235
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_5
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .local v0, "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v0, :cond_21

    .line 237
    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;

    if-eqz v2, :cond_19

    .line 239
    check-cast v0, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;

    .end local v0    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_5

    .line 243
    .restart local v0    # "obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_19
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_5

    .line 247
    :cond_21
    return-object v1
.end method

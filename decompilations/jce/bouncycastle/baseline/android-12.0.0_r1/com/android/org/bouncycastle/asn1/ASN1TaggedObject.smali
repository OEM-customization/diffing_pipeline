.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1TaggedObject.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field final blacklist explicit:Z

.field final blacklist obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

.field final blacklist tagNo:I


# direct methods
.method public constructor blacklist <init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 68
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 69
    if-eqz p3, :cond_16

    .line 74
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    .line 75
    if-nez p1, :cond_10

    instance-of v0, p3, Lcom/android/org/bouncycastle/asn1/ASN1Choice;

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 76
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 77
    return-void

    .line 71
    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'obj\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 24
    if-eqz p1, :cond_b

    .line 26
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0

    .line 29
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "implicitly tagged tagged object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 35
    if-eqz p0, :cond_52

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_7

    goto :goto_52

    .line 39
    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_33

    .line 43
    :try_start_b
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_17

    return-object v0

    .line 45
    :catch_17
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to construct tagged object from byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    .end local v0    # "e":Ljava/io/IOException;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

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

    .line 37
    :cond_52
    :goto_52
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    return-object v0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 7
    .param p1, "other"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 81
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 83
    return v1

    .line 86
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 88
    .local v0, "that":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne v2, v3, :cond_2c

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    iget-boolean v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    if-eq v2, v3, :cond_16

    goto :goto_2c

    .line 93
    :cond_16
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 94
    .local v2, "p1":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iget-object v3, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 96
    .local v3, "p2":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-eq v2, v3, :cond_2a

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_2b

    :cond_2a
    const/4 v1, 0x1

    :cond_2b
    return v1

    .line 90
    .end local v2    # "p1":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v3    # "p2":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_2c
    :goto_2c
    return v1
.end method

.method abstract blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 170
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getObjectParser(IZ)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 6
    .param p1, "tag"    # I
    .param p2, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    sparse-switch p1, :sswitch_data_3c

    .line 160
    if-eqz p2, :cond_25

    .line 162
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 153
    :sswitch_a
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    return-object v0

    .line 155
    :sswitch_13
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v0

    return-object v0

    .line 157
    :sswitch_1c
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->parser()Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v0

    return-object v0

    .line 165
    :cond_25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "implicit tagging not implemented for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_3c
    .sparse-switch
        0x4 -> :sswitch_1c
        0x10 -> :sswitch_13
        0x11 -> :sswitch_a
    .end sparse-switch
.end method

.method public blacklist getTagNo()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 101
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    if-eqz v1, :cond_9

    const/16 v1, 0xf

    goto :goto_b

    :cond_9
    const/16 v1, 0xf0

    :goto_b
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist isExplicit()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    return v0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 175
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 180
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

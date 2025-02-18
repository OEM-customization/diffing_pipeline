.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;
.super Ljava/lang/Object;
.source "PKCS12BagAttributeCarrierImpl.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private blacklist pkcs12Attributes:Ljava/util/Hashtable;

.field private blacklist pkcs12Ordering:Ljava/util/Vector;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>(Ljava/util/Hashtable;Ljava/util/Vector;)V

    .line 36
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .registers 3
    .param p1, "attributes"    # Ljava/util/Hashtable;
    .param p2, "ordering"    # Ljava/util/Vector;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    .line 30
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    .line 31
    return-void
.end method


# virtual methods
.method blacklist getAttributes()Ljava/util/Hashtable;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    return-object v0
.end method

.method public blacklist getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public blacklist getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method blacklist getOrdering()Ljava/util/Vector;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    return-object v0
.end method

.method public whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 111
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Hashtable;

    if-eqz v1, :cond_16

    .line 113
    move-object v1, v0

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    .line 114
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    goto :goto_2f

    .line 118
    :cond_16
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    move-object v2, v0

    check-cast v2, [B

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 122
    .local v1, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :goto_1e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object v3, v2

    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v2, :cond_2f

    .line 124
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1e

    .line 127
    .end local v1    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_2f
    :goto_2f
    return-void
.end method

.method public blacklist setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 42
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 48
    :cond_e
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 51
    :goto_18
    return-void
.end method

.method blacklist size()I
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_19

    .line 84
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 85
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_49

    .line 89
    :cond_19
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 90
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 92
    .local v1, "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v2

    .line 94
    .local v2, "e":Ljava/util/Enumeration;
    :goto_27
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 96
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 98
    .local v3, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 99
    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;->pkcs12Attributes:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 100
    .end local v3    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    goto :goto_27

    .line 102
    :cond_42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 104
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "aOut":Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .end local v2    # "e":Ljava/util/Enumeration;
    :goto_49
    return-void
.end method

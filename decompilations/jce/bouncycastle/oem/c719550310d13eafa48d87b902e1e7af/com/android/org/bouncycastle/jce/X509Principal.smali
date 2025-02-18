.class public Lcom/android/org/bouncycastle/jce/X509Principal;
.super Lcom/android/org/bouncycastle/asn1/x509/X509Name;
.source "X509Principal.java"

# interfaces
.implements Ljava/security/Principal;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 3
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 2
    .param p1, "attributes"    # Ljava/util/Hashtable;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Hashtable;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .registers 3
    .param p1, "ordering"    # Ljava/util/Vector;
    .param p2, "attributes"    # Ljava/util/Hashtable;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 3
    .param p1, "oids"    # Ljava/util/Vector;
    .param p2, "values"    # Ljava/util/Vector;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 102
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3
    .param p1, "reverse"    # Z
    .param p2, "dirName"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/lang/String;)V

    .line 126
    return-void
.end method

.method public constructor <init>(ZLjava/util/Hashtable;Ljava/lang/String;)V
    .registers 4
    .param p1, "reverse"    # Z
    .param p2, "lookUp"    # Ljava/util/Hashtable;
    .param p3, "dirName"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/X509Principal;->readSequence(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 50
    return-void
.end method

.method private static readSequence(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 5
    .param p0, "aIn"    # Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 37
    :catch_9
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not an ASN.1 Sequence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getEncoded()[B
    .registers 4

    .prologue
    .line 158
    :try_start_0
    const-string/jumbo v1, "DER"

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jce/X509Principal;->getEncoded(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    return-object v1

    .line 161
    :catch_8
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jce/X509Principal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

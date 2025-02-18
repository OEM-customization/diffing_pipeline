.class public Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;
.super Ljava/lang/Object;
.source "BERTaggedObjectParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field private _constructed:Z

.field private _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

.field private _tagNumber:I


# direct methods
.method constructor <init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 4
    .param p1, "constructed"    # Z
    .param p2, "tagNumber"    # I
    .param p3, "parser"    # Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    .line 21
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    .line 22
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    .line 23
    return-void
.end method


# virtual methods
.method public getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getObjectParser(IZ)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .param p1, "tag"    # I
    .param p2, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    if-eqz p2, :cond_16

    .line 60
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    if-nez v0, :cond_f

    .line 62
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Explicit tags must be constructed (see X.690 8.14.2)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_f
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0

    .line 67
    :cond_16
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readImplicit(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public getTagNo()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    return v0
.end method

.method public isConstructed()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 94
    :catch_5
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

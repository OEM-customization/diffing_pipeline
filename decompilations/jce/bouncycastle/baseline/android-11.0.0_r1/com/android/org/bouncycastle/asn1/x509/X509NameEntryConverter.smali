.class public abstract Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;
.super Ljava/lang/Object;
.source "X509NameEntryConverter.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist canBePrintable(Ljava/lang/String;)Z
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;->isPrintableString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected blacklist convertHexEncoded(Ljava/lang/String;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 69
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_e
    array-length v2, v0

    if-eq v1, v2, :cond_50

    .line 71
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 72
    .local v2, "left":C
    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 74
    .local v3, "right":C
    const/16 v4, 0x61

    if-ge v2, v4, :cond_2d

    .line 76
    add-int/lit8 v5, v2, -0x30

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    goto :goto_36

    .line 80
    :cond_2d
    add-int/lit8 v5, v2, -0x61

    add-int/lit8 v5, v5, 0xa

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 82
    :goto_36
    if-ge v3, v4, :cond_42

    .line 84
    aget-byte v4, v0, v1

    add-int/lit8 v5, v3, -0x30

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_4d

    .line 88
    :cond_42
    aget-byte v4, v0, v1

    add-int/lit8 v5, v3, -0x61

    add-int/lit8 v5, v5, 0xa

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 69
    .end local v2    # "left":C
    .end local v3    # "right":C
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 92
    .end local v1    # "index":I
    :cond_50
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 94
    .local v1, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2
.end method

.method public abstract blacklist getConvertedValue(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.end method

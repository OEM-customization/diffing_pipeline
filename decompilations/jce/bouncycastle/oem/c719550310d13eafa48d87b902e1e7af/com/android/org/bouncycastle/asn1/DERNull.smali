.class public Lcom/android/org/bouncycastle/asn1/DERNull;
.super Lcom/android/org/bouncycastle/asn1/ASN1Null;
.source "DERNull.java"


# static fields
.field public static final INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

.field private static final zeroBytes:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DERNull;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->zeroBytes:[B

    .line 8
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Null;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 4
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->zeroBytes:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 39
    return-void
.end method

.method encodedLength()I
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x2

    return v0
.end method

.method isConstructed()Z
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

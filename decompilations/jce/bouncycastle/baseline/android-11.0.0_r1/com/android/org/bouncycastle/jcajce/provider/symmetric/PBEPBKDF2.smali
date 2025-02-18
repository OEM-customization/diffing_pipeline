.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;
.super Ljava/lang/Object;
.source "PBEPBKDF2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$Mappings;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA512AndAES_256;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA384AndAES_256;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA256AndAES_256;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA224AndAES_256;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA1AndAES_256;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA512AndAES_128;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA384AndAES_128;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA256AndAES_128;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA224AndAES_128;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA1AndAES_128;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2WithHmacSHA512UTF8;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA512;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2WithHmacSHA384UTF8;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA384;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2WithHmacSHA256UTF8;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA256;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2WithHmacSHA224UTF8;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA224;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2WithHmacSHA18BIT;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2WithHmacSHA1UTF8;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA1;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;
    }
.end annotation


# static fields
.field private static final blacklist prfCodes:Ljava/util/Map;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;->prfCodes:Ljava/util/Map;

    .line 48
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;->prfCodes:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;->prfCodes:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA224:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;->prfCodes:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;->prfCodes:Ljava/util/Map;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v2, 0x9

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic blacklist access$000()Ljava/util/Map;
    .registers 1

    .line 40
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;->prfCodes:Ljava/util/Map;

    return-object v0
.end method

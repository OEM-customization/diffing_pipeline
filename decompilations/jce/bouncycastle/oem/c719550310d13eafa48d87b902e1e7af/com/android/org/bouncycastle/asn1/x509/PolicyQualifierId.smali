.class public Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;
.super Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.source "PolicyQualifierId.java"


# static fields
.field private static final id_qt:Ljava/lang/String; = "1.3.6.1.5.5.7.2"

.field public static final id_qt_cps:Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;

.field public static final id_qt_unotice:Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;

    const-string/jumbo v1, "1.3.6.1.5.5.7.2.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;-><init>(Ljava/lang/String;)V

    .line 27
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;->id_qt_cps:Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;

    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;

    const-string/jumbo v1, "1.3.6.1.5.5.7.2.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;-><init>(Ljava/lang/String;)V

    .line 29
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;->id_qt_unotice:Lcom/android/org/bouncycastle/asn1/x509/PolicyQualifierId;

    .line 18
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

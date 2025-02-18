.class public Lcom/android/org/bouncycastle/asn1/x509/Extension;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "Extension.java"


# static fields
.field public static final auditIdentity:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final authorityInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final biometricInfo:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final expiredCertsOnCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final extendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final instructionCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final invalidityDate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final issuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final logoType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final noRevAvail:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final privateKeyUsagePeriod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final qCStatements:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final reasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final subjectDirectoryAttributes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final subjectInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final subjectKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final targetInformation:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private critical:Z

.field private extnId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.9"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectDirectoryAttributes:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 30
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.14"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.15"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.16"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->privateKeyUsagePeriod:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.17"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.18"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 55
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.19"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 60
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.20"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 65
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.21"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->reasonCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 70
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.23"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->instructionCode:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.24"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->invalidityDate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 80
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.27"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 85
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.28"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 90
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.29"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 95
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.30"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 100
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.31"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 105
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.32"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 110
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.33"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 115
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.35"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 120
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.36"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 125
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.37"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 130
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.46"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 135
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.54"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 140
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.3.6.1.5.5.7.1.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 145
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.3.6.1.5.5.7.1.11"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->subjectInfoAccess:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 150
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.3.6.1.5.5.7.1.12"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->logoType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 155
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.3.6.1.5.5.7.1.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->biometricInfo:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 160
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.3.6.1.5.5.7.1.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->qCStatements:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 165
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.3.6.1.5.5.7.1.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->auditIdentity:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 170
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.56"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->noRevAvail:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 175
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.55"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->targetInformation:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 180
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.5.29.60"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->expiredCertsOnCRL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Boolean;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 5
    .param p1, "extnId"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Lcom/android/org/bouncycastle/asn1/ASN1Boolean;
    .param p3, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .prologue
    .line 191
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 4
    .param p1, "extnId"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extnId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 208
    iput-boolean p2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->critical:Z

    .line 209
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 210
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .registers 5
    .param p1, "extnId"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "critical"    # Z
    .param p3, "value"    # [B

    .prologue
    .line 199
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p3}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZLcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 200
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 214
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v4, :cond_23

    .line 216
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extnId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 217
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->critical:Z

    .line 218
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 230
    :goto_22
    return-void

    .line 220
    :cond_23
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4d

    .line 222
    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extnId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 223
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->critical:Z

    .line 224
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto :goto_22

    .line 228
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertValueToObject(Lcom/android/org/bouncycastle/asn1/x509/Extension;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5
    .param p0, "ext"    # Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 322
    :catch_d
    move-exception v0

    .line 323
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t convert extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Extension;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 234
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    if-eqz v0, :cond_8

    .line 236
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 238
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 240
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Extension;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 243
    :cond_14
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 279
    instance-of v2, p1, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    if-nez v2, :cond_6

    .line 281
    return v1

    :cond_6
    move-object v0, p1

    .line 284
    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/Extension;

    .line 286
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 287
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 286
    if-eqz v2, :cond_30

    .line 288
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v3

    if-ne v2, v3, :cond_30

    const/4 v1, 0x1

    .line 286
    :cond_30
    return v1
.end method

.method public getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extnId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getParsedValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .prologue
    .line 263
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->convertValueToObject(Lcom/android/org/bouncycastle/asn1/x509/Extension;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 270
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 273
    :cond_18
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/Extension;->getExtnId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    not-int v0, v0

    return v0
.end method

.method public isCritical()Z
    .registers 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->critical:Z

    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .prologue
    .line 293
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 295
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extnId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 297
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->critical:Z

    if-eqz v1, :cond_16

    .line 299
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 302
    :cond_16
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/Extension;->value:Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 304
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

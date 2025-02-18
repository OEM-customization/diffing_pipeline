.class public interface abstract Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;
.super Ljava/lang/Object;
.source "MiscObjectIdentifiers.java"


# static fields
.field public static final as_sys_sec_alg_ideaCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blake2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cast5CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cryptlib:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cryptlib_algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cryptlib_algorithm_blowfish_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cryptlib_algorithm_blowfish_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cryptlib_algorithm_blowfish_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final cryptlib_algorithm_blowfish_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final entrust:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final entrustVersionExtension:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_blake2b160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_blake2b256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_blake2b384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_blake2b512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeBaseURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeCARevocationURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeCApolicyURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeCertComment:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeCertType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeRenewalURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeRevocationURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final netscapeSSLServerName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final novell:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final novellSecurityAttribs:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisignBitString_6_13:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisignCzagExtension:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisignDnbDunsNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisignIssStrongCrypto:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisignOnSiteJurisdictionHash:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final verisignPrivate_6_9:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.16.840.1.113730.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 14
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 16
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeBaseURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 18
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRevocationURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "4"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCARevocationURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "7"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRenewalURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "8"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCApolicyURL:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "12"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeSSLServerName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscape:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "13"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertComment:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.16.840.1.113733.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 38
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "6.3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignCzagExtension:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "6.9"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignPrivate_6_9:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "6.11"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignOnSiteJurisdictionHash:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "6.13"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignBitString_6_13:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 45
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "6.15"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignDnbDunsNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisign:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "8.1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignIssStrongCrypto:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "2.16.840.1.113719"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->novell:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->novell:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.9.4.1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->novellSecurityAttribs:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 63
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.2.840.113533.7"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrust:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 65
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrust:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "65.0"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrustVersionExtension:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->entrust:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "66.10"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cast5CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.3.6.1.4.1.188.7.1.1.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->as_sys_sec_alg_ideaCBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 78
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.3.6.1.4.1.3029"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 80
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 81
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.1"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_ECB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 82
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.2"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_CBC:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 83
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.3"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_CFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.4"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_OFB:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 89
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.3.6.1.4.1.1722.12.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 91
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.5"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2b160:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 92
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.8"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2b256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 93
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.12"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2b384:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 94
    sget-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.16"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2b512:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 5
    return-void
.end method

.class public Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "KeyPurposeId.java"


# static fields
.field public static final anyExtendedKeyUsage:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field private static final id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_kp_OCSPSigning:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_capwapAC:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_capwapWTP:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_clientAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_codeSigning:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_dvcs:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_eapOverLAN:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_eapOverPPP:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_emailProtection:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecEndSystem:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecIKE:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecTunnel:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_ipsecUser:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_macAddress:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_msSGC:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_nsSGC:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_sbgpCertAAServerAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_scvpClient:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_scvpServer:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_scvp_responder:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_serverAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_smartcardlogon:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final id_kp_timeStamping:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;


# instance fields
.field private id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.3.6.1.5.5.7.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->anyExtendedKeyUsage:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_serverAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_clientAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "3"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_codeSigning:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 48
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "4"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_emailProtection:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "5"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecEndSystem:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "6"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecTunnel:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 60
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "7"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecUser:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 64
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "8"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_timeStamping:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 68
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "9"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_OCSPSigning:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 72
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "10"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_dvcs:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "11"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_sbgpCertAAServerAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 80
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "12"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvp_responder:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 84
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "13"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverPPP:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 88
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "14"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverLAN:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 92
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "15"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvpServer:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 96
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "16"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvpClient:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 100
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "17"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecIKE:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 104
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "18"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_capwapAC:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 108
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "19"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_capwapWTP:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 116
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "1.3.6.1.4.1.311.20.2.2"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_smartcardlogon:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 122
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "1.3.6.1.1.1.1.22"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_macAddress:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 128
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "1.3.6.1.4.1.311.10.3.3"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_msSGC:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 133
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v2, "2.16.840.1.113730.4.1"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_nsSGC:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 23
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 2
    .param p1, "id"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 150
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 154
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    if-eqz v0, :cond_8

    .line 156
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    .line 158
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_14

    .line 160
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object v0

    .line 163
    :cond_14
    return-object v1
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

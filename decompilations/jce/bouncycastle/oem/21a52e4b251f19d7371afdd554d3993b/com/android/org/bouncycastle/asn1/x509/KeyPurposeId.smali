.class public Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "KeyPurposeId.java"


# static fields
.field public static final blacklist anyExtendedKeyUsage:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field private static final blacklist id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final blacklist id_kp_OCSPSigning:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_capwapAC:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_capwapWTP:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_clientAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_codeSigning:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_dvcs:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_eapOverLAN:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_eapOverPPP:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_emailProtection:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_ipsecEndSystem:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_ipsecIKE:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_ipsecTunnel:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_ipsecUser:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_macAddress:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_msSGC:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_nsSGC:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_sbgpCertAAServerAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_scvpClient:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_scvpServer:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_scvp_responder:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_serverAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_smartcardlogon:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

.field public static final blacklist id_kp_timeStamping:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;


# instance fields
.field private blacklist id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->anyExtendedKeyUsage:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_serverAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 42
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_clientAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 46
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_codeSigning:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 50
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_emailProtection:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 54
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecEndSystem:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 58
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecTunnel:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 62
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "7"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecUser:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 66
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_timeStamping:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 70
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "9"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_OCSPSigning:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 74
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "10"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_dvcs:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 78
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "11"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_sbgpCertAAServerAuth:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 82
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "12"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvp_responder:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 86
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "13"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverPPP:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 90
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "14"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_eapOverLAN:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 94
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "15"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvpServer:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 98
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "16"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_scvpClient:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 102
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "17"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_ipsecIKE:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 106
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "18"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_capwapAC:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 110
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "19"

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_capwapWTP:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 118
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.3.6.1.4.1.311.20.2.2"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_smartcardlogon:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 124
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.3.6.1.1.1.1.22"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_macAddress:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 130
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.3.6.1.4.1.311.10.3.3"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_msSGC:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    .line 135
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2.16.840.1.113730.4.1"

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id_kp_nsSGC:Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 2
    .param p1, "id"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 141
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 143
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 151
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 152
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 156
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    if-eqz v0, :cond_8

    .line 158
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    return-object v0

    .line 160
    :cond_8
    if-eqz p0, :cond_14

    .line 162
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object v0

    .line 165
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getId()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist toOID()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/KeyPurposeId;->id:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;
.super Ljava/lang/Object;
.source "CustomNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$1;,
        Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$2;,
        Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$3;,
        Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$4;,
        Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$5;,
        Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$6;,
        Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$7;,
        Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$8;
    }
.end annotation


# static fields
.field static final nameToCurve:Ljava/util/Hashtable;

.field static final nameToOID:Ljava/util/Hashtable;

.field static final names:Ljava/util/Vector;

.field static final oidToCurve:Ljava/util/Hashtable;

.field static final oidToName:Ljava/util/Hashtable;

.field static secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static synthetic -wrap0(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 3
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    .prologue
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->configureCurveGLV(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 2
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .prologue
    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->configureCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 175
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$1;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$1;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 203
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$2;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$2;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 219
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$3;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$3;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 247
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$4;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$4;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 263
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$5;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$5;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 291
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$6;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$6;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 307
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$7;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$7;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 323
    new-instance v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$8;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves$8;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 627
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    .line 628
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    .line 629
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    .line 630
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    .line 631
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    .line 680
    const-string/jumbo v0, "secp192k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 681
    const-string/jumbo v0, "secp192r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 682
    const-string/jumbo v0, "secp224k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 683
    const-string/jumbo v0, "secp224r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 684
    const-string/jumbo v0, "secp256k1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 685
    const-string/jumbo v0, "secp256r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 686
    const-string/jumbo v0, "secp384r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 687
    const-string/jumbo v0, "secp521r1"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 722
    const-string/jumbo v0, "P-192"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 723
    const-string/jumbo v0, "P-224"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 724
    const-string/jumbo v0, "P-256"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 725
    const-string/jumbo v0, "P-384"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 726
    const-string/jumbo v0, "P-521"

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configureCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 1
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .prologue
    .line 59
    return-object p0
.end method

.method private static configureCurveGLV(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 4
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->configure()Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;

    move-result-object v0

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;

    invoke-direct {v1, p0, p1}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->setEndomorphism(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;->create()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method static defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "holder"    # Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .prologue
    .line 635
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 636
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 637
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    return-void
.end method

.method static defineCurveAlias(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 652
    sget-object v1, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 653
    .local v0, "curve":Ljava/lang/Object;
    if-nez v0, :cond_e

    .line 655
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 658
    :cond_e
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 659
    sget-object v1, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v1, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    return-void
.end method

.method static defineCurveWithOID(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "holder"    # Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .prologue
    .line 642
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 643
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 646
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 731
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToCurve:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 732
    .local v0, "holder":Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    if-nez v0, :cond_10

    :goto_f
    return-object v1

    :cond_10
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    goto :goto_f
.end method

.method public static getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 4
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    const/4 v1, 0x0

    .line 744
    sget-object v2, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToCurve:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 745
    .local v0, "holder":Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    if-nez v0, :cond_c

    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    goto :goto_b
.end method

.method public static getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 2
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 764
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->oidToName:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNames()Ljava/util/Enumeration;
    .registers 1

    .prologue
    .line 772
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->names:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 756
    sget-object v0, Lcom/android/org/bouncycastle/crypto/ec/CustomNamedCurves;->nameToOID:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

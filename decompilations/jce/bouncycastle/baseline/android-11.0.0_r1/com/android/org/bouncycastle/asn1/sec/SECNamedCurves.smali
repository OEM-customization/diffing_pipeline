.class public Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;
.super Ljava/lang/Object;
.source "SECNamedCurves.java"


# static fields
.field static final blacklist curves:Ljava/util/Hashtable;

.field static final blacklist names:Ljava/util/Hashtable;

.field static final blacklist objIds:Ljava/util/Hashtable;

.field static blacklist secp112r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp112r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp128r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp128r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp160k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp160r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp160r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect113r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect113r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect131r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect131r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect163k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect163r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect163r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect193r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect193r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect233k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect233r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect239k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect283k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect283r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect409k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect409r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect571k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

.field static blacklist sect571r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$1;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$1;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$2;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$2;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 95
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$3;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$3;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 121
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$4;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$4;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 147
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$5;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$5;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 186
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$6;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$6;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 212
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$7;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$7;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 238
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$8;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$8;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 277
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$9;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$9;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 303
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$10;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$10;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 342
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$11;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$11;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 368
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$12;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$12;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 407
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$13;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$13;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 433
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$14;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$14;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 459
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$15;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$15;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 486
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$16;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$16;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 513
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$17;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$17;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 540
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$18;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$18;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 569
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$19;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$19;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 598
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$20;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$20;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 627
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$21;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$21;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 656
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$22;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$22;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 685
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$23;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$23;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 712
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$24;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$24;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 739
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$25;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$25;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 766
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$26;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$26;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 793
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$27;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$27;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect239k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 820
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$28;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$28;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 849
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$29;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$29;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 878
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$30;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$30;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 905
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$31;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$31;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 932
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$32;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$32;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 961
    new-instance v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$33;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves$33;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 988
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    .line 989
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    .line 990
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    .line 1001
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp112r1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1002
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp112r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp112r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp112r2"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1003
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp128r1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1004
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp128r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp128r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp128r2"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1005
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp160k1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1006
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp160r1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1007
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp160r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp160r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp160r2"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1008
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp192k1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1009
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp192r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp192r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp192r1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1010
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp224k1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1011
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp224r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp224r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp224r1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1012
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp256k1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1013
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp256r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp256r1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1014
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp384r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp384r1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1015
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp521r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->secp521r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "secp521r1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1017
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect113r1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1018
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect113r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect113r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect113r2"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1019
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect131r1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1020
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect131r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect131r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect131r2"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1021
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect163k1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1022
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect163r1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1023
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect163r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect163r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect163r2"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1024
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect193r1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1025
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect193r2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect193r2:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect193r2"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1026
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect233k1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1027
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect233r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect233r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect233r1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1028
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect239k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect239k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect239k1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1029
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect283k1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1030
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect283r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect283r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect283r1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1031
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect409k1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1032
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect409r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect409r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect409r1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1033
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571k1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571k1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect571k1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1034
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECObjectIdentifiers;->sect571r1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->sect571r1:Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    const-string v2, "sect571r1"

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V

    .line 1035
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 22
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->fromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 22
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->configureCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 3
    .param p0, "x0"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "x1"    # Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    .line 22
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->configureCurveGLV(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist configureCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 1
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 26
    return-object p0
.end method

.method private static blacklist configureCurveGLV(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 4
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    .line 31
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

.method static blacklist defineCurve(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "holder"    # Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 994
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    return-void
.end method

.method private static blacklist fromHex(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "hex"    # Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static blacklist getByName(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1040
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 1041
    .local v0, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public static blacklist getByOID(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
    .registers 3
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1053
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->curves:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;

    .line 1054
    .local v0, "holder":Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParametersHolder;->getParameters()Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public static blacklist getName(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .registers 2
    .param p0, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1075
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getNames()Ljava/util/Enumeration;
    .registers 1

    .line 1084
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->names:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getOID(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1066
    sget-object v0, Lcom/android/org/bouncycastle/asn1/sec/SECNamedCurves;->objIds:Ljava/util/Hashtable;

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

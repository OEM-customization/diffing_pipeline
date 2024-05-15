.class public final Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
.super Ljava/lang/Object;
.source "CryptoServicesRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# static fields
.field public static final blacklist DH_DEFAULT_PARAMS:Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

.field public static final blacklist DSA_DEFAULT_PARAMS:Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

.field public static final blacklist EC_IMPLICITLY_CA:Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;


# instance fields
.field private final blacklist name:Ljava/lang/String;

.field private final blacklist type:Ljava/lang/Class;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 402
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    const-class v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;

    const-string v2, "ecImplicitlyCA"

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->EC_IMPLICITLY_CA:Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    .line 406
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    const-class v1, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    const-string v2, "dhDefaultParams"

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DH_DEFAULT_PARAMS:Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    .line 410
    new-instance v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    const-class v1, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    const-string v2, "dsaDefaultParams"

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DSA_DEFAULT_PARAMS:Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->name:Ljava/lang/String;

    .line 417
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->type:Ljava/lang/Class;

    .line 418
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    .line 397
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    .line 397
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->type:Ljava/lang/Class;

    return-object v0
.end method

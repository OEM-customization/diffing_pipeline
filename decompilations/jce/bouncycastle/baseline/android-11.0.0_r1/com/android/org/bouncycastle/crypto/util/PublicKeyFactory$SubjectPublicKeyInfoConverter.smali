.class abstract Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
.super Ljava/lang/Object;
.source "PublicKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SubjectPublicKeyInfoConverter"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$1;

    .line 169
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist getPublicKeyParameters(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

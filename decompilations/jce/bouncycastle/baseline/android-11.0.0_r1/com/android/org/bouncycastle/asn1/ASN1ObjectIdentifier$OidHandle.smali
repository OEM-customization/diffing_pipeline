.class Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
.super Ljava/lang/Object;
.source "ASN1ObjectIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OidHandle"
.end annotation


# instance fields
.field private final blacklist enc:[B

.field private final blacklist key:I


# direct methods
.method constructor blacklist <init>([B)V
    .registers 3
    .param p1, "enc"    # [B

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;->key:I

    .line 461
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;->enc:[B

    .line 462
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 471
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    if-eqz v0, :cond_10

    .line 473
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;->enc:[B

    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    iget-object v1, v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;->enc:[B

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0

    .line 476
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 466
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;->key:I

    return v0
.end method

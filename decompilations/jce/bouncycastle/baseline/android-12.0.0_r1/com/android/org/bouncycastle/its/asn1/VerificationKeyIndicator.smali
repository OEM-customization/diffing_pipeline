.class public Lcom/android/org/bouncycastle/its/asn1/VerificationKeyIndicator;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "VerificationKeyIndicator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method
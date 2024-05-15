.class public Lcom/android/org/bouncycastle/its/asn1/SubjectPermissions;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "SubjectPermissions.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/its/asn1/SubjectPermissions;
    .registers 2
    .param p0, "src"    # Ljava/lang/Object;

    .line 24
    instance-of v0, p0, Lcom/android/org/bouncycastle/its/asn1/SubjectPermissions;

    if-eqz v0, :cond_8

    .line 26
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/its/asn1/SubjectPermissions;

    return-object v0

    .line 28
    :cond_8
    nop

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

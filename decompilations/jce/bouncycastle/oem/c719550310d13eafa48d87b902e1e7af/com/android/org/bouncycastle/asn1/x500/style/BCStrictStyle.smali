.class public Lcom/android/org/bouncycastle/asn1/x500/style/BCStrictStyle;
.super Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;
.source "BCStrictStyle.java"


# static fields
.field public static final INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStrictStyle;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/BCStrictStyle;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStrictStyle;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public areEqual(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Z
    .registers 9
    .param p1, "name1"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "name2"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .prologue
    const/4 v5, 0x0

    .line 18
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    .line 19
    .local v1, "rdns1":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v2

    .line 21
    .local v2, "rdns2":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    array-length v3, v1

    array-length v4, v2

    if-eq v3, v4, :cond_e

    .line 23
    return v5

    .line 26
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v3, v1

    if-eq v0, v3, :cond_20

    .line 28
    aget-object v3, v1, v0

    aget-object v4, v2, v0

    invoke-virtual {p0, v3, v4}, Lcom/android/org/bouncycastle/asn1/x500/style/BCStrictStyle;->rdnAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 30
    return v5

    .line 26
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 34
    :cond_20
    const/4 v3, 0x1

    return v3
.end method

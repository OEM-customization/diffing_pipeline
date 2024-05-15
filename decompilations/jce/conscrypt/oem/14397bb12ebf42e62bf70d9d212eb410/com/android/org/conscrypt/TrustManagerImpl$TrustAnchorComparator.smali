.class Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;
.super Ljava/lang/Object;
.source "TrustManagerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/TrustManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrustAnchorComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/security/cert/TrustAnchor;",
        ">;"
    }
.end annotation


# static fields
.field private static final CERT_COMPARATOR:Lcom/android/org/conscrypt/CertificatePriorityComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 796
    new-instance v0, Lcom/android/org/conscrypt/CertificatePriorityComparator;

    invoke-direct {v0}, Lcom/android/org/conscrypt/CertificatePriorityComparator;-><init>()V

    .line 795
    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;->CERT_COMPARATOR:Lcom/android/org/conscrypt/CertificatePriorityComparator;

    .line 794
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;)V
    .registers 2
    .param p1, "-this0"    # Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    .prologue
    invoke-direct {p0}, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 797
    check-cast p1, Ljava/security/cert/TrustAnchor;

    check-cast p2, Ljava/security/cert/TrustAnchor;

    invoke-virtual {p0, p1, p2}, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;->compare(Ljava/security/cert/TrustAnchor;Ljava/security/cert/TrustAnchor;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/security/cert/TrustAnchor;Ljava/security/cert/TrustAnchor;)I
    .registers 6
    .param p1, "lhs"    # Ljava/security/cert/TrustAnchor;
    .param p2, "rhs"    # Ljava/security/cert/TrustAnchor;

    .prologue
    .line 799
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 800
    .local v0, "lhsCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {p2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 801
    .local v1, "rhsCert":Ljava/security/cert/X509Certificate;
    sget-object v2, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;->CERT_COMPARATOR:Lcom/android/org/conscrypt/CertificatePriorityComparator;

    invoke-virtual {v2, v0, v1}, Lcom/android/org/conscrypt/CertificatePriorityComparator;->compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    move-result v2

    return v2
.end method

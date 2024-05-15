.class public Lsun/security/util/AnchorCertificates;
.super Ljava/lang/Object;
.source "AnchorCertificates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/AnchorCertificates$1;
    }
.end annotation


# static fields
.field private static final HASH:Ljava/lang/String; = "SHA-256"

.field private static certs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final debug:Lsun/security/util/Debug;


# direct methods
.method static synthetic -get0()Ljava/util/HashSet;
    .registers 1

    sget-object v0, Lsun/security/util/AnchorCertificates;->certs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -get1()Lsun/security/util/Debug;
    .registers 1

    sget-object v0, Lsun/security/util/AnchorCertificates;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 1
    .param p0, "-value"    # Ljava/util/HashSet;

    .prologue
    sput-object p0, Lsun/security/util/AnchorCertificates;->certs:Ljava/util/HashSet;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/util/AnchorCertificates;->debug:Lsun/security/util/Debug;

    .line 50
    new-instance v0, Lsun/security/util/AnchorCertificates$1;

    invoke-direct {v0}, Lsun/security/util/AnchorCertificates$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/security/cert/X509Certificate;)Z
    .registers 6
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 91
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2, p0}, Lsun/security/x509/X509CertImpl;->getFingerprint(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lsun/security/util/AnchorCertificates;->certs:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 93
    .local v1, "result":Z
    if-eqz v1, :cond_30

    sget-object v2, Lsun/security/util/AnchorCertificates;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_30

    .line 94
    sget-object v2, Lsun/security/util/AnchorCertificates;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AnchorCertificate.contains: matched "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 97
    :cond_30
    return v1
.end method

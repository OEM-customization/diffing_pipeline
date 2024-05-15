.class public Lsun/security/util/AnchorCertificates;
.super Ljava/lang/Object;
.source "AnchorCertificates.java"


# static fields
.field private static final blacklist HASH:Ljava/lang/String; = "SHA-256"

.field private static blacklist certs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist debug:Lsun/security/util/Debug;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/util/AnchorCertificates;->debug:Lsun/security/util/Debug;

    .line 50
    new-instance v0, Lsun/security/util/AnchorCertificates$1;

    invoke-direct {v0}, Lsun/security/util/AnchorCertificates$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000()Ljava/util/HashSet;
    .registers 1

    .line 43
    sget-object v0, Lsun/security/util/AnchorCertificates;->certs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic blacklist access$002(Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 1
    .param p0, "x0"    # Ljava/util/HashSet;

    .line 43
    sput-object p0, Lsun/security/util/AnchorCertificates;->certs:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic blacklist access$100()Lsun/security/util/Debug;
    .registers 1

    .line 43
    sget-object v0, Lsun/security/util/AnchorCertificates;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method public static blacklist contains(Ljava/security/cert/X509Certificate;)Z
    .registers 6
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 91
    const-string v0, "SHA-256"

    invoke-static {v0, p0}, Lsun/security/x509/X509CertImpl;->getFingerprint(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lsun/security/util/AnchorCertificates;->certs:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 93
    .local v1, "result":Z
    if-eqz v1, :cond_2a

    sget-object v2, Lsun/security/util/AnchorCertificates;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_2a

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnchorCertificate.contains: matched "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 97
    :cond_2a
    return v1
.end method

.class Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/TrustedCertificateStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadHolder"
.end annotation


# static fields
.field private static greylist-max-o defaultCaCertsAddedDir:Ljava/io/File;

.field private static greylist-max-o defaultCaCertsDeletedDir:Ljava/io/File;

.field private static greylist-max-o defaultCaCertsSystemDir:Ljava/io/File;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 104
    const-string v0, "ANDROID_ROOT"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "ANDROID_ROOT":Ljava/lang/String;
    const-string v1, "ANDROID_DATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "ANDROID_DATA":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/etc/security/cacerts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsSystemDir:Ljava/io/File;

    .line 107
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/misc/keychain"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    .line 108
    .end local v0    # "ANDROID_ROOT":Ljava/lang/String;
    .end local v1    # "ANDROID_DATA":Ljava/lang/String;
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000()Ljava/io/File;
    .registers 1

    .line 98
    sget-object v0, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsAddedDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic blacklist access$002(Ljava/io/File;)Ljava/io/File;
    .registers 1
    .param p0, "x0"    # Ljava/io/File;

    .line 98
    sput-object p0, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsAddedDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic blacklist access$100()Ljava/io/File;
    .registers 1

    .line 98
    sget-object v0, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsDeletedDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic blacklist access$102(Ljava/io/File;)Ljava/io/File;
    .registers 1
    .param p0, "x0"    # Ljava/io/File;

    .line 98
    sput-object p0, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsDeletedDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic blacklist access$200()Ljava/io/File;
    .registers 1

    .line 98
    sget-object v0, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsSystemDir:Ljava/io/File;

    return-object v0
.end method

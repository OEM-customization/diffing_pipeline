.class Lcom/android/org/conscrypt/TrustedCertificateStore$4;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"

# interfaces
.implements Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/TrustedCertificateStore;->findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field final synthetic blacklist val$c:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 424
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$4;->this$0:Lcom/android/org/conscrypt/TrustedCertificateStore;

    iput-object p2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$4;->val$c:Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist match(Ljava/security/cert/X509Certificate;)Z
    .registers 4
    .param p1, "ca"    # Ljava/security/cert/X509Certificate;

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$4;->val$c:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 429
    const/4 v0, 0x1

    return v0

    .line 430
    :catch_b
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

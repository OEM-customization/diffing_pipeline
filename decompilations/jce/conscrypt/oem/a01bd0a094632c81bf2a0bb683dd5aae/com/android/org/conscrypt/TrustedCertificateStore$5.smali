.class Lcom/android/org/conscrypt/TrustedCertificateStore$5;
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
.field final synthetic this$0:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field final synthetic val$c:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/conscrypt/TrustedCertificateStore;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$5;->this$0:Lcom/android/org/conscrypt/TrustedCertificateStore;

    iput-object p2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$5;->val$c:Ljava/security/cert/X509Certificate;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/X509Certificate;)Z
    .registers 6
    .param p1, "ca"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v3, 0x0

    .line 424
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$5;->this$0:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-static {v1, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->-wrap0(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 425
    return v3

    .line 427
    :cond_a
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$5;->val$c:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_15

    .line 428
    const/4 v1, 0x1

    return v1

    .line 429
    :catch_15
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    return v3
.end method

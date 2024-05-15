.class Lcom/android/org/conscrypt/TrustedCertificateStore$3;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"

# interfaces
.implements Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
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
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0x8
    nop

    #disallowed odex opcode
    #iput-object-quick p2, p0, field@0xc
    nop

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/X509Certificate;)Z
    .registers 5
    .param p1, "ca"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 383
    :try_start_0
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@12
    nop

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@14
    nop
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    .line 384
    const/4 v1, 0x1

    return v1

    .line 385
    :catch_b
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.class public Lcom/android/org/conscrypt/ct/CTPolicyImpl;
.super Ljava/lang/Object;
.source "CTPolicyImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/ct/CTPolicy;


# instance fields
.field private final logStore:Lcom/android/org/conscrypt/ct/CTLogStore;

.field private final minimumLogCount:I


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/ct/CTLogStore;I)V
    .registers 3
    .param p1, "logStore"    # Lcom/android/org/conscrypt/ct/CTLogStore;
    .param p2, "minimumLogCount"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CTPolicyImpl;->logStore:Lcom/android/org/conscrypt/ct/CTLogStore;

    .line 34
    iput p2, p0, Lcom/android/org/conscrypt/ct/CTPolicyImpl;->minimumLogCount:I

    .line 35
    return-void
.end method


# virtual methods
.method public doesResultConformToPolicy(Lcom/android/org/conscrypt/ct/CTVerificationResult;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Z
    .registers 10
    .param p1, "result"    # Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "chain"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 40
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 41
    .local v1, "logSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/conscrypt/ct/CTLogInfo;>;"
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/CTVerificationResult;->getValidSCTs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "verifiedSCT$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    .line 42
    .local v2, "verifiedSCT":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    iget-object v4, p0, Lcom/android/org/conscrypt/ct/CTPolicyImpl;->logStore:Lcom/android/org/conscrypt/ct/CTLogStore;

    iget-object v5, v2, Lcom/android/org/conscrypt/ct/VerifiedSCT;->sct:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/org/conscrypt/ct/CTLogStore;->getKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v0

    .line 43
    .local v0, "log":Lcom/android/org/conscrypt/ct/CTLogInfo;
    if-eqz v0, :cond_d

    .line 44
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 48
    .end local v0    # "log":Lcom/android/org/conscrypt/ct/CTLogInfo;
    .end local v2    # "verifiedSCT":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    :cond_2b
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    iget v5, p0, Lcom/android/org/conscrypt/ct/CTPolicyImpl;->minimumLogCount:I

    if-lt v4, v5, :cond_35

    const/4 v4, 0x1

    :goto_34
    return v4

    :cond_35
    const/4 v4, 0x0

    goto :goto_34
.end method

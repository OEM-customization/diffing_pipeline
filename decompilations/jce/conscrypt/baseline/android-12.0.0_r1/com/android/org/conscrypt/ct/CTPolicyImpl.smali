.class public Lcom/android/org/conscrypt/ct/CTPolicyImpl;
.super Ljava/lang/Object;
.source "CTPolicyImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/ct/CTPolicy;


# instance fields
.field private final blacklist logStore:Lcom/android/org/conscrypt/ct/CTLogStore;

.field private final blacklist minimumLogCount:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/conscrypt/ct/CTLogStore;I)V
    .registers 3
    .param p1, "logStore"    # Lcom/android/org/conscrypt/ct/CTLogStore;
    .param p2, "minimumLogCount"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CTPolicyImpl;->logStore:Lcom/android/org/conscrypt/ct/CTLogStore;

    .line 35
    iput p2, p0, Lcom/android/org/conscrypt/ct/CTPolicyImpl;->minimumLogCount:I

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist doesResultConformToPolicy(Lcom/android/org/conscrypt/ct/CTVerificationResult;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Z
    .registers 9
    .param p1, "result"    # Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "chain"    # [Ljava/security/cert/X509Certificate;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 42
    .local v0, "logSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/ct/CTLogInfo;>;"
    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/CTVerificationResult;->getValidSCTs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    .line 43
    .local v2, "verifiedSCT":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    iget-object v3, p0, Lcom/android/org/conscrypt/ct/CTPolicyImpl;->logStore:Lcom/android/org/conscrypt/ct/CTLogStore;

    iget-object v4, v2, Lcom/android/org/conscrypt/ct/VerifiedSCT;->sct:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/org/conscrypt/ct/CTLogStore;->getKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v3

    .line 44
    .local v3, "log":Lcom/android/org/conscrypt/ct/CTLogInfo;
    if-eqz v3, :cond_2a

    .line 45
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    .end local v2    # "verifiedSCT":Lcom/android/org/conscrypt/ct/VerifiedSCT;
    .end local v3    # "log":Lcom/android/org/conscrypt/ct/CTLogInfo;
    :cond_2a
    goto :goto_d

    .line 49
    :cond_2b
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lcom/android/org/conscrypt/ct/CTPolicyImpl;->minimumLogCount:I

    if-lt v1, v2, :cond_35

    const/4 v1, 0x1

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    return v1
.end method

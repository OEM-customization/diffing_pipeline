.class public Ljava/security/cert/PKIXCertPathValidatorResult;
.super Ljava/lang/Object;
.source "PKIXCertPathValidatorResult.java"

# interfaces
.implements Ljava/security/cert/CertPathValidatorResult;


# instance fields
.field private policyTree:Ljava/security/cert/PolicyNode;

.field private subjectPublicKey:Ljava/security/PublicKey;

.field private trustAnchor:Ljava/security/cert/TrustAnchor;


# direct methods
.method public constructor <init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    .registers 6
    .param p1, "trustAnchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "policyTree"    # Ljava/security/cert/PolicyNode;
    .param p3, "subjectPublicKey"    # Ljava/security/PublicKey;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-nez p3, :cond_e

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "subjectPublicKey must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_e
    if-nez p1, :cond_19

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "trustAnchor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_19
    iput-object p1, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 84
    iput-object p2, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    .line 85
    iput-object p3, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    .line 86
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 136
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 137
    :catch_5
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPolicyTree()Ljava/security/cert/PolicyNode;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getTrustAnchor()Ljava/security/cert/TrustAnchor;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 152
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "PKIXCertPathValidatorResult: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Trust Anchor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Policy Tree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->policyTree:Ljava/security/cert/PolicyNode;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Subject Public Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/cert/PKIXCertPathValidatorResult;->subjectPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

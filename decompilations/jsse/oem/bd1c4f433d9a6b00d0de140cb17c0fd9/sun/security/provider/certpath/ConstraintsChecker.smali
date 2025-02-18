.class Lsun/security/provider/certpath/ConstraintsChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "ConstraintsChecker.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final certPathLength:I

.field private i:I

.field private maxPathLength:I

.field private prevNC:Lsun/security/x509/NameConstraintsExtension;

.field private supportedExts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    .line 53
    return-void
.end method

.method constructor <init>(I)V
    .registers 2
    .param p1, "certPathLength"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 72
    iput p1, p0, Lsun/security/provider/certpath/ConstraintsChecker;->certPathLength:I

    .line 73
    return-void
.end method

.method private checkBasicConstraints(Ljava/security/cert/X509Certificate;)V
    .registers 10
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 225
    const-string/jumbo v6, "basic constraints"

    .line 226
    .local v6, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_51

    .line 227
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "---checking "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 228
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "i = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    const-string/jumbo v3, ", maxPathLength = "

    .line 228
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    iget v3, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    .line 228
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 233
    :cond_51
    iget v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    iget v1, p0, Lsun/security/provider/certpath/ConstraintsChecker;->certPathLength:I

    if-ge v0, v1, :cond_d2

    .line 247
    const/4 v7, -0x1

    .line 248
    .local v7, "pathLenConstraint":I
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_8c

    .line 249
    iget v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6d

    .line 250
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 251
    const v7, 0x7fffffff

    .line 258
    :cond_6d
    :goto_6d
    if-ne v7, v4, :cond_91

    .line 259
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " check failed: this is not a CA certificate"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    sget-object v5, Ljava/security/cert/PKIXReason;->NOT_CA_CERT:Ljava/security/cert/PKIXReason;

    move-object v3, v2

    .line 259
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 255
    :cond_8c
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v7

    goto :goto_6d

    .line 264
    :cond_91
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 265
    iget v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    if-gtz v0, :cond_c6

    .line 266
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " check failed: pathLenConstraint violated - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 268
    const-string/jumbo v3, "this cert must be the last cert in the "

    .line 267
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    const-string/jumbo v3, "certification path"

    .line 267
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    sget-object v5, Ljava/security/cert/PKIXReason;->PATH_TOO_LONG:Ljava/security/cert/PKIXReason;

    move-object v3, v2

    .line 266
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 272
    :cond_c6
    iget v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    .line 274
    :cond_cc
    iget v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    if-ge v7, v0, :cond_d2

    .line 275
    iput v7, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    .line 278
    .end local v7    # "pathLenConstraint":I
    :cond_d2
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_10a

    .line 279
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "after processing, maxPathLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 280
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " verified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 282
    :cond_10a
    return-void
.end method

.method static mergeBasicConstraints(Ljava/security/cert/X509Certificate;I)I
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "maxPathLength"    # I

    .prologue
    .line 296
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    .line 298
    .local v0, "pathLenConstraint":I
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 299
    add-int/lit8 p1, p1, -0x1

    .line 302
    :cond_c
    if-ge v0, p1, :cond_f

    .line 303
    move p1, v0

    .line 306
    :cond_f
    return p1
.end method

.method static mergeNameConstraints(Ljava/security/cert/X509Certificate;Lsun/security/x509/NameConstraintsExtension;)Lsun/security/x509/NameConstraintsExtension;
    .registers 9
    .param p0, "currCert"    # Ljava/security/cert/X509Certificate;
    .param p1, "prevNC"    # Lsun/security/x509/NameConstraintsExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 178
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_3} :catch_5a

    move-result-object v1

    .line 184
    .local v1, "currCertImpl":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;

    move-result-object v3

    .line 186
    .local v3, "newConstraints":Lsun/security/x509/NameConstraintsExtension;
    sget-object v4, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_34

    .line 187
    sget-object v4, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prevNC = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 188
    const-string/jumbo v6, ", newNC = "

    .line 187
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 188
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 187
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 193
    :cond_34
    if-nez p1, :cond_68

    .line 194
    sget-object v4, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_57

    .line 195
    sget-object v4, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mergedNC = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 197
    :cond_57
    if-nez v3, :cond_61

    .line 198
    return-object v3

    .line 179
    .end local v1    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    .end local v3    # "newConstraints":Lsun/security/x509/NameConstraintsExtension;
    :catch_5a
    move-exception v0

    .line 180
    .local v0, "ce":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v4, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 203
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    .restart local v1    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    .restart local v3    # "newConstraints":Lsun/security/x509/NameConstraintsExtension;
    :cond_61
    invoke-virtual {v3}, Lsun/security/x509/NameConstraintsExtension;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/NameConstraintsExtension;

    return-object v4

    .line 208
    :cond_68
    :try_start_68
    invoke-virtual {p1, v3}, Lsun/security/x509/NameConstraintsExtension;->merge(Lsun/security/x509/NameConstraintsExtension;)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_89

    .line 212
    sget-object v4, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_88

    .line 213
    sget-object v4, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mergedNC = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 215
    :cond_88
    return-object p1

    .line 209
    :catch_89
    move-exception v2

    .line 210
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v4, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private verifyNameConstraints(Ljava/security/cert/X509Certificate;)V
    .registers 10
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 137
    const-string/jumbo v7, "name constraints"

    .line 138
    .local v7, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_27

    .line 139
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "---checking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 145
    :cond_27
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    if-eqz v0, :cond_95

    iget v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    iget v1, p0, Lsun/security/provider/certpath/ConstraintsChecker;->certPathLength:I

    if-eq v0, v1, :cond_39

    .line 146
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 145
    if-eqz v0, :cond_95

    .line 147
    :cond_39
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_67

    .line 148
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prevNC = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    const-string/jumbo v2, ", currDN = "

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 153
    :cond_67
    :try_start_67
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    invoke-virtual {v0, p1}, Lsun/security/x509/NameConstraintsExtension;->verify(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 154
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " check failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    sget-object v5, Ljava/security/cert/PKIXReason;->INVALID_NAME:Ljava/security/cert/PKIXReason;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 154
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_8e} :catch_8e

    .line 157
    :catch_8e
    move-exception v6

    .line 158
    .local v6, "ioe":Ljava/io/IOException;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v0, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 163
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_95
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    invoke-static {p1, v0}, Lsun/security/provider/certpath/ConstraintsChecker;->mergeNameConstraints(Ljava/security/cert/X509Certificate;Lsun/security/x509/NameConstraintsExtension;)Lsun/security/x509/NameConstraintsExtension;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    .line 165
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_ba

    .line 166
    sget-object v0, Lsun/security/provider/certpath/ConstraintsChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " verified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 167
    :cond_ba
    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 5
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .local p2, "unresCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p1

    .line 117
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 119
    .local v0, "currCert":Ljava/security/cert/X509Certificate;
    iget v1, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    .line 122
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/ConstraintsChecker;->checkBasicConstraints(Ljava/security/cert/X509Certificate;)V

    .line 123
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/ConstraintsChecker;->verifyNameConstraints(Ljava/security/cert/X509Certificate;)V

    .line 125
    if-eqz p2, :cond_2b

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2b

    .line 126
    sget-object v1, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 127
    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 129
    :cond_2b
    return-void
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    if-nez v0, :cond_2a

    .line 95
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    .line 96
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    .line 100
    :cond_2a
    iget-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->supportedExts:Ljava/util/Set;

    return-object v0
.end method

.method public init(Z)V
    .registers 4
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 77
    if-nez p1, :cond_d

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->i:I

    .line 79
    iget v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->certPathLength:I

    iput v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->maxPathLength:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/provider/certpath/ConstraintsChecker;->prevNC:Lsun/security/x509/NameConstraintsExtension;

    .line 85
    return-void

    .line 82
    :cond_d
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 83
    const-string/jumbo v1, "forward checking not supported"

    .line 82
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isForwardCheckingSupported()Z
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

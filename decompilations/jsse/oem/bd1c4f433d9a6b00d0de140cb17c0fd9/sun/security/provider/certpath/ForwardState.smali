.class Lsun/security/provider/certpath/ForwardState;
.super Ljava/lang/Object;
.source "ForwardState.java"

# interfaces
.implements Lsun/security/provider/certpath/State;


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field cert:Lsun/security/x509/X509CertImpl;

.field forwardCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation
.end field

.field private init:Z

.field issuerDN:Ljavax/security/auth/x500/X500Principal;

.field keyParamsNeededFlag:Z

.field subjectNamesTraversed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;"
        }
    .end annotation
.end field

.field traversedCACerts:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/ForwardState;->debug:Lsun/security/util/Debug;

    .line 54
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/ForwardState;->keyParamsNeededFlag:Z

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 7

    .prologue
    .line 234
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/ForwardState;

    .line 238
    .local v1, "clonedState":Lsun/security/provider/certpath/ForwardState;
    iget-object v4, p0, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    .line 237
    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, v1, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    .line 240
    iget-object v4, v1, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 241
    .local v3, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 242
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    .line 243
    .local v0, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v4, v0, Ljava/lang/Cloneable;

    if-eqz v4, :cond_16

    .line 244
    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_16

    .line 256
    .end local v0    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v1    # "clonedState":Lsun/security/provider/certpath/ForwardState;
    .end local v3    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :catch_30
    move-exception v2

    .line 257
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v4, Ljava/lang/InternalError;

    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 254
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v1    # "clonedState":Lsun/security/provider/certpath/ForwardState;
    .restart local v3    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_3b
    :try_start_3b
    iget-object v4, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 253
    iput-object v4, v1, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;
    :try_end_45
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3b .. :try_end_45} :catch_30

    .line 255
    return-object v1
.end method

.method public initState(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .local p1, "certPathCheckers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    const/4 v3, 0x1

    .line 138
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    .line 139
    const/4 v2, 0x0

    iput v2, p0, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    .line 146
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "checker$iterator":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    .line 147
    .local v0, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 148
    invoke-virtual {v0, v3}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    .line 149
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 153
    .end local v0    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_31
    iput-boolean v3, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    .line 154
    return-void
.end method

.method public isInitial()Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    return v0
.end method

.method public keyParamsNeeded()Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lsun/security/provider/certpath/ForwardState;->keyParamsNeededFlag:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "State ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v1, "\n  issuerDN of last cert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/ForwardState;->issuerDN:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo v1, "\n  traversedCACerts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string/jumbo v1, "\n  init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v1, "\n  keyParamsNeeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    iget-boolean v2, p0, Lsun/security/provider/certpath/ForwardState;->keyParamsNeededFlag:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo v1, "\n  subjectNamesTraversed: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateState(Ljava/security/cert/X509Certificate;)V
    .registers 11
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 165
    if-nez p1, :cond_3

    .line 166
    return-void

    .line 168
    :cond_3
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v4

    .line 171
    .local v4, "icert":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-static {v7}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 172
    const/4 v7, 0x1

    iput-boolean v7, p0, Lsun/security/provider/certpath/ForwardState;->keyParamsNeededFlag:Z

    .line 176
    :cond_14
    iput-object v4, p0, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    .line 179
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    iput-object v7, p0, Lsun/security/provider/certpath/ForwardState;->issuerDN:Ljavax/security/auth/x500/X500Principal;

    .line 181
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v7

    if-nez v7, :cond_33

    .line 187
    iget-boolean v7, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    if-nez v7, :cond_33

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_33

    .line 188
    iget v7, p0, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    .line 194
    :cond_33
    iget-boolean v7, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    if-nez v7, :cond_3f

    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_8d

    .line 195
    :cond_3f
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 196
    .local v6, "subjName":Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    invoke-static {v6}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 200
    :try_start_4c
    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    move-result-object v5

    .line 201
    .local v5, "subjAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-eqz v5, :cond_8d

    .line 203
    const-string/jumbo v7, "subject_name"

    .line 202
    invoke-virtual {v5, v7}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v3

    .line 204
    .local v3, "gNames":Lsun/security/x509/GeneralNames;
    invoke-virtual {v3}, Lsun/security/x509/GeneralNames;->names()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "gName$iterator":Ljava/util/Iterator;
    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/GeneralName;

    .line 205
    .local v1, "gName":Lsun/security/x509/GeneralName;
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_76} :catch_77

    goto :goto_61

    .line 208
    .end local v1    # "gName":Lsun/security/x509/GeneralName;
    .end local v2    # "gName$iterator":Ljava/util/Iterator;
    .end local v3    # "gNames":Lsun/security/x509/GeneralNames;
    .end local v5    # "subjAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :catch_77
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lsun/security/provider/certpath/ForwardState;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_87

    .line 210
    sget-object v7, Lsun/security/provider/certpath/ForwardState;->debug:Lsun/security/util/Debug;

    const-string/jumbo v8, "ForwardState.updateState() unexpected exception"

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 214
    :cond_87
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v7, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 218
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "subjName":Ljavax/security/auth/x500/X500Principal;
    :cond_8d
    const/4 v7, 0x0

    iput-boolean v7, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    .line 219
    return-void
.end method

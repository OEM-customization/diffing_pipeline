.class public Lsun/security/provider/certpath/BuildStep;
.super Ljava/lang/Object;
.source "BuildStep.java"


# static fields
.field public static final blacklist BACK:I = 0x2

.field public static final blacklist FAIL:I = 0x4

.field public static final blacklist FOLLOW:I = 0x3

.field public static final blacklist POSSIBLE:I = 0x1

.field public static final blacklist SUCCEED:I = 0x5


# instance fields
.field private blacklist cert:Ljava/security/cert/X509Certificate;

.field private blacklist result:I

.field private blacklist throwable:Ljava/lang/Throwable;

.field private blacklist vertex:Lsun/security/provider/certpath/Vertex;


# direct methods
.method public constructor blacklist <init>(Lsun/security/provider/certpath/Vertex;I)V
    .registers 4
    .param p1, "vtx"    # Lsun/security/provider/certpath/Vertex;
    .param p2, "res"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    .line 86
    if-eqz p1, :cond_15

    .line 87
    invoke-virtual {p1}, Lsun/security/provider/certpath/Vertex;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    .line 88
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v0}, Lsun/security/provider/certpath/Vertex;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/BuildStep;->throwable:Ljava/lang/Throwable;

    .line 90
    :cond_15
    iput p2, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    .line 91
    return-void
.end method


# virtual methods
.method public blacklist fullToString()Ljava/lang/String;
    .registers 3

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lsun/security/provider/certpath/BuildStep;->getResult()I

    move-result v1

    invoke-virtual {p0, v1}, Lsun/security/provider/certpath/BuildStep;->resultToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v1}, Lsun/security/provider/certpath/Vertex;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 108
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public blacklist getIssuerName()Ljava/lang/String;
    .registers 2

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/provider/certpath/BuildStep;->getIssuerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIssuerName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "defaultName"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_6

    move-object v0, p1

    goto :goto_e

    .line 133
    :cond_6
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_e
    return-object v0
.end method

.method public blacklist getResult()I
    .registers 2

    .line 179
    iget v0, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    return v0
.end method

.method public blacklist getSubjectName()Ljava/lang/String;
    .registers 2

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/provider/certpath/BuildStep;->getSubjectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubjectName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "defaultName"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_6

    move-object v0, p1

    goto :goto_e

    .line 160
    :cond_6
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_e
    return-object v0
.end method

.method public blacklist getThrowable()Ljava/lang/Throwable;
    .registers 2

    .line 169
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public blacklist getVertex()Lsun/security/provider/certpath/Vertex;
    .registers 2

    .line 99
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    return-object v0
.end method

.method public blacklist resultToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "res"    # I

    .line 190
    const-string v0, ""

    .line 191
    .local v0, "resultString":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_20

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1d

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_17

    const/4 v1, 0x5

    if-eq p1, v1, :cond_14

    .line 210
    const-string v0, "Internal error: Invalid step result value.\n"

    goto :goto_23

    .line 207
    :cond_14
    const-string v0, "Certificate satisfies conditions.\n"

    .line 208
    goto :goto_23

    .line 203
    :cond_17
    const-string v0, "Certificate backed out since path does not satisfy conditions.\n"

    .line 205
    goto :goto_23

    .line 200
    :cond_1a
    const-string v0, "Certificate satisfies conditions.\n"

    .line 201
    goto :goto_23

    .line 196
    :cond_1d
    const-string v0, "Certificate backed out since path does not satisfy build requirements.\n"

    .line 198
    goto :goto_23

    .line 193
    :cond_20
    const-string v0, "Certificate to be tried.\n"

    .line 194
    nop

    .line 212
    :goto_23
    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 223
    const-string v0, "Internal Error\n"

    .line 224
    .local v0, "out":Ljava/lang/String;
    iget v1, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_32

    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    const/4 v2, 0x3

    if-eq v1, v2, :cond_32

    const/4 v2, 0x4

    if-eq v1, v2, :cond_16

    const/4 v2, 0x5

    if-eq v1, v2, :cond_32

    .line 236
    const-string v0, "Internal Error: Invalid step result\n"

    goto :goto_39

    .line 227
    :cond_16
    iget v1, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    invoke-virtual {p0, v1}, Lsun/security/provider/certpath/BuildStep;->resultToString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v2}, Lsun/security/provider/certpath/Vertex;->throwableToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    goto :goto_39

    .line 233
    :cond_32
    iget v1, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    invoke-virtual {p0, v1}, Lsun/security/provider/certpath/BuildStep;->resultToString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    nop

    .line 238
    :goto_39
    return-object v0
.end method

.method public blacklist verboseToString()Ljava/lang/String;
    .registers 4

    .line 249
    invoke-virtual {p0}, Lsun/security/provider/certpath/BuildStep;->getResult()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/security/provider/certpath/BuildStep;->resultToString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "out":Ljava/lang/String;
    iget v1, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2d

    const/4 v2, 0x3

    if-eq v1, v2, :cond_17

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2d

    const/4 v2, 0x5

    if-eq v1, v2, :cond_17

    goto :goto_43

    .line 257
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v2}, Lsun/security/provider/certpath/Vertex;->moreToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    goto :goto_43

    .line 253
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v2}, Lsun/security/provider/certpath/Vertex;->throwableToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    nop

    .line 264
    :goto_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Certificate contains:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v2}, Lsun/security/provider/certpath/Vertex;->certToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    return-object v0
.end method

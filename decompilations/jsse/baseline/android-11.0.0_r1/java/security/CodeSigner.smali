.class public final Ljava/security/CodeSigner;
.super Ljava/lang/Object;
.source "CodeSigner.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = 0x5ea2fa66cb219aadL


# instance fields
.field private transient greylist-max-o myhash:I

.field private greylist-max-o signerCertPath:Ljava/security/cert/CertPath;

.field private greylist-max-o timestamp:Ljava/security/Timestamp;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V
    .registers 4
    .param p1, "signerCertPath"    # Ljava/security/cert/CertPath;
    .param p2, "timestamp"    # Ljava/security/Timestamp;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/CodeSigner;->myhash:I

    .line 74
    if-eqz p1, :cond_d

    .line 77
    iput-object p1, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    .line 78
    iput-object p2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    .line 79
    return-void

    .line 75
    :cond_d
    const/4 v0, 0x0

    throw v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 170
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/CodeSigner;->myhash:I

    .line 172
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 128
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    instance-of v1, p1, Ljava/security/CodeSigner;

    if-nez v1, :cond_8

    goto :goto_2f

    .line 131
    :cond_8
    move-object v1, p1

    check-cast v1, Ljava/security/CodeSigner;

    .line 133
    .local v1, "that":Ljava/security/CodeSigner;
    if-ne p0, v1, :cond_f

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_f
    invoke-virtual {v1}, Ljava/security/CodeSigner;->getTimestamp()Ljava/security/Timestamp;

    move-result-object v2

    .line 137
    .local v2, "thatTimestamp":Ljava/security/Timestamp;
    iget-object v3, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-nez v3, :cond_1a

    .line 138
    if-eqz v2, :cond_23

    .line 139
    return v0

    .line 142
    :cond_1a
    if-eqz v2, :cond_2e

    .line 143
    invoke-virtual {v3, v2}, Ljava/security/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_2e

    .line 147
    :cond_23
    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v1}, Ljava/security/CodeSigner;->getSignerCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/cert/CertPath;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 144
    :cond_2e
    :goto_2e
    return v0

    .line 129
    .end local v1    # "that":Ljava/security/CodeSigner;
    .end local v2    # "thatTimestamp":Ljava/security/Timestamp;
    :cond_2f
    :goto_2f
    return v0
.end method

.method public whitelist core-platform-api test-api getSignerCertPath()Ljava/security/cert/CertPath;
    .registers 2

    .line 87
    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getTimestamp()Ljava/security/Timestamp;
    .registers 2

    .line 96
    iget-object v0, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 107
    iget v0, p0, Ljava/security/CodeSigner;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    .line 108
    iget-object v0, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-nez v0, :cond_12

    .line 109
    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/security/CodeSigner;->myhash:I

    goto :goto_21

    .line 111
    :cond_12
    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    invoke-virtual {v1}, Ljava/security/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/security/CodeSigner;->myhash:I

    .line 114
    :cond_21
    :goto_21
    iget v0, p0, Ljava/security/CodeSigner;->myhash:I

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    iget-object v1, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-eqz v1, :cond_43

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    :cond_43
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

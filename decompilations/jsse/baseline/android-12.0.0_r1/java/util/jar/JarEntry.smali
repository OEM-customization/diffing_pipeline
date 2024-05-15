.class public Ljava/util/jar/JarEntry;
.super Ljava/util/zip/ZipEntry;
.source "JarEntry.java"


# instance fields
.field greylist-max-o attr:Ljava/util/jar/Attributes;

.field greylist-max-o certs:[Ljava/security/cert/Certificate;

.field greylist-max-o signers:[Ljava/security/CodeSigner;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/jar/JarEntry;)V
    .registers 3
    .param p1, "je"    # Ljava/util/jar/JarEntry;

    .line 72
    invoke-direct {p0, p1}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 73
    iget-object v0, p1, Ljava/util/jar/JarEntry;->attr:Ljava/util/jar/Attributes;

    iput-object v0, p0, Ljava/util/jar/JarEntry;->attr:Ljava/util/jar/Attributes;

    .line 74
    iget-object v0, p1, Ljava/util/jar/JarEntry;->certs:[Ljava/security/cert/Certificate;

    iput-object v0, p0, Ljava/util/jar/JarEntry;->certs:[Ljava/security/cert/Certificate;

    .line 75
    iget-object v0, p1, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    iput-object v0, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    .line 76
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/zip/ZipEntry;)V
    .registers 2
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .line 62
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist test-api getAttributes()Ljava/util/jar/Attributes;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Ljava/util/jar/JarEntry;->attr:Ljava/util/jar/Attributes;

    return-object v0
.end method

.method public whitelist test-api getCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 108
    iget-object v0, p0, Ljava/util/jar/JarEntry;->certs:[Ljava/security/cert/Certificate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    :goto_c
    return-object v0
.end method

.method public whitelist test-api getCodeSigners()[Ljava/security/CodeSigner;
    .registers 2

    .line 127
    iget-object v0, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, [Ljava/security/CodeSigner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    :goto_c
    return-object v0
.end method

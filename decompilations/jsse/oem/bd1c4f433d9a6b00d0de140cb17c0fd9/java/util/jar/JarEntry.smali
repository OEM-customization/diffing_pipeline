.class public Ljava/util/jar/JarEntry;
.super Ljava/util/zip/ZipEntry;
.source "JarEntry.java"


# instance fields
.field attr:Ljava/util/jar/Attributes;

.field certs:[Ljava/security/cert/Certificate;

.field signers:[Ljava/security/CodeSigner;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/jar/JarEntry;)V
    .registers 3
    .param p1, "je"    # Ljava/util/jar/JarEntry;

    .prologue
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

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .registers 2
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/jar/Attributes;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Ljava/util/jar/JarEntry;->attr:Ljava/util/jar/Attributes;

    return-object v0
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Ljava/util/jar/JarEntry;->certs:[Ljava/security/cert/Certificate;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/util/jar/JarEntry;->certs:[Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    goto :goto_5
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    goto :goto_5
.end method

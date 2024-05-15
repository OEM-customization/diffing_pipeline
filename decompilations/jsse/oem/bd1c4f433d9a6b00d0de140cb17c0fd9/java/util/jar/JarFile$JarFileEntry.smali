.class Ljava/util/jar/JarFile$JarFileEntry;
.super Ljava/util/jar/JarEntry;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JarFileEntry"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/jar/JarFile;


# direct methods
.method constructor <init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/jar/JarFile;
    .param p2, "ze"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 277
    iput-object p1, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    .line 278
    invoke-direct {p0, p2}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 279
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/jar/Attributes;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 281
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 282
    .local v0, "man":Ljava/util/jar/Manifest;
    if-eqz v0, :cond_12

    .line 283
    invoke-virtual {p0}, Ljava/util/jar/JarFile$JarFileEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    return-object v1

    .line 285
    :cond_12
    return-object v2
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 290
    :try_start_1
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v2}, Ljava/util/jar/JarFile;->-wrap0(Ljava/util/jar/JarFile;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_25

    .line 294
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->certs:[Ljava/security/cert/Certificate;

    if-nez v2, :cond_20

    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v2}, Ljava/util/jar/JarFile;->-get0(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 295
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v2}, Ljava/util/jar/JarFile;->-get0(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;

    move-result-object v2

    iget-object v3, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-virtual {v2, v3, p0}, Ljava/util/jar/JarVerifier;->getCerts(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->certs:[Ljava/security/cert/Certificate;

    .line 297
    :cond_20
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->certs:[Ljava/security/cert/Certificate;

    if-nez v2, :cond_2c

    :goto_24
    return-object v1

    .line 291
    :catch_25
    move-exception v0

    .line 292
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 297
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2c
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileEntry;->certs:[Ljava/security/cert/Certificate;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    goto :goto_24
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 301
    :try_start_1
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v2}, Ljava/util/jar/JarFile;->-wrap0(Ljava/util/jar/JarFile;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_25

    .line 305
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v2, :cond_20

    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v2}, Ljava/util/jar/JarFile;->-get0(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 306
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v2}, Ljava/util/jar/JarFile;->-get0(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;

    move-result-object v2

    iget-object v3, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-virtual {v2, v3, p0}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->signers:[Ljava/security/CodeSigner;

    .line 308
    :cond_20
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v2, :cond_2c

    :goto_24
    return-object v1

    .line 302
    :catch_25
    move-exception v0

    .line 303
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 308
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2c
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileEntry;->signers:[Ljava/security/CodeSigner;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/CodeSigner;

    goto :goto_24
.end method

.class public Ljava/util/jar/JarInputStream;
.super Ljava/util/zip/ZipInputStream;
.source "JarInputStream.java"


# instance fields
.field private final greylist-max-o doVerify:Z

.field private greylist-max-o first:Ljava/util/jar/JarEntry;

.field private greylist-max-o jv:Ljava/util/jar/JarVerifier;

.field private greylist-max-o man:Ljava/util/jar/Manifest;

.field private greylist-max-o mev:Lsun/security/util/ManifestEntryVerifier;

.field private greylist-max-o tryManifest:Z


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 63
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/InputStream;Z)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "verify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    iput-boolean p2, p0, Ljava/util/jar/JarInputStream;->doVerify:Z

    .line 83
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 84
    .local v0, "e":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "META-INF/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 85
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 86
    :cond_20
    invoke-direct {p0, v0}, Ljava/util/jar/JarInputStream;->checkManifest(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    .line 87
    return-void
.end method

.method private greylist-max-o checkManifest(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    .registers 5
    .param p1, "e"    # Ljava/util/jar/JarEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    if-eqz p1, :cond_46

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 93
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0}, Ljava/util/jar/Manifest;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    .line 94
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/util/jar/JarInputStream;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 95
    .local v0, "bytes":[B
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    .line 96
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->closeEntry()V

    .line 97
    iget-boolean v1, p0, Ljava/util/jar/JarInputStream;->doVerify:Z

    if-eqz v1, :cond_3f

    .line 98
    new-instance v1, Ljava/util/jar/JarVerifier;

    invoke-direct {v1, v0}, Ljava/util/jar/JarVerifier;-><init>([B)V

    iput-object v1, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    .line 99
    new-instance v1, Lsun/security/util/ManifestEntryVerifier;

    iget-object v2, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    invoke-direct {v1, v2}, Lsun/security/util/ManifestEntryVerifier;-><init>(Ljava/util/jar/Manifest;)V

    iput-object v1, p0, Ljava/util/jar/JarInputStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    .line 101
    :cond_3f
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    return-object v1

    .line 103
    .end local v0    # "bytes":[B
    :cond_46
    return-object p1
.end method

.method private greylist-max-o getBytes(Ljava/io/InputStream;)[B
    .registers 8
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 110
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 112
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_b
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    move v4, v2

    .local v4, "n":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_19

    .line 113
    invoke-virtual {v1, v0, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_b

    .line 115
    :cond_19
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected whitelist core-platform-api test-api createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 227
    new-instance v0, Ljava/util/jar/JarEntry;

    invoke-direct {v0, p1}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "e":Ljava/util/jar/JarEntry;
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    if-eqz v1, :cond_f

    .line 229
    invoke-virtual {v1, p1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    iput-object v1, v0, Ljava/util/jar/JarEntry;->attr:Ljava/util/jar/Attributes;

    .line 231
    :cond_f
    return-object v0
.end method

.method public whitelist core-platform-api test-api getManifest()Ljava/util/jar/Manifest;
    .registers 2

    .line 126
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->man:Ljava/util/jar/Manifest;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getNextEntry()Ljava/util/zip/ZipEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 142
    invoke-super {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 143
    .local v0, "e":Ljava/util/jar/JarEntry;
    iget-boolean v3, p0, Ljava/util/jar/JarInputStream;->tryManifest:Z

    if-eqz v3, :cond_2b

    .line 144
    invoke-direct {p0, v0}, Ljava/util/jar/JarInputStream;->checkManifest(Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 145
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/util/jar/JarInputStream;->tryManifest:Z

    goto :goto_2b

    .line 148
    .end local v0    # "e":Ljava/util/jar/JarEntry;
    :cond_18
    iget-object v3, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    .line 149
    .local v3, "e":Ljava/util/jar/JarEntry;
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "META-INF/INDEX.LIST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 150
    iput-boolean v1, p0, Ljava/util/jar/JarInputStream;->tryManifest:Z

    .line 151
    :cond_28
    iput-object v2, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    move-object v0, v3

    .line 153
    .end local v3    # "e":Ljava/util/jar/JarEntry;
    .restart local v0    # "e":Ljava/util/jar/JarEntry;
    :cond_2b
    :goto_2b
    iget-object v3, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    if-eqz v3, :cond_43

    if-eqz v0, :cond_43

    .line 157
    invoke-virtual {v3}, Ljava/util/jar/JarVerifier;->nothingToVerify()Z

    move-result v3

    if-ne v3, v1, :cond_3c

    .line 158
    iput-object v2, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    .line 159
    iput-object v2, p0, Ljava/util/jar/JarInputStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    goto :goto_43

    .line 161
    :cond_3c
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v2, p0, Ljava/util/jar/JarInputStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    invoke-virtual {v1, v0, v2}, Ljava/util/jar/JarVerifier;->beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V

    .line 164
    :cond_43
    :goto_43
    return-object v0
.end method

.method public whitelist core-platform-api test-api getNextJarEntry()Ljava/util/jar/JarEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    return-object v0
.end method

.method public whitelist core-platform-api test-api read([BII)I
    .registers 11
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Ljava/util/jar/JarInputStream;->first:Ljava/util/jar/JarEntry;

    if-nez v0, :cond_9

    .line 207
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v0

    .local v0, "n":I
    goto :goto_a

    .line 209
    .end local v0    # "n":I
    :cond_9
    const/4 v0, -0x1

    .line 211
    .restart local v0    # "n":I
    :goto_a
    iget-object v1, p0, Ljava/util/jar/JarInputStream;->jv:Ljava/util/jar/JarVerifier;

    if-eqz v1, :cond_17

    .line 212
    iget-object v6, p0, Ljava/util/jar/JarInputStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    move v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    .line 214
    :cond_17
    return v0
.end method

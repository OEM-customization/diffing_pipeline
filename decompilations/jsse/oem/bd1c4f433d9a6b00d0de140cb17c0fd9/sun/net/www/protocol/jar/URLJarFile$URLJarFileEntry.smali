.class Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;
.super Ljava/util/jar/JarEntry;
.source "URLJarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/jar/URLJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "URLJarFileEntry"
.end annotation


# instance fields
.field private je:Ljava/util/jar/JarEntry;

.field final synthetic this$0:Lsun/net/www/protocol/jar/URLJarFile;


# direct methods
.method constructor <init>(Lsun/net/www/protocol/jar/URLJarFile;Ljava/util/jar/JarEntry;)V
    .registers 3
    .param p1, "this$0"    # Lsun/net/www/protocol/jar/URLJarFile;
    .param p2, "je"    # Ljava/util/jar/JarEntry;

    .prologue
    .line 257
    iput-object p1, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->this$0:Lsun/net/www/protocol/jar/URLJarFile;

    .line 258
    invoke-direct {p0, p2}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/jar/JarEntry;)V

    .line 259
    iput-object p2, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->je:Ljava/util/jar/JarEntry;

    .line 260
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/jar/Attributes;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-object v2, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->this$0:Lsun/net/www/protocol/jar/URLJarFile;

    invoke-static {v2}, Lsun/net/www/protocol/jar/URLJarFile;->-wrap0(Lsun/net/www/protocol/jar/URLJarFile;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 264
    iget-object v2, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->this$0:Lsun/net/www/protocol/jar/URLJarFile;

    invoke-static {v2}, Lsun/net/www/protocol/jar/URLJarFile;->-get0(Lsun/net/www/protocol/jar/URLJarFile;)Ljava/util/Map;

    move-result-object v1

    .line 265
    .local v1, "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    if-eqz v1, :cond_24

    .line 266
    invoke-virtual {p0}, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    .line 267
    .local v0, "a":Ljava/util/jar/Attributes;
    if-eqz v0, :cond_24

    .line 268
    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/Attributes;

    return-object v2

    .line 271
    .end local v0    # "a":Ljava/util/jar/Attributes;
    .end local v1    # "e":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    :cond_24
    return-object v3
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v2, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->je:Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 276
    .local v0, "certs":[Ljava/security/cert/Certificate;
    if-nez v0, :cond_a

    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    goto :goto_9
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v2, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->je:Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object v0

    .line 281
    .local v0, "csg":[Ljava/security/CodeSigner;
    if-nez v0, :cond_a

    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/CodeSigner;

    goto :goto_9
.end method

.class Lsun/misc/URLClassPath$JarLoader$2;
.super Lsun/misc/Resource;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath$JarLoader;->checkResource(Ljava/lang/String;ZLjava/util/jar/JarEntry;)Lsun/misc/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/misc/URLClassPath$JarLoader;

.field final synthetic blacklist val$entry:Ljava/util/jar/JarEntry;

.field final synthetic blacklist val$name:Ljava/lang/String;

.field final synthetic blacklist val$url:Ljava/net/URL;


# direct methods
.method constructor blacklist <init>(Lsun/misc/URLClassPath$JarLoader;Ljava/lang/String;Ljava/net/URL;Ljava/util/jar/JarEntry;)V
    .registers 5
    .param p1, "this$0"    # Lsun/misc/URLClassPath$JarLoader;

    .line 992
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader$2;->this$0:Lsun/misc/URLClassPath$JarLoader;

    iput-object p2, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$url:Ljava/net/URL;

    iput-object p4, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$entry:Ljava/util/jar/JarEntry;

    invoke-direct {p0}, Lsun/misc/Resource;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 1003
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCodeSigners()[Ljava/security/CodeSigner;
    .registers 2

    .line 1005
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCodeSourceURL()Ljava/net/URL;
    .registers 2

    .line 995
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->this$0:Lsun/misc/URLClassPath$JarLoader;

    # getter for: Lsun/misc/URLClassPath$JarLoader;->csu:Ljava/net/URL;
    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->access$600(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContentLength()I
    .registers 3

    .line 999
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public blacklist getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 997
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->this$0:Lsun/misc/URLClassPath$JarLoader;

    # getter for: Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;
    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->access$700(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;

    move-result-object v0

    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getManifest()Ljava/util/jar/Manifest;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1001
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->this$0:Lsun/misc/URLClassPath$JarLoader;

    # getter for: Lsun/misc/URLClassPath$JarLoader;->jar:Ljava/util/jar/JarFile;
    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->access$700(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 993
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getURL()Ljava/net/URL;
    .registers 2

    .line 994
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$2;->val$url:Ljava/net/URL;

    return-object v0
.end method

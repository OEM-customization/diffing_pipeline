.class Lsun/misc/URLClassPath$FileLoader$1;
.super Lsun/misc/Resource;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath$FileLoader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsun/misc/URLClassPath$FileLoader;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath$FileLoader;Ljava/lang/String;Ljava/net/URL;Ljava/io/File;)V
    .registers 5
    .param p1, "this$1"    # Lsun/misc/URLClassPath$FileLoader;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/misc/URLClassPath$FileLoader$1;->this$1:Lsun/misc/URLClassPath$FileLoader;

    iput-object p2, p0, Lsun/misc/URLClassPath$FileLoader$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lsun/misc/URLClassPath$FileLoader$1;->val$url:Ljava/net/URL;

    iput-object p4, p0, Lsun/misc/URLClassPath$FileLoader$1;->val$file:Ljava/io/File;

    .line 1303
    invoke-direct {p0}, Lsun/misc/Resource;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getCodeSourceURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 1306
    iget-object v0, p0, Lsun/misc/URLClassPath$FileLoader$1;->this$1:Lsun/misc/URLClassPath$FileLoader;

    invoke-virtual {v0}, Lsun/misc/URLClassPath$FileLoader;->getBaseURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1310
    iget-object v0, p0, Lsun/misc/URLClassPath$FileLoader$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1308
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lsun/misc/URLClassPath$FileLoader$1;->val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1304
    iget-object v0, p0, Lsun/misc/URLClassPath$FileLoader$1;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 1305
    iget-object v0, p0, Lsun/misc/URLClassPath$FileLoader$1;->val$url:Ljava/net/URL;

    return-object v0
.end method
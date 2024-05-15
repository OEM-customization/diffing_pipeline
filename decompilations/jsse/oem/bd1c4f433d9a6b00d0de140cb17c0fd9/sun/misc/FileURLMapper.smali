.class public Lsun/misc/FileURLMapper;
.super Ljava/lang/Object;
.source "FileURLMapper.java"


# instance fields
.field path:Ljava/lang/String;

.field url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .registers 2
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lsun/misc/FileURLMapper;->url:Ljava/net/URL;

    .line 50
    return-void
.end method


# virtual methods
.method public exists()Z
    .registers 4

    .prologue
    .line 73
    invoke-virtual {p0}, Lsun/misc/FileURLMapper;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 75
    const/4 v2, 0x0

    return v2

    .line 77
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method public getPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 58
    iget-object v1, p0, Lsun/misc/FileURLMapper;->path:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 59
    iget-object v1, p0, Lsun/misc/FileURLMapper;->path:Ljava/lang/String;

    return-object v1

    .line 61
    :cond_7
    iget-object v1, p0, Lsun/misc/FileURLMapper;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_21

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string/jumbo v1, "localhost"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 63
    :cond_21
    iget-object v1, p0, Lsun/misc/FileURLMapper;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/FileURLMapper;->path:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lsun/misc/FileURLMapper;->path:Ljava/lang/String;

    invoke-static {v1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/misc/FileURLMapper;->path:Ljava/lang/String;

    .line 66
    :cond_31
    iget-object v1, p0, Lsun/misc/FileURLMapper;->path:Ljava/lang/String;

    return-object v1
.end method

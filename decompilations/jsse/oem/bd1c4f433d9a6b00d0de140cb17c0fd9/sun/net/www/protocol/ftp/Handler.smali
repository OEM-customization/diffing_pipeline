.class public Lsun/net/www/protocol/ftp/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected equals(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 7
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "userInfo1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "userInfo2":Ljava/lang/String;
    invoke-super {p0, p1, p2}, Ljava/net/URLStreamHandler;->equals(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 47
    if-nez v0, :cond_15

    if-nez v1, :cond_14

    const/4 v2, 0x1

    .line 46
    :cond_14
    :goto_14
    return v2

    .line 47
    :cond_15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_14
.end method

.method protected getDefaultPort()I
    .registers 2

    .prologue
    .line 40
    const/16 v0, 0x15

    return v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/ftp/Handler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 4
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lsun/net/www/protocol/ftp/FtpURLConnection;

    invoke-direct {v0, p1, p2}, Lsun/net/www/protocol/ftp/FtpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    return-object v0
.end method

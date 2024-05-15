.class public Lsun/net/www/protocol/ftp/FtpURLConnection;
.super Lsun/net/www/URLConnection;
.source "FtpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;,
        Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;
    }
.end annotation


# static fields
.field static final ASCII:I = 0x1

.field static final BIN:I = 0x2

.field static final DIR:I = 0x3

.field static final NONE:I


# instance fields
.field private connectTimeout:I

.field filename:Ljava/lang/String;

.field ftp:Lsun/net/ftp/FtpClient;

.field fullpath:Ljava/lang/String;

.field host:Ljava/lang/String;

.field private instProxy:Ljava/net/Proxy;

.field is:Ljava/io/InputStream;

.field os:Ljava/io/OutputStream;

.field password:Ljava/lang/String;

.field pathname:Ljava/lang/String;

.field permission:Ljava/security/Permission;

.field port:I

.field private readTimeout:I

.field type:I

.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .registers 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/net/www/protocol/ftp/FtpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    .line 172
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Ljava/net/Proxy;)V
    .registers 10
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 180
    invoke-direct {p0, p1}, Lsun/net/www/URLConnection;-><init>(Ljava/net/URL;)V

    .line 92
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    .line 93
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    .line 95
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    .line 110
    iput v6, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 114
    iput v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    .line 115
    iput v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    .line 181
    iput-object p2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;

    .line 182
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    iput v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->port:I

    .line 184
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "userInfo":Ljava/lang/String;
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v3

    invoke-virtual {v3}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v3

    if-nez v3, :cond_7f

    .line 188
    new-instance v4, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cleartext traffic not permitted: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 189
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 189
    const-string/jumbo v5, "://"

    .line 188
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 189
    iget-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    .line 188
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 190
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    if-ltz v3, :cond_7b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    :goto_6f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 190
    :cond_7b
    const-string/jumbo v3, ""

    goto :goto_6f

    .line 194
    :cond_7f
    if-eqz v2, :cond_91

    .line 195
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 196
    .local v0, "delimiter":I
    if-ne v0, v5, :cond_92

    .line 197
    invoke-static {v2}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    .line 198
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    .line 204
    .end local v0    # "delimiter":I
    :cond_91
    :goto_91
    return-void

    .line 200
    .restart local v0    # "delimiter":I
    :cond_92
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "delimiter":I
    .local v1, "delimiter":I
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    .line 201
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    goto :goto_91
.end method

.method private cd(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 399
    :cond_8
    return-void

    .line 401
    :cond_9
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    .line 402
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-static {p1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/net/ftp/FtpClient;->changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;

    .line 403
    return-void

    .line 406
    :cond_1c
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, "/"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .local v0, "token":Ljava/util/StringTokenizer;
    :goto_24
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 408
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/net/ftp/FtpClient;->changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;

    goto :goto_24

    .line 410
    :cond_38
    return-void
.end method

.method private decodePath(Ljava/lang/String;)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 349
    const-string/jumbo v2, ";type="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 350
    .local v0, "i":I
    if-ltz v0, :cond_3f

    .line 351
    add-int/lit8 v2, v0, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "s1":Ljava/lang/String;
    const-string/jumbo v2, "i"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 353
    const/4 v2, 0x2

    iput v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 355
    :cond_24
    const-string/jumbo v2, "a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 356
    iput v6, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 358
    :cond_2f
    const-string/jumbo v2, "d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 359
    const/4 v2, 0x3

    iput v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 361
    :cond_3b
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 363
    .end local v1    # "s1":Ljava/lang/String;
    :cond_3f
    if-eqz p1, :cond_51

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_51

    .line 364
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_51

    .line 365
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 367
    :cond_51
    if-eqz p1, :cond_59

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5c

    .line 368
    :cond_59
    const-string/jumbo p1, "./"

    .line 370
    :cond_5c
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b5

    .line 371
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 372
    if-lez v0, :cond_ac

    .line 373
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    .line 374
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    invoke-static {v2}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    .line 375
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    .line 384
    :goto_85
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    if-eqz v2, :cond_c8

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    if-eqz v2, :cond_c4

    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    :goto_a1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    .line 389
    :goto_ab
    return-void

    .line 377
    :cond_ac
    invoke-static {p1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    .line 378
    iput-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    goto :goto_85

    .line 381
    :cond_b5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    .line 382
    iput-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    goto :goto_85

    .line 385
    :cond_c4
    const-string/jumbo v2, ""

    goto :goto_a1

    .line 387
    :cond_c8
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    goto :goto_ab
.end method

.method private setTimeouts()V
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    if-eqz v0, :cond_1a

    .line 208
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    if-ltz v0, :cond_f

    .line 209
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    invoke-virtual {v0, v1}, Lsun/net/ftp/FtpClient;->setConnectTimeout(I)Lsun/net/ftp/FtpClient;

    .line 211
    :cond_f
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    if-ltz v0, :cond_1a

    .line 212
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    invoke-virtual {v0, v1}, Lsun/net/ftp/FtpClient;->setReadTimeout(I)Lsun/net/ftp/FtpClient;

    .line 215
    :cond_1a
    return-void
.end method


# virtual methods
.method public declared-synchronized connect()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    monitor-enter p0

    .line 226
    :try_start_2
    iget-boolean v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connected:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_db

    if-eqz v8, :cond_8

    monitor-exit p0

    .line 227
    return-void

    .line 230
    :cond_8
    const/4 v4, 0x0

    .line 231
    .local v4, "p":Ljava/net/Proxy;
    :try_start_9
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;

    if-nez v8, :cond_ef

    .line 236
    new-instance v8, Lsun/net/www/protocol/ftp/FtpURLConnection$1;

    invoke-direct {v8, p0}, Lsun/net/www/protocol/ftp/FtpURLConnection$1;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;)V

    .line 235
    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/ProxySelector;

    .line 241
    .local v5, "sel":Ljava/net/ProxySelector;
    if-eqz v5, :cond_3a

    .line 242
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-static {v8}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v6

    .line 243
    .local v6, "uri":Ljava/net/URI;
    invoke-virtual {v5, v6}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 244
    .end local v4    # "p":Ljava/net/Proxy;
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 245
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Proxy;

    .line 246
    .local v4, "p":Ljava/net/Proxy;
    if-eqz v4, :cond_3a

    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v4, v8, :cond_b0

    .line 308
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v4    # "p":Ljava/net/Proxy;
    .end local v5    # "sel":Ljava/net/ProxySelector;
    .end local v6    # "uri":Ljava/net/URI;
    :cond_3a
    :goto_3a
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    if-nez v8, :cond_7c

    .line 309
    const-string/jumbo v8, "anonymous"

    iput-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    .line 311
    new-instance v8, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v10, "java.version"

    invoke-direct {v8, v10}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 313
    .local v7, "vers":Ljava/lang/String;
    new-instance v8, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v10, "ftp.protocol.user"

    .line 314
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Java"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 313
    invoke-direct {v8, v10, v11}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;
    :try_end_7c
    .catchall {:try_start_9 .. :try_end_7c} :catchall_db

    .line 317
    .end local v7    # "vers":Ljava/lang/String;
    :cond_7c
    :try_start_7c
    invoke-static {}, Lsun/net/ftp/FtpClient;->create()Lsun/net/ftp/FtpClient;

    move-result-object v8

    iput-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    .line 318
    if-eqz v4, :cond_89

    .line 319
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v8, v4}, Lsun/net/ftp/FtpClient;->setProxy(Ljava/net/Proxy;)Lsun/net/ftp/FtpClient;

    .line 321
    :cond_89
    invoke-direct {p0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->setTimeouts()V

    .line 322
    iget v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->port:I

    const/4 v10, -0x1

    if-eq v8, v10, :cond_f3

    .line 323
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    new-instance v10, Ljava/net/InetSocketAddress;

    iget-object v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    iget v12, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->port:I

    invoke-direct {v10, v11, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v10}, Lsun/net/ftp/FtpClient;->connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;
    :try_end_9f
    .catch Ljava/net/UnknownHostException; {:try_start_7c .. :try_end_9f} :catch_104
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_7c .. :try_end_9f} :catch_106
    .catchall {:try_start_7c .. :try_end_9f} :catchall_db

    .line 335
    :goto_9f
    :try_start_9f
    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    if-nez v8, :cond_10d

    move-object v8, v9

    :goto_a8
    invoke-virtual {v10, v11, v8}, Lsun/net/ftp/FtpClient;->login(Ljava/lang/String;[C)Lsun/net/ftp/FtpClient;
    :try_end_ab
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_9f .. :try_end_ab} :catch_114
    .catchall {:try_start_9f .. :try_end_ab} :catchall_db

    .line 341
    const/4 v8, 0x1

    :try_start_ac
    iput-boolean v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connected:Z
    :try_end_ae
    .catchall {:try_start_ac .. :try_end_ae} :catchall_db

    monitor-exit p0

    .line 342
    return-void

    .line 247
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .restart local v4    # "p":Ljava/net/Proxy;
    .restart local v5    # "sel":Ljava/net/ProxySelector;
    .restart local v6    # "uri":Ljava/net/URI;
    :cond_b0
    :try_start_b0
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-eq v8, v10, :cond_3a

    .line 250
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v10, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v8, v10, :cond_ca

    .line 251
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/InetSocketAddress;

    xor-int/lit8 v8, v8, 0x1

    .line 250
    if-eqz v8, :cond_de

    .line 252
    :cond_ca
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v8

    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Wrong proxy type"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8, v10}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    :try_end_d9
    .catchall {:try_start_b0 .. :try_end_d9} :catchall_db

    goto/16 :goto_28

    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v4    # "p":Ljava/net/Proxy;
    .end local v5    # "sel":Ljava/net/ProxySelector;
    .end local v6    # "uri":Ljava/net/URI;
    :catchall_db
    move-exception v8

    monitor-exit p0

    throw v8

    .line 278
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .restart local v4    # "p":Ljava/net/Proxy;
    .restart local v5    # "sel":Ljava/net/ProxySelector;
    .restart local v6    # "uri":Ljava/net/URI;
    :cond_de
    :try_start_de
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v8

    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "FTP connections over HTTP proxy not supported"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8, v10}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    goto/16 :goto_28

    .line 284
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v5    # "sel":Ljava/net/ProxySelector;
    .end local v6    # "uri":Ljava/net/URI;
    .local v4, "p":Ljava/net/Proxy;
    :cond_ef
    iget-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;
    :try_end_f1
    .catchall {:try_start_de .. :try_end_f1} :catchall_db

    .local v4, "p":Ljava/net/Proxy;
    goto/16 :goto_3a

    .line 325
    .end local v4    # "p":Ljava/net/Proxy;
    :cond_f3
    :try_start_f3
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    new-instance v10, Ljava/net/InetSocketAddress;

    iget-object v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    invoke-static {}, Lsun/net/ftp/FtpClient;->defaultPort()I

    move-result v12

    invoke-direct {v10, v11, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v10}, Lsun/net/ftp/FtpClient;->connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;
    :try_end_103
    .catch Ljava/net/UnknownHostException; {:try_start_f3 .. :try_end_103} :catch_104
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_f3 .. :try_end_103} :catch_106
    .catchall {:try_start_f3 .. :try_end_103} :catchall_db

    goto :goto_9f

    .line 327
    :catch_104
    move-exception v0

    .line 330
    .local v0, "e":Ljava/net/UnknownHostException;
    :try_start_105
    throw v0

    .line 331
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_106
    move-exception v2

    .line 332
    .local v2, "fe":Lsun/net/ftp/FtpProtocolException;
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_10d
    .catchall {:try_start_105 .. :try_end_10d} :catchall_db

    .line 335
    .end local v2    # "fe":Lsun/net/ftp/FtpProtocolException;
    :cond_10d
    :try_start_10d
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C
    :try_end_112
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_10d .. :try_end_112} :catch_114
    .catchall {:try_start_10d .. :try_end_112} :catchall_db

    move-result-object v8

    goto :goto_a8

    .line 336
    :catch_114
    move-exception v1

    .line 337
    .local v1, "e":Lsun/net/ftp/FtpProtocolException;
    :try_start_115
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v8}, Lsun/net/ftp/FtpClient;->close()V

    .line 339
    new-instance v8, Lsun/net/ftp/FtpLoginException;

    const-string/jumbo v9, "Invalid username/password"

    invoke-direct {v8, v9}, Lsun/net/ftp/FtpLoginException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_123
    .catchall {:try_start_115 .. :try_end_123} :catchall_db
.end method

.method public getConnectTimeout()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 667
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    if-gez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    goto :goto_5
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connected:Z

    if-nez v14, :cond_9

    .line 424
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->connect()V

    .line 435
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    if-eqz v14, :cond_18

    .line 436
    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v15, "Already opened for output"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 439
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    if-eqz v14, :cond_23

    .line 440
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    return-object v14

    .line 443
    :cond_23
    new-instance v12, Lsun/net/www/MessageHeader;

    invoke-direct {v12}, Lsun/net/www/MessageHeader;-><init>()V

    .line 445
    .local v12, "msgh":Lsun/net/www/MessageHeader;
    const/4 v8, 0x0

    .line 447
    .local v8, "isAdir":Z
    :try_start_29
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v14}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->decodePath(Ljava/lang/String;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    if-eqz v14, :cond_43

    move-object/from16 v0, p0

    iget v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_149

    .line 449
    :cond_43
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    .line 450
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    if-nez v14, :cond_da

    .line 452
    new-instance v14, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lsun/net/ftp/FtpClient;->list(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_76} :catch_fd
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_29 .. :try_end_76} :catch_183

    .line 469
    :goto_76
    :try_start_76
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->getLastTransferSize()J

    move-result-wide v10

    .line 470
    .local v10, "l":J
    const-string/jumbo v14, "content-length"

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_bc

    .line 477
    invoke-static {}, Lsun/net/ProgressMonitor;->getDefault()Lsun/net/ProgressMonitor;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    const-string/jumbo v16, "GET"

    invoke-virtual/range {v14 .. v16}, Lsun/net/ProgressMonitor;->shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z

    move-result v9

    .line 478
    .local v9, "meteredInput":Z
    const/4 v13, 0x0

    .line 480
    .local v13, "pi":Lsun/net/ProgressSource;
    if-eqz v9, :cond_af

    .line 481
    new-instance v13, Lsun/net/ProgressSource;

    .end local v13    # "pi":Lsun/net/ProgressSource;
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    const-string/jumbo v15, "GET"

    invoke-direct {v13, v14, v15, v10, v11}, Lsun/net/ProgressSource;-><init>(Ljava/net/URL;Ljava/lang/String;J)V

    .line 482
    .local v13, "pi":Lsun/net/ProgressSource;
    invoke-virtual {v13}, Lsun/net/ProgressSource;->beginTracking()V

    .line 485
    .end local v13    # "pi":Lsun/net/ProgressSource;
    :cond_af
    new-instance v14, Lsun/net/www/MeteredStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    invoke-direct {v14, v15, v13, v10, v11}, Lsun/net/www/MeteredStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_bc} :catch_192
    .catch Ljava/io/FileNotFoundException; {:try_start_76 .. :try_end_bc} :catch_fd
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_76 .. :try_end_bc} :catch_183

    .line 493
    .end local v9    # "meteredInput":Z
    .end local v10    # "l":J
    :cond_bc
    :goto_bc
    if-eqz v8, :cond_198

    .line 494
    :try_start_be
    const-string/jumbo v14, "content-type"

    const-string/jumbo v15, "text/plain"

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string/jumbo v14, "access-type"

    const-string/jumbo v15, "directory"

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d0
    .catch Ljava/io/FileNotFoundException; {:try_start_be .. :try_end_d0} :catch_fd
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_be .. :try_end_d0} :catch_183

    .line 525
    :cond_d0
    :goto_d0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lsun/net/www/protocol/ftp/FtpURLConnection;->setProperties(Lsun/net/www/MessageHeader;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    return-object v14

    .line 454
    :cond_da
    :try_start_da
    new-instance v14, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lsun/net/ftp/FtpClient;->nameList(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_fb
    .catch Ljava/io/FileNotFoundException; {:try_start_da .. :try_end_fb} :catch_fd
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_da .. :try_end_fb} :catch_183

    goto/16 :goto_76

    .line 506
    :catch_fd
    move-exception v2

    .line 508
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_fe
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    .line 514
    new-instance v14, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lsun/net/ftp/FtpClient;->list(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    .line 515
    const-string/jumbo v14, "content-type"

    const-string/jumbo v15, "text/plain"

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string/jumbo v14, "access-type"

    const-string/jumbo v15, "directory"

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_13d} :catch_13e
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_fe .. :try_end_13d} :catch_1c7

    goto :goto_d0

    .line 517
    :catch_13e
    move-exception v4

    .line 518
    .local v4, "ex":Ljava/io/IOException;
    new-instance v14, Ljava/io/FileNotFoundException;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 457
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_149
    :try_start_149
    move-object/from16 v0, p0

    iget v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_18a

    .line 458
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    .line 462
    :goto_157
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    .line 463
    new-instance v14, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lsun/net/ftp/FtpClient;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_181
    .catch Ljava/io/FileNotFoundException; {:try_start_149 .. :try_end_181} :catch_fd
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_149 .. :try_end_181} :catch_183

    goto/16 :goto_76

    .line 522
    :catch_183
    move-exception v6

    .line 523
    .local v6, "ftpe":Lsun/net/ftp/FtpProtocolException;
    new-instance v14, Ljava/io/IOException;

    invoke-direct {v14, v6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 460
    .end local v6    # "ftpe":Lsun/net/ftp/FtpProtocolException;
    :cond_18a
    :try_start_18a
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->setBinaryType()Lsun/net/ftp/FtpClient;

    goto :goto_157

    .line 487
    :catch_192
    move-exception v3

    .line 488
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_bc

    .line 497
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_198
    const-string/jumbo v14, "access-type"

    const-string/jumbo v15, "file"

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    invoke-static {v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 499
    .local v7, "ftype":Ljava/lang/String;
    if-nez v7, :cond_1bd

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->markSupported()Z

    move-result v14

    if-eqz v14, :cond_1bd

    .line 500
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    invoke-static {v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 502
    :cond_1bd
    if-eqz v7, :cond_d0

    .line 503
    const-string/jumbo v14, "content-type"

    invoke-virtual {v12, v14, v7}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c5
    .catch Ljava/io/FileNotFoundException; {:try_start_18a .. :try_end_1c5} :catch_fd
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_18a .. :try_end_1c5} :catch_183

    goto/16 :goto_d0

    .line 519
    .end local v7    # "ftype":Ljava/lang/String;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1c7
    move-exception v5

    .line 520
    .local v5, "ex2":Lsun/net/ftp/FtpProtocolException;
    new-instance v14, Ljava/io/FileNotFoundException;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    iget-boolean v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connected:Z

    if-nez v1, :cond_7

    .line 542
    invoke-virtual {p0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->connect()V

    .line 557
    :cond_7
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_14

    .line 558
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Already opened for input"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 561
    :cond_14
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    if-eqz v1, :cond_1b

    .line 562
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    return-object v1

    .line 565
    :cond_1b
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection;->decodePath(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_39

    .line 567
    :cond_30
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "illegal filename for a PUT"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 570
    :cond_39
    :try_start_39
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 571
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    invoke-direct {p0, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    .line 573
    :cond_42
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_61

    .line 574
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v1}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    .line 578
    :goto_4c
    new-instance v1, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;

    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lsun/net/ftp/FtpClient;->putFileStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;
    :try_end_5e
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_39 .. :try_end_5e} :catch_67

    .line 582
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    return-object v1

    .line 576
    :cond_61
    :try_start_61
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v1}, Lsun/net/ftp/FtpClient;->setBinaryType()Lsun/net/ftp/FtpClient;
    :try_end_66
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_61 .. :try_end_66} :catch_67

    goto :goto_4c

    .line 579
    :catch_67
    move-exception v0

    .line 580
    .local v0, "e":Lsun/net/ftp/FtpProtocolException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 5

    .prologue
    .line 596
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->permission:Ljava/security/Permission;

    if-nez v2, :cond_34

    .line 597
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 598
    .local v1, "urlport":I
    if-gez v1, :cond_10

    invoke-static {}, Lsun/net/ftp/FtpClient;->defaultPort()I

    move-result v1

    .line 599
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "urlhost":Ljava/lang/String;
    new-instance v2, Ljava/net/SocketPermission;

    const-string/jumbo v3, "connect"

    invoke-direct {v2, v0, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->permission:Ljava/security/Permission;

    .line 602
    .end local v0    # "urlhost":Ljava/lang/String;
    .end local v1    # "urlport":I
    :cond_34
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->permission:Ljava/security/Permission;

    return-object v2
.end method

.method public getReadTimeout()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 680
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    if-gez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    goto :goto_5
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 646
    invoke-super {p0, p1}, Lsun/net/www/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_17

    .line 649
    const-string/jumbo v1, "type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 650
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    const-string/jumbo v0, "a"

    .line 654
    :cond_17
    :goto_17
    return-object v0

    .line 650
    :cond_18
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    const-string/jumbo v0, "d"

    goto :goto_17

    :cond_21
    const-string/jumbo v0, "i"

    goto :goto_17
.end method

.method guessContentTypeFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 586
    invoke-static {p1}, Lsun/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .registers 4
    .param p1, "timeout"    # I

    .prologue
    .line 659
    if-gez p1, :cond_b

    .line 660
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeouts can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_b
    iput p1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    .line 663
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 4
    .param p1, "timeout"    # I

    .prologue
    .line 672
    if-gez p1, :cond_b

    .line 673
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeouts can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_b
    iput p1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    .line 676
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 617
    invoke-super {p0, p1, p2}, Lsun/net/www/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string/jumbo v0, "type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 619
    const-string/jumbo v0, "i"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 620
    const/4 v0, 0x2

    iput v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 632
    :cond_18
    :goto_18
    return-void

    .line 621
    :cond_19
    const-string/jumbo v0, "a"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 622
    const/4 v0, 0x1

    iput v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    goto :goto_18

    .line 623
    :cond_26
    const-string/jumbo v0, "d"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 624
    const/4 v0, 0x3

    iput v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    goto :goto_18

    .line 626
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 628
    const-string/jumbo v2, "\' request property was \'"

    .line 627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 629
    const-string/jumbo v2, "\' when it must be either \'i\', \'a\' or \'d\'"

    .line 627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 626
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

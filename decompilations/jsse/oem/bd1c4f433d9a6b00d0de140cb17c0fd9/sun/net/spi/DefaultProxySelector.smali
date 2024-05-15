.class public Lsun/net/spi/DefaultProxySelector;
.super Ljava/net/ProxySelector;
.source "DefaultProxySelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    }
.end annotation


# static fields
.field private static final SOCKS_PROXY_VERSION:Ljava/lang/String; = "socksProxyVersion"

.field private static hasSystemProxies:Z

.field static final props:[[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;)I
    .registers 3
    .param p0, "-this"    # Lsun/net/spi/DefaultProxySelector;
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lsun/net/spi/DefaultProxySelector;->defaultPort(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    .line 80
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "http"

    aput-object v2, v1, v3

    const-string/jumbo v2, "http.proxy"

    aput-object v2, v1, v4

    const-string/jumbo v2, "proxy"

    aput-object v2, v1, v5

    const-string/jumbo v2, "socksProxy"

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    .line 81
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "https"

    aput-object v2, v1, v3

    const-string/jumbo v2, "https.proxy"

    aput-object v2, v1, v4

    const-string/jumbo v2, "proxy"

    aput-object v2, v1, v5

    const-string/jumbo v2, "socksProxy"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    .line 82
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "ftp"

    aput-object v2, v1, v3

    const-string/jumbo v2, "ftp.proxy"

    aput-object v2, v1, v4

    const-string/jumbo v2, "ftpProxy"

    aput-object v2, v1, v5

    const-string/jumbo v2, "proxy"

    aput-object v2, v1, v6

    const-string/jumbo v2, "socksProxy"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    .line 83
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "gopher"

    aput-object v2, v1, v3

    const-string/jumbo v2, "gopherProxy"

    aput-object v2, v1, v4

    const-string/jumbo v2, "socksProxy"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 84
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "socket"

    aput-object v2, v1, v3

    const-string/jumbo v2, "socksProxy"

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    .line 76
    sput-object v0, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    .line 89
    sput-boolean v3, Lsun/net/spi/DefaultProxySelector;->hasSystemProxies:Z

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    return-void
.end method

.method private defaultPort(Ljava/lang/String;)I
    .registers 4
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x50

    .line 344
    const-string/jumbo v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 345
    return v1

    .line 346
    :cond_c
    const-string/jumbo v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 347
    const/16 v0, 0x1bb

    return v0

    .line 348
    :cond_18
    const-string/jumbo v0, "ftp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 349
    return v1

    .line 350
    :cond_22
    const-string/jumbo v0, "socket"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 351
    const/16 v0, 0x438

    return v0

    .line 352
    :cond_2e
    const-string/jumbo v0, "gopher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 353
    return v1

    .line 355
    :cond_38
    const/4 v0, -0x1

    return v0
.end method

.method static disjunctToRegex(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "disjunct"    # Ljava/lang/String;

    .prologue
    .line 400
    const-string/jumbo v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ".*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "regex":Ljava/lang/String;
    :goto_26
    return-object v0

    .line 402
    .end local v0    # "regex":Ljava/lang/String;
    :cond_27
    const-string/jumbo v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "regex":Ljava/lang/String;
    goto :goto_26

    .line 405
    .end local v0    # "regex":Ljava/lang/String;
    :cond_54
    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "regex":Ljava/lang/String;
    goto :goto_26
.end method

.method static shouldNotUseProxyFor(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 4
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "urlhost"    # Ljava/lang/String;

    .prologue
    .line 370
    if-eqz p0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 371
    :cond_8
    const/4 v1, 0x0

    return v1

    .line 372
    :cond_a
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 373
    .local v0, "matches":Z
    return v0
.end method

.method static toPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .registers 9
    .param p0, "mask"    # Ljava/lang/String;

    .prologue
    .line 382
    const/4 v1, 0x1

    .line 383
    .local v1, "disjunctionEmpty":Z
    new-instance v2, Ljava/util/StringJoiner;

    const-string/jumbo v4, "|"

    invoke-direct {v2, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 384
    .local v2, "joiner":Ljava/util/StringJoiner;
    const-string/jumbo v4, "\\|"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_12
    if-ge v4, v6, :cond_2c

    aget-object v0, v5, v4

    .line 385
    .local v0, "disjunct":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 384
    :goto_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 387
    :cond_1f
    const/4 v1, 0x0

    .line 388
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lsun/net/spi/DefaultProxySelector;->disjunctToRegex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1c

    .line 391
    .end local v0    # "disjunct":Ljava/lang/String;
    .end local v3    # "regex":Ljava/lang/String;
    :cond_2c
    if-eqz v1, :cond_30

    const/4 v4, 0x0

    :goto_2f
    return-object v4

    :cond_30
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    goto :goto_2f
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .registers 6
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "sa"    # Ljava/net/SocketAddress;
    .param p3, "ioe"    # Ljava/io/IOException;

    .prologue
    .line 336
    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    .line 337
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Arguments can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_d
    if-eqz p3, :cond_4

    .line 340
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .registers 15
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 153
    if-nez p1, :cond_c

    .line 154
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "URI can\'t be null."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 156
    :cond_c
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, "protocol":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "host":Ljava/lang/String;
    if-nez v1, :cond_37

    .line 167
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_37

    .line 170
    const/16 v10, 0x40

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 171
    .local v2, "i":I
    if-ltz v2, :cond_2a

    .line 172
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_2a
    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 175
    if-ltz v2, :cond_36

    .line 176
    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_36
    move-object v1, v0

    .line 182
    .end local v0    # "auth":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_37
    if-eqz v7, :cond_3b

    if-nez v1, :cond_60

    .line 183
    :cond_3b
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "protocol = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " host = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 185
    :cond_60
    new-instance v8, Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v8, "proxyl":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    const/4 v5, 0x0

    .line 189
    .local v5, "pinfo":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    const-string/jumbo v10, "http"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_87

    .line 190
    sget-object v5, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->httpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    .line 206
    .end local v5    # "pinfo":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    :cond_72
    :goto_72
    move-object v6, v7

    .line 207
    .local v6, "proto":Ljava/lang/String;
    move-object v3, v5

    .line 208
    .local v3, "nprop":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 217
    .local v9, "urlhost":Ljava/lang/String;
    new-instance v10, Lsun/net/spi/DefaultProxySelector$1;

    invoke-direct {v10, p0, v7, v3, v9}, Lsun/net/spi/DefaultProxySelector$1;-><init>(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;Lsun/net/spi/DefaultProxySelector$NonProxyInfo;Ljava/lang/String;)V

    .line 216
    invoke-static {v10}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Proxy;

    .line 326
    .local v4, "p":Ljava/net/Proxy;
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    return-object v8

    .line 191
    .end local v3    # "nprop":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    .end local v4    # "p":Ljava/net/Proxy;
    .end local v6    # "proto":Ljava/lang/String;
    .end local v9    # "urlhost":Ljava/lang/String;
    .restart local v5    # "pinfo":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    :cond_87
    const-string/jumbo v10, "https"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_93

    .line 196
    sget-object v5, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->httpsNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    .local v5, "pinfo":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    goto :goto_72

    .line 197
    .local v5, "pinfo":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    :cond_93
    const-string/jumbo v10, "ftp"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9f

    .line 198
    sget-object v5, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->ftpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    .local v5, "pinfo":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    goto :goto_72

    .line 199
    .local v5, "pinfo":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    :cond_9f
    const-string/jumbo v10, "socket"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_72

    .line 200
    sget-object v5, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->socksNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    .local v5, "pinfo":Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    goto :goto_72
.end method

.class public final Lcom/android/okhttp/internal/http/AuthenticatorAdapter;
.super Ljava/lang/Object;
.source "AuthenticatorAdapter.java"

# interfaces
.implements Lcom/android/okhttp/Authenticator;


# static fields
.field public static final blacklist INSTANCE:Lcom/android/okhttp/Authenticator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;

    invoke-direct {v0}, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;->INSTANCE:Lcom/android/okhttp/Authenticator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getConnectToInetAddress(Ljava/net/Proxy;Lcom/android/okhttp/HttpUrl;)Ljava/net/InetAddress;
    .registers 5
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Lcom/android/okhttp/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_15

    .line 86
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_1d

    .line 87
    :cond_15
    invoke-virtual {p2}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 85
    :goto_1d
    return-object v0
.end method


# virtual methods
.method public blacklist authenticate(Ljava/net/Proxy;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;
    .registers 19
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Response;->challenges()Ljava/util/List;

    move-result-object v0

    .line 41
    .local v0, "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Challenge;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v1

    .line 42
    .local v1, "request":Lcom/android/okhttp/Request;
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    .line 43
    .local v2, "url":Lcom/android/okhttp/HttpUrl;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_11
    if-ge v3, v4, :cond_76

    .line 44
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/okhttp/Challenge;

    .line 45
    .local v5, "challenge":Lcom/android/okhttp/Challenge;
    invoke-virtual {v5}, Lcom/android/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Basic"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2a

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    goto :goto_53

    .line 47
    :cond_2a
    nop

    .line 48
    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    invoke-direct {v6, v15, v2}, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;->getConnectToInetAddress(Ljava/net/Proxy;Lcom/android/okhttp/HttpUrl;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v9

    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v10

    .line 49
    invoke-virtual {v5}, Lcom/android/okhttp/Challenge;->getRealm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->url()Ljava/net/URL;

    move-result-object v13

    sget-object v14, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 47
    invoke-static/range {v7 .. v14}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v7

    .line 50
    .local v7, "auth":Ljava/net/PasswordAuthentication;
    if-nez v7, :cond_56

    .line 43
    .end local v5    # "challenge":Lcom/android/okhttp/Challenge;
    .end local v7    # "auth":Ljava/net/PasswordAuthentication;
    :goto_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 52
    .restart local v5    # "challenge":Lcom/android/okhttp/Challenge;
    .restart local v7    # "auth":Ljava/net/PasswordAuthentication;
    :cond_56
    invoke-virtual {v7}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([C)V

    invoke-static {v8, v9}, Lcom/android/okhttp/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, "credential":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v9

    .line 54
    const-string v10, "Authorization"

    invoke-virtual {v9, v10, v8}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v9

    .line 55
    invoke-virtual {v9}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v9

    .line 53
    return-object v9

    .line 43
    .end local v5    # "challenge":Lcom/android/okhttp/Challenge;
    .end local v7    # "auth":Ljava/net/PasswordAuthentication;
    .end local v8    # "credential":Ljava/lang/String;
    :cond_76
    move-object/from16 v6, p0

    move-object/from16 v15, p1

    .line 57
    .end local v3    # "i":I
    .end local v4    # "size":I
    const/4 v3, 0x0

    return-object v3
.end method

.method public blacklist authenticateProxy(Ljava/net/Proxy;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;
    .registers 20
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Response;->challenges()Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Challenge;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v1

    .line 64
    .local v1, "request":Lcom/android/okhttp/Request;
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    .line 65
    .local v2, "url":Lcom/android/okhttp/HttpUrl;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_11
    if-ge v3, v4, :cond_7c

    .line 66
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/okhttp/Challenge;

    .line 67
    .local v5, "challenge":Lcom/android/okhttp/Challenge;
    invoke-virtual {v5}, Lcom/android/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Basic"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_28

    move-object/from16 v15, p0

    goto :goto_59

    .line 69
    :cond_28
    invoke-virtual/range {p1 .. p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;

    .line 70
    .local v6, "proxyAddress":Ljava/net/InetSocketAddress;
    nop

    .line 71
    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-direct {v15, v14, v2}, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;->getConnectToInetAddress(Ljava/net/Proxy;Lcom/android/okhttp/HttpUrl;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    .line 72
    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/okhttp/Challenge;->getRealm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->url()Ljava/net/URL;

    move-result-object v13

    sget-object v16, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 70
    move-object/from16 v14, v16

    invoke-static/range {v7 .. v14}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v7

    .line 74
    .local v7, "auth":Ljava/net/PasswordAuthentication;
    if-nez v7, :cond_5c

    .line 65
    .end local v5    # "challenge":Lcom/android/okhttp/Challenge;
    .end local v6    # "proxyAddress":Ljava/net/InetSocketAddress;
    .end local v7    # "auth":Ljava/net/PasswordAuthentication;
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 76
    .restart local v5    # "challenge":Lcom/android/okhttp/Challenge;
    .restart local v6    # "proxyAddress":Ljava/net/InetSocketAddress;
    .restart local v7    # "auth":Ljava/net/PasswordAuthentication;
    :cond_5c
    invoke-virtual {v7}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([C)V

    invoke-static {v8, v9}, Lcom/android/okhttp/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "credential":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v9

    .line 78
    const-string v10, "Proxy-Authorization"

    invoke-virtual {v9, v10, v8}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v9

    .line 79
    invoke-virtual {v9}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v9

    .line 77
    return-object v9

    .line 65
    .end local v5    # "challenge":Lcom/android/okhttp/Challenge;
    .end local v6    # "proxyAddress":Ljava/net/InetSocketAddress;
    .end local v7    # "auth":Ljava/net/PasswordAuthentication;
    .end local v8    # "credential":Ljava/lang/String;
    :cond_7c
    move-object/from16 v15, p0

    .line 81
    .end local v3    # "i":I
    .end local v4    # "size":I
    const/4 v3, 0x0

    return-object v3
.end method

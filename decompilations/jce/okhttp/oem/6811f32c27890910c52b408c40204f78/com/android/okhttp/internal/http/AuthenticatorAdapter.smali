.class public final Lcom/android/okhttp/internal/http/AuthenticatorAdapter;
.super Ljava/lang/Object;
.source "AuthenticatorAdapter.java"

# interfaces
.implements Lcom/android/okhttp/Authenticator;


# static fields
.field public static final INSTANCE:Lcom/android/okhttp/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;

    invoke-direct {v0}, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;->INSTANCE:Lcom/android/okhttp/Authenticator;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConnectToInetAddress(Ljava/net/Proxy;Lcom/android/okhttp/HttpUrl;)Ljava/net/InetAddress;
    .registers 5
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Lcom/android/okhttp/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_15

    .line 84
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 83
    :goto_14
    return-object v0

    .line 85
    :cond_15
    invoke-virtual {p2}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_14
.end method


# virtual methods
.method public authenticate(Ljava/net/Proxy;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;
    .registers 22
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Response;->challenges()Ljava/util/List;

    move-result-object v13

    .line 39
    .local v13, "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Challenge;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v16

    .line 40
    .local v16, "request":Lcom/android/okhttp/Request;
    invoke-virtual/range {v16 .. v16}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v18

    .line 41
    .local v18, "url":Lcom/android/okhttp/HttpUrl;
    const/4 v15, 0x0

    .local v15, "i":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v17

    .local v17, "size":I
    :goto_11
    move/from16 v0, v17

    if-ge v15, v0, :cond_76

    .line 42
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/okhttp/Challenge;

    .line 43
    .local v12, "challenge":Lcom/android/okhttp/Challenge;
    const-string/jumbo v3, "Basic"

    invoke-virtual {v12}, Lcom/android/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 41
    :cond_28
    add-int/lit8 v15, v15, 0x1

    goto :goto_11

    .line 46
    :cond_2b
    invoke-virtual/range {v18 .. v18}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;->getConnectToInetAddress(Ljava/net/Proxy;Lcom/android/okhttp/HttpUrl;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v5

    invoke-virtual/range {v18 .. v18}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v6

    .line 47
    invoke-virtual {v12}, Lcom/android/okhttp/Challenge;->getRealm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/android/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Lcom/android/okhttp/HttpUrl;->url()Ljava/net/URL;

    move-result-object v9

    sget-object v10, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 45
    invoke-static/range {v3 .. v10}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v11

    .line 48
    .local v11, "auth":Ljava/net/PasswordAuthentication;
    if-eqz v11, :cond_28

    .line 50
    invoke-virtual {v11}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v3, v4}, Lcom/android/okhttp/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 51
    .local v14, "credential":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v3

    .line 52
    const-string/jumbo v4, "Authorization"

    .line 51
    invoke-virtual {v3, v4, v14}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v3

    return-object v3

    .line 55
    .end local v11    # "auth":Ljava/net/PasswordAuthentication;
    .end local v12    # "challenge":Lcom/android/okhttp/Challenge;
    .end local v14    # "credential":Ljava/lang/String;
    :cond_76
    const/4 v3, 0x0

    return-object v3
.end method

.method public authenticateProxy(Ljava/net/Proxy;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Request;
    .registers 23
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Response;->challenges()Ljava/util/List;

    move-result-object v13

    .line 61
    .local v13, "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Challenge;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v17

    .line 62
    .local v17, "request":Lcom/android/okhttp/Request;
    invoke-virtual/range {v17 .. v17}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v19

    .line 63
    .local v19, "url":Lcom/android/okhttp/HttpUrl;
    const/4 v15, 0x0

    .local v15, "i":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    .local v18, "size":I
    :goto_11
    move/from16 v0, v18

    if-ge v15, v0, :cond_7c

    .line 64
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/okhttp/Challenge;

    .line 65
    .local v12, "challenge":Lcom/android/okhttp/Challenge;
    const-string/jumbo v3, "Basic"

    invoke-virtual {v12}, Lcom/android/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 63
    :cond_28
    add-int/lit8 v15, v15, 0x1

    goto :goto_11

    .line 67
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v16

    check-cast v16, Ljava/net/InetSocketAddress;

    .line 69
    .local v16, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual/range {v16 .. v16}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;->getConnectToInetAddress(Ljava/net/Proxy;Lcom/android/okhttp/HttpUrl;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    .line 70
    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Lcom/android/okhttp/Challenge;->getRealm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/android/okhttp/Challenge;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/HttpUrl;->url()Ljava/net/URL;

    move-result-object v9

    .line 71
    sget-object v10, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 68
    invoke-static/range {v3 .. v10}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v11

    .line 72
    .local v11, "auth":Ljava/net/PasswordAuthentication;
    if-eqz v11, :cond_28

    .line 74
    invoke-virtual {v11}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v3, v4}, Lcom/android/okhttp/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 75
    .local v14, "credential":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v3

    .line 76
    const-string/jumbo v4, "Proxy-Authorization"

    .line 75
    invoke-virtual {v3, v4, v14}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v3

    return-object v3

    .line 79
    .end local v11    # "auth":Ljava/net/PasswordAuthentication;
    .end local v12    # "challenge":Lcom/android/okhttp/Challenge;
    .end local v14    # "credential":Ljava/lang/String;
    .end local v16    # "proxyAddress":Ljava/net/InetSocketAddress;
    :cond_7c
    const/4 v3, 0x0

    return-object v3
.end method

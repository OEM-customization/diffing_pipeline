.class public final Lcom/android/okhttp/internal/http/Http2xStream;
.super Ljava/lang/Object;
.source "Http2xStream.java"

# interfaces
.implements Lcom/android/okhttp/internal/http/HttpStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/Http2xStream$StreamFinishingSource;
    }
.end annotation


# static fields
.field private static final blacklist CONNECTION:Lcom/android/okhttp/okio/ByteString;

.field private static final blacklist ENCODING:Lcom/android/okhttp/okio/ByteString;

.field private static final blacklist HOST:Lcom/android/okhttp/okio/ByteString;

.field private static final blacklist HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist KEEP_ALIVE:Lcom/android/okhttp/okio/ByteString;

.field private static final blacklist PROXY_CONNECTION:Lcom/android/okhttp/okio/ByteString;

.field private static final blacklist SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TE:Lcom/android/okhttp/okio/ByteString;

.field private static final blacklist TRANSFER_ENCODING:Lcom/android/okhttp/okio/ByteString;

.field private static final blacklist UPGRADE:Lcom/android/okhttp/okio/ByteString;


# instance fields
.field private final blacklist framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

.field private blacklist httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

.field private blacklist stream:Lcom/android/okhttp/internal/framed/FramedStream;

.field private final blacklist streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 21

    .line 55
    const-string v0, "connection"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->CONNECTION:Lcom/android/okhttp/okio/ByteString;

    .line 56
    const-string v1, "host"

    invoke-static {v1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v1

    sput-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->HOST:Lcom/android/okhttp/okio/ByteString;

    .line 57
    const-string v2, "keep-alive"

    invoke-static {v2}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v2

    sput-object v2, Lcom/android/okhttp/internal/http/Http2xStream;->KEEP_ALIVE:Lcom/android/okhttp/okio/ByteString;

    .line 58
    const-string v3, "proxy-connection"

    invoke-static {v3}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v3

    sput-object v3, Lcom/android/okhttp/internal/http/Http2xStream;->PROXY_CONNECTION:Lcom/android/okhttp/okio/ByteString;

    .line 59
    const-string v4, "transfer-encoding"

    invoke-static {v4}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v4

    sput-object v4, Lcom/android/okhttp/internal/http/Http2xStream;->TRANSFER_ENCODING:Lcom/android/okhttp/okio/ByteString;

    .line 60
    const-string v5, "te"

    invoke-static {v5}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v5

    sput-object v5, Lcom/android/okhttp/internal/http/Http2xStream;->TE:Lcom/android/okhttp/okio/ByteString;

    .line 61
    const-string v6, "encoding"

    invoke-static {v6}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v6

    sput-object v6, Lcom/android/okhttp/internal/http/Http2xStream;->ENCODING:Lcom/android/okhttp/okio/ByteString;

    .line 62
    const-string v7, "upgrade"

    invoke-static {v7}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v7

    sput-object v7, Lcom/android/okhttp/internal/http/Http2xStream;->UPGRADE:Lcom/android/okhttp/okio/ByteString;

    .line 65
    const/16 v8, 0xb

    new-array v9, v8, [Lcom/android/okhttp/okio/ByteString;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v11, 0x1

    aput-object v1, v9, v11

    const/4 v12, 0x2

    aput-object v2, v9, v12

    const/4 v13, 0x3

    aput-object v3, v9, v13

    const/4 v14, 0x4

    aput-object v4, v9, v14

    sget-object v15, Lcom/android/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    const/4 v8, 0x5

    aput-object v15, v9, v8

    sget-object v15, Lcom/android/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    const/16 v17, 0x6

    aput-object v15, v9, v17

    sget-object v15, Lcom/android/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    const/16 v18, 0x7

    aput-object v15, v9, v18

    sget-object v15, Lcom/android/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

    const/16 v14, 0x8

    aput-object v15, v9, v14

    sget-object v15, Lcom/android/okhttp/internal/framed/Header;->TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

    const/16 v19, 0x9

    aput-object v15, v9, v19

    sget-object v15, Lcom/android/okhttp/internal/framed/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    const/16 v20, 0xa

    aput-object v15, v9, v20

    invoke-static {v9}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Lcom/android/okhttp/internal/http/Http2xStream;->SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 77
    new-array v9, v8, [Lcom/android/okhttp/okio/ByteString;

    aput-object v0, v9, v10

    aput-object v1, v9, v11

    aput-object v2, v9, v12

    aput-object v3, v9, v13

    const/4 v15, 0x4

    aput-object v4, v9, v15

    invoke-static {v9}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Lcom/android/okhttp/internal/http/Http2xStream;->SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    .line 85
    const/16 v9, 0xe

    new-array v9, v9, [Lcom/android/okhttp/okio/ByteString;

    aput-object v0, v9, v10

    aput-object v1, v9, v11

    aput-object v2, v9, v12

    aput-object v3, v9, v13

    aput-object v5, v9, v15

    aput-object v4, v9, v8

    aput-object v6, v9, v17

    aput-object v7, v9, v18

    sget-object v15, Lcom/android/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    aput-object v15, v9, v14

    sget-object v15, Lcom/android/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    aput-object v15, v9, v19

    sget-object v15, Lcom/android/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    aput-object v15, v9, v20

    sget-object v15, Lcom/android/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

    const/16 v16, 0xb

    aput-object v15, v9, v16

    sget-object v15, Lcom/android/okhttp/internal/framed/Header;->TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

    const/16 v16, 0xc

    aput-object v15, v9, v16

    sget-object v15, Lcom/android/okhttp/internal/framed/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    const/16 v16, 0xd

    aput-object v15, v9, v16

    invoke-static {v9}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sput-object v9, Lcom/android/okhttp/internal/http/Http2xStream;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 100
    new-array v9, v14, [Lcom/android/okhttp/okio/ByteString;

    aput-object v0, v9, v10

    aput-object v1, v9, v11

    aput-object v2, v9, v12

    aput-object v3, v9, v13

    const/4 v0, 0x4

    aput-object v5, v9, v0

    aput-object v4, v9, v8

    aput-object v6, v9, v17

    aput-object v7, v9, v18

    invoke-static {v9}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/framed/FramedConnection;)V
    .registers 3
    .param p1, "streamAllocation"    # Lcom/android/okhttp/internal/http/StreamAllocation;
    .param p2, "framedConnection"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http2xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 117
    iput-object p2, p0, Lcom/android/okhttp/internal/http/Http2xStream;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 118
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/internal/http/Http2xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/Http2xStream;

    .line 54
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    return-object v0
.end method

.method public static blacklist http2HeadersList(Lcom/android/okhttp/Request;)Ljava/util/List;
    .registers 8
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Request;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    .line 203
    .local v0, "headers":Lcom/android/okhttp/Headers;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/internal/http/RequestLine;->requestPath(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_59
    if-ge v2, v3, :cond_80

    .line 211
    invoke-virtual {v0, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v4

    .line 212
    .local v4, "name":Lcom/android/okhttp/okio/ByteString;
    sget-object v5, Lcom/android/okhttp/internal/http/Http2xStream;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    .line 213
    new-instance v5, Lcom/android/okhttp/internal/framed/Header;

    invoke-virtual {v0, v2}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v4    # "name":Lcom/android/okhttp/okio/ByteString;
    :cond_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 216
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_80
    return-object v1
.end method

.method private static blacklist joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist readHttp2HeadersList(Ljava/util/List;)Lcom/android/okhttp/Response$Builder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)",
            "Lcom/android/okhttp/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    const/4 v0, 0x0

    .line 258
    .local v0, "status":Ljava/lang/String;
    new-instance v1, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 259
    .local v1, "headersBuilder":Lcom/android/okhttp/Headers$Builder;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_b
    if-ge v2, v3, :cond_3d

    .line 260
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/internal/framed/Header;

    iget-object v4, v4, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    .line 262
    .local v4, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/okhttp/internal/framed/Header;

    iget-object v5, v5, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v5}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "value":Ljava/lang/String;
    sget-object v6, Lcom/android/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v4, v6}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 264
    move-object v0, v5

    goto :goto_3a

    .line 265
    :cond_2b
    sget-object v6, Lcom/android/okhttp/internal/http/Http2xStream;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 266
    invoke-virtual {v4}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 259
    .end local v4    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v5    # "value":Ljava/lang/String;
    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 269
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_3d
    if-eqz v0, :cond_74

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP/1.1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v2

    .line 272
    .local v2, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    new-instance v3, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v3}, Lcom/android/okhttp/Response$Builder;-><init>()V

    sget-object v4, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    .line 273
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget v4, v2, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    .line 274
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 275
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    .line 276
    invoke-virtual {v1}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    .line 272
    return-object v3

    .line 269
    .end local v2    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    :cond_74
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Expected \':status\' header not present"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist readSpdy3HeadersList(Ljava/util/List;)Lcom/android/okhttp/Response$Builder;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)",
            "Lcom/android/okhttp/Response$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    const/4 v0, 0x0

    .line 222
    .local v0, "status":Ljava/lang/String;
    const-string v1, "HTTP/1.1"

    .line 223
    .local v1, "version":Ljava/lang/String;
    new-instance v2, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v2}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 224
    .local v2, "headersBuilder":Lcom/android/okhttp/Headers$Builder;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_d
    if-ge v3, v4, :cond_63

    .line 225
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/okhttp/internal/framed/Header;

    iget-object v5, v5, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    .line 227
    .local v5, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/okhttp/internal/framed/Header;

    iget-object v6, v6, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v6}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "values":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "start":I
    :goto_24
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_60

    .line 229
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 230
    .local v8, "end":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_36

    .line 231
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    .line 233
    :cond_36
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 234
    .local v9, "value":Ljava/lang/String;
    sget-object v10, Lcom/android/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v5, v10}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 235
    move-object v0, v9

    goto :goto_5d

    .line 236
    :cond_44
    sget-object v10, Lcom/android/okhttp/internal/framed/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v5, v10}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    .line 237
    move-object v1, v9

    goto :goto_5d

    .line 238
    :cond_4e
    sget-object v10, Lcom/android/okhttp/internal/http/Http2xStream;->SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5d

    .line 239
    invoke-virtual {v5}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, v9}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 241
    :cond_5d
    :goto_5d
    add-int/lit8 v7, v8, 0x1

    .line 242
    .end local v8    # "end":I
    .end local v9    # "value":Ljava/lang/String;
    goto :goto_24

    .line 224
    .end local v5    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v6    # "values":Ljava/lang/String;
    .end local v7    # "start":I
    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 244
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_63
    if-eqz v0, :cond_9d

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v3

    .line 247
    .local v3, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    new-instance v4, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v4}, Lcom/android/okhttp/Response$Builder;-><init>()V

    sget-object v5, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    .line 248
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    iget v5, v3, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    .line 249
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 250
    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 251
    invoke-virtual {v2}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    .line 247
    return-object v4

    .line 244
    .end local v3    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    :cond_9d
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Expected \':status\' header not present"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static blacklist spdy3HeadersList(Lcom/android/okhttp/Request;)Ljava/util/List;
    .registers 11
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Request;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    .line 163
    .local v0, "headers":Lcom/android/okhttp/Headers;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/internal/http/RequestLine;->requestPath(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    const-string v4, "HTTP/1.1"

    invoke-direct {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v2, Lcom/android/okhttp/internal/framed/Header;

    sget-object v3, Lcom/android/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 171
    .local v2, "names":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/okhttp/okio/ByteString;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->size()I

    move-result v4

    .local v4, "size":I
    :goto_6a
    if-ge v3, v4, :cond_ca

    .line 173
    invoke-virtual {v0, v3}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v5

    .line 176
    .local v5, "name":Lcom/android/okhttp/okio/ByteString;
    sget-object v6, Lcom/android/okhttp/internal/http/Http2xStream;->SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    goto :goto_c7

    .line 179
    :cond_83
    invoke-virtual {v0, v3}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "value":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_96

    .line 181
    new-instance v7, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v7, v5, v6}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    goto :goto_c7

    .line 186
    :cond_96
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_97
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_c7

    .line 187
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/okhttp/internal/framed/Header;

    iget-object v8, v8, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v8, v5}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c4

    .line 188
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/okhttp/internal/framed/Header;

    iget-object v8, v8, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v8}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/android/okhttp/internal/http/Http2xStream;->joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, "concatenated":Ljava/lang/String;
    new-instance v9, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v9, v5, v8}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v7, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    goto :goto_c7

    .line 186
    .end local v8    # "concatenated":Ljava/lang/String;
    :cond_c4
    add-int/lit8 v7, v7, 0x1

    goto :goto_97

    .line 171
    .end local v5    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "j":I
    :cond_c7
    :goto_c7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 194
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_ca
    return-object v1
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/FramedStream;->closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 286
    :cond_9
    return-void
.end method

.method public blacklist createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;
    .registers 5
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->getSink()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public blacklist finishRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->getSink()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->close()V

    .line 148
    return-void
.end method

.method public blacklist openResponseBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;
    .registers 6
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    new-instance v0, Lcom/android/okhttp/internal/http/Http2xStream$StreamFinishingSource;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->getSource()Lcom/android/okhttp/okio/Source;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/http/Http2xStream$StreamFinishingSource;-><init>(Lcom/android/okhttp/internal/http/Http2xStream;Lcom/android/okhttp/okio/Source;)V

    .line 281
    .local v0, "source":Lcom/android/okhttp/okio/Source;
    new-instance v1, Lcom/android/okhttp/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    return-object v1
.end method

.method public blacklist readResponseHeaders()Lcom/android/okhttp/Response$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    move-result-object v0

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v0, v1, :cond_15

    .line 152
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->getResponseHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http2xStream;->readHttp2HeadersList(Ljava/util/List;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    goto :goto_1f

    .line 153
    :cond_15
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->getResponseHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http2xStream;->readSpdy3HeadersList(Ljava/util/List;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    .line 151
    :goto_1f
    return-object v0
.end method

.method public blacklist setHttpEngine(Lcom/android/okhttp/internal/http/HttpEngine;)V
    .registers 2
    .param p1, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;

    .line 121
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http2xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 122
    return-void
.end method

.method public blacklist writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V
    .registers 3
    .param p1, "requestBody"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->getSink()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/http/RetryableSink;->writeToSocket(Lcom/android/okhttp/okio/Sink;)V

    .line 144
    return-void
.end method

.method public blacklist writeRequestHeaders(Lcom/android/okhttp/Request;)V
    .registers 9
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    if-eqz v0, :cond_5

    return-void

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/HttpEngine;->writingRequestHeaders()V

    .line 132
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->permitsRequestBody(Lcom/android/okhttp/Request;)Z

    move-result v0

    .line 133
    .local v0, "permitsRequestBody":Z
    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http2xStream;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    move-result-object v1

    sget-object v2, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v1, v2, :cond_1f

    .line 134
    invoke-static {p1}, Lcom/android/okhttp/internal/http/Http2xStream;->http2HeadersList(Lcom/android/okhttp/Request;)Ljava/util/List;

    move-result-object v1

    goto :goto_23

    .line 135
    :cond_1f
    invoke-static {p1}, Lcom/android/okhttp/internal/http/Http2xStream;->spdy3HeadersList(Lcom/android/okhttp/Request;)Ljava/util/List;

    move-result-object v1

    :goto_23
    nop

    .line 136
    .local v1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/internal/framed/Header;>;"
    const/4 v2, 0x1

    .line 137
    .local v2, "hasResponseBody":Z
    iget-object v3, p0, Lcom/android/okhttp/internal/http/Http2xStream;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v3, v1, v0, v2}, Lcom/android/okhttp/internal/framed/FramedConnection;->newStream(Ljava/util/List;ZZ)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    .line 138
    invoke-virtual {v3}, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/http/Http2xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 139
    iget-object v3, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/framed/FramedStream;->writeTimeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/http/Http2xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->getWriteTimeout()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 140
    return-void
.end method

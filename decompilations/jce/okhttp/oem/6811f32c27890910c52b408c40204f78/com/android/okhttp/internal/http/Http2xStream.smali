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
.field private static final CONNECTION:Lcom/android/okhttp/okio/ByteString;

.field private static final ENCODING:Lcom/android/okhttp/okio/ByteString;

.field private static final HOST:Lcom/android/okhttp/okio/ByteString;

.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:Lcom/android/okhttp/okio/ByteString;

.field private static final PROXY_CONNECTION:Lcom/android/okhttp/okio/ByteString;

.field private static final SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final TE:Lcom/android/okhttp/okio/ByteString;

.field private static final TRANSFER_ENCODING:Lcom/android/okhttp/okio/ByteString;

.field private static final UPGRADE:Lcom/android/okhttp/okio/ByteString;


# instance fields
.field private final framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

.field private httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

.field private stream:Lcom/android/okhttp/internal/framed/FramedStream;

.field private final streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/http/Http2xStream;)Lcom/android/okhttp/internal/http/StreamAllocation;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/http/Http2xStream;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const-string/jumbo v0, "connection"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->CONNECTION:Lcom/android/okhttp/okio/ByteString;

    .line 54
    const-string/jumbo v0, "host"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->HOST:Lcom/android/okhttp/okio/ByteString;

    .line 55
    const-string/jumbo v0, "keep-alive"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->KEEP_ALIVE:Lcom/android/okhttp/okio/ByteString;

    .line 56
    const-string/jumbo v0, "proxy-connection"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->PROXY_CONNECTION:Lcom/android/okhttp/okio/ByteString;

    .line 57
    const-string/jumbo v0, "transfer-encoding"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->TRANSFER_ENCODING:Lcom/android/okhttp/okio/ByteString;

    .line 58
    const-string/jumbo v0, "te"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->TE:Lcom/android/okhttp/okio/ByteString;

    .line 59
    const-string/jumbo v0, "encoding"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->ENCODING:Lcom/android/okhttp/okio/ByteString;

    .line 60
    const-string/jumbo v0, "upgrade"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->UPGRADE:Lcom/android/okhttp/okio/ByteString;

    .line 63
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/okhttp/okio/ByteString;

    .line 64
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->CONNECTION:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v3

    .line 65
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->HOST:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v4

    .line 66
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->KEEP_ALIVE:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v5

    .line 67
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->PROXY_CONNECTION:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v6

    .line 68
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->TRANSFER_ENCODING:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v7

    .line 69
    sget-object v1, Lcom/android/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 70
    sget-object v1, Lcom/android/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 71
    sget-object v1, Lcom/android/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 72
    sget-object v1, Lcom/android/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 73
    sget-object v1, Lcom/android/okhttp/internal/framed/Header;->TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 74
    sget-object v1, Lcom/android/okhttp/internal/framed/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 63
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/okhttp/okio/ByteString;

    .line 76
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->CONNECTION:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v3

    .line 77
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->HOST:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v4

    .line 78
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->KEEP_ALIVE:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v5

    .line 79
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->PROXY_CONNECTION:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v6

    .line 80
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->TRANSFER_ENCODING:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v7

    .line 75
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    .line 83
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/okhttp/okio/ByteString;

    .line 84
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->CONNECTION:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v3

    .line 85
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->HOST:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v4

    .line 86
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->KEEP_ALIVE:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v5

    .line 87
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->PROXY_CONNECTION:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v6

    .line 88
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->TE:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v7

    .line 89
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->TRANSFER_ENCODING:Lcom/android/okhttp/okio/ByteString;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 90
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->ENCODING:Lcom/android/okhttp/okio/ByteString;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 91
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->UPGRADE:Lcom/android/okhttp/okio/ByteString;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 92
    sget-object v1, Lcom/android/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 93
    sget-object v1, Lcom/android/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 94
    sget-object v1, Lcom/android/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 95
    sget-object v1, Lcom/android/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 96
    sget-object v1, Lcom/android/okhttp/internal/framed/Header;->TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 97
    sget-object v1, Lcom/android/okhttp/internal/framed/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 83
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 98
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/okhttp/okio/ByteString;

    .line 99
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->CONNECTION:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v3

    .line 100
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->HOST:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v4

    .line 101
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->KEEP_ALIVE:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v5

    .line 102
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->PROXY_CONNECTION:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v6

    .line 103
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->TE:Lcom/android/okhttp/okio/ByteString;

    aput-object v1, v0, v7

    .line 104
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->TRANSFER_ENCODING:Lcom/android/okhttp/okio/ByteString;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 105
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->ENCODING:Lcom/android/okhttp/okio/ByteString;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 106
    sget-object v1, Lcom/android/okhttp/internal/http/Http2xStream;->UPGRADE:Lcom/android/okhttp/okio/ByteString;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 98
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/http/Http2xStream;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/internal/framed/FramedConnection;)V
    .registers 3
    .param p1, "streamAllocation"    # Lcom/android/okhttp/internal/http/StreamAllocation;
    .param p2, "framedConnection"    # Lcom/android/okhttp/internal/framed/FramedConnection;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http2xStream;->streamAllocation:Lcom/android/okhttp/internal/http/StreamAllocation;

    .line 115
    iput-object p2, p0, Lcom/android/okhttp/internal/http/Http2xStream;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 116
    return-void
.end method

.method public static http2HeadersList(Lcom/android/okhttp/Request;)Ljava/util/List;
    .registers 10
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Request;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    .line 201
    .local v0, "headers":Lcom/android/okhttp/Headers;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    new-instance v5, Lcom/android/okhttp/internal/framed/Header;

    sget-object v6, Lcom/android/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v5, Lcom/android/okhttp/internal/framed/Header;

    sget-object v6, Lcom/android/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v7

    invoke-static {v7}, Lcom/android/okhttp/internal/http/RequestLine;->requestPath(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v5, Lcom/android/okhttp/internal/framed/Header;

    sget-object v6, Lcom/android/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v5, Lcom/android/okhttp/internal/framed/Header;

    sget-object v6, Lcom/android/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->size()I

    move-result v4

    .local v4, "size":I
    :goto_59
    if-ge v1, v4, :cond_80

    .line 209
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v2

    .line 210
    .local v2, "name":Lcom/android/okhttp/okio/ByteString;
    sget-object v5, Lcom/android/okhttp/internal/http/Http2xStream;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    .line 211
    new-instance v5, Lcom/android/okhttp/internal/framed/Header;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 214
    .end local v2    # "name":Lcom/android/okhttp/okio/ByteString;
    :cond_80
    return-object v3
.end method

.method private static joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "second"    # Ljava/lang/String;

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readHttp2HeadersList(Ljava/util/List;)Lcom/android/okhttp/Response$Builder;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 254
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v4, 0x0

    .line 256
    .local v4, "status":Ljava/lang/String;
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 257
    .local v0, "headersBuilder":Lcom/android/okhttp/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .end local v4    # "status":Ljava/lang/String;
    .local v3, "size":I
    :goto_b
    if-ge v1, v3, :cond_3d

    .line 258
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/okhttp/internal/framed/Header;

    iget-object v2, v7, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    .line 260
    .local v2, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/okhttp/internal/framed/Header;

    iget-object v7, v7, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v7}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, "value":Ljava/lang/String;
    sget-object v7, Lcom/android/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v2, v7}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 262
    move-object v4, v6

    .line 257
    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 263
    :cond_2d
    sget-object v7, Lcom/android/okhttp/internal/http/Http2xStream;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a

    .line 264
    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_2a

    .line 267
    .end local v2    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v6    # "value":Ljava/lang/String;
    :cond_3d
    if-nez v4, :cond_48

    new-instance v7, Ljava/net/ProtocolException;

    const-string/jumbo v8, "Expected \':status\' header not present"

    invoke-direct {v7, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 269
    :cond_48
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "HTTP/1.1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v5

    .line 270
    .local v5, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    new-instance v7, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v7}, Lcom/android/okhttp/Response$Builder;-><init>()V

    .line 271
    sget-object v8, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    .line 270
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v7

    .line 272
    iget v8, v5, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    .line 270
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v7

    .line 273
    iget-object v8, v5, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 270
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v7

    .line 274
    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v8

    .line 270
    invoke-virtual {v7, v8}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v7

    return-object v7
.end method

.method public static readSpdy3HeadersList(Ljava/util/List;)Lcom/android/okhttp/Response$Builder;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 219
    .local p0, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v6, 0x0

    .line 220
    .local v6, "status":Ljava/lang/String;
    const-string/jumbo v10, "HTTP/1.1"

    .line 221
    .local v10, "version":Ljava/lang/String;
    new-instance v1, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 222
    .local v1, "headersBuilder":Lcom/android/okhttp/Headers$Builder;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .end local v6    # "status":Ljava/lang/String;
    .local v4, "size":I
    :goto_e
    if-ge v2, v4, :cond_64

    .line 223
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/okhttp/internal/framed/Header;

    iget-object v3, v11, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    .line 225
    .local v3, "name":Lcom/android/okhttp/okio/ByteString;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/okhttp/internal/framed/Header;

    iget-object v11, v11, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v11}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    .line 226
    .local v9, "values":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "start":I
    :goto_25
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_61

    .line 227
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 228
    .local v0, "end":I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_37

    .line 229
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    .line 231
    :cond_37
    invoke-virtual {v9, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 232
    .local v8, "value":Ljava/lang/String;
    sget-object v11, Lcom/android/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v3, v11}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 233
    move-object v6, v8

    .line 239
    :cond_44
    :goto_44
    add-int/lit8 v5, v0, 0x1

    goto :goto_25

    .line 234
    :cond_47
    sget-object v11, Lcom/android/okhttp/internal/framed/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v3, v11}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_51

    .line 235
    move-object v10, v8

    goto :goto_44

    .line 236
    :cond_51
    sget-object v11, Lcom/android/okhttp/internal/http/Http2xStream;->SPDY_3_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_44

    .line 237
    invoke-virtual {v3}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11, v8}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_44

    .line 222
    .end local v0    # "end":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 242
    .end local v3    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v5    # "start":I
    .end local v9    # "values":Ljava/lang/String;
    :cond_64
    if-nez v6, :cond_6f

    new-instance v11, Ljava/net/ProtocolException;

    const-string/jumbo v12, "Expected \':status\' header not present"

    invoke-direct {v11, v12}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 244
    :cond_6f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v7

    .line 245
    .local v7, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    new-instance v11, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v11}, Lcom/android/okhttp/Response$Builder;-><init>()V

    .line 246
    sget-object v12, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    .line 245
    invoke-virtual {v11, v12}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v11

    .line 247
    iget v12, v7, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    .line 245
    invoke-virtual {v11, v12}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v11

    .line 248
    iget-object v12, v7, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 245
    invoke-virtual {v11, v12}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v11

    .line 249
    invoke-virtual {v1}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v12

    .line 245
    invoke-virtual {v11, v12}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v11

    return-object v11
.end method

.method public static spdy3HeadersList(Lcom/android/okhttp/Request;)Ljava/util/List;
    .registers 14
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/Request;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    .line 161
    .local v1, "headers":Lcom/android/okhttp/Headers;
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/okhttp/Headers;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x5

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    new-instance v9, Lcom/android/okhttp/internal/framed/Header;

    sget-object v10, Lcom/android/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v9, Lcom/android/okhttp/internal/framed/Header;

    sget-object v10, Lcom/android/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v11

    invoke-static {v11}, Lcom/android/okhttp/internal/http/RequestLine;->requestPath(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v9, Lcom/android/okhttp/internal/framed/Header;

    sget-object v10, Lcom/android/okhttp/internal/framed/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    const-string/jumbo v11, "HTTP/1.1"

    invoke-direct {v9, v10, v11}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v9, Lcom/android/okhttp/internal/framed/Header;

    sget-object v10, Lcom/android/okhttp/internal/framed/Header;->TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v9, Lcom/android/okhttp/internal/framed/Header;

    sget-object v10, Lcom/android/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 169
    .local v5, "names":Ljava/util/Set;, "Ljava/util/Set<Lokio/ByteString;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lcom/android/okhttp/Headers;->size()I

    move-result v7

    .local v7, "size":I
    :goto_6b
    if-ge v2, v7, :cond_ca

    .line 171
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v4

    .line 174
    .local v4, "name":Lcom/android/okhttp/okio/ByteString;
    sget-object v9, Lcom/android/okhttp/internal/http/Http2xStream;->SPDY_3_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_86

    .line 169
    :cond_83
    :goto_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    .line 177
    :cond_86
    invoke-virtual {v1, v2}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, "value":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_99

    .line 179
    new-instance v9, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v9, v4, v8}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 184
    :cond_99
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_9a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_83

    .line 185
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/okhttp/internal/framed/Header;

    iget-object v9, v9, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v9, v4}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c7

    .line 186
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/okhttp/internal/framed/Header;

    iget-object v9, v9, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v9}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/android/okhttp/internal/http/Http2xStream;->joinOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "concatenated":Ljava/lang/String;
    new-instance v9, Lcom/android/okhttp/internal/framed/Header;

    invoke-direct {v9, v4, v0}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v6, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_83

    .line 184
    .end local v0    # "concatenated":Ljava/lang/String;
    :cond_c7
    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    .line 192
    .end local v3    # "j":I
    .end local v4    # "name":Lcom/android/okhttp/okio/ByteString;
    .end local v8    # "value":Ljava/lang/String;
    :cond_ca
    return-object v6
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    sget-object v1, Lcom/android/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/android/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/FramedStream;->closeLater(Lcom/android/okhttp/internal/framed/ErrorCode;)V

    .line 284
    :cond_b
    return-void
.end method

.method public createRequestBody(Lcom/android/okhttp/Request;J)Lcom/android/okhttp/okio/Sink;
    .registers 5
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->getSink()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public finishRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->getSink()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/okhttp/okio/Sink;->close()V

    .line 146
    return-void
.end method

.method public openResponseBody(Lcom/android/okhttp/Response;)Lcom/android/okhttp/ResponseBody;
    .registers 6
    .param p1, "response"    # Lcom/android/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/android/okhttp/internal/http/Http2xStream$StreamFinishingSource;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedStream;->getSource()Lcom/android/okhttp/okio/Source;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/http/Http2xStream$StreamFinishingSource;-><init>(Lcom/android/okhttp/internal/http/Http2xStream;Lcom/android/okhttp/okio/Source;)V

    .line 279
    .local v0, "source":Lcom/android/okhttp/okio/Source;
    new-instance v1, Lcom/android/okhttp/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/okhttp/internal/http/RealResponseBody;-><init>(Lcom/android/okhttp/Headers;Lcom/android/okhttp/okio/BufferedSource;)V

    return-object v1
.end method

.method public readResponseHeaders()Lcom/android/okhttp/Response$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    move-result-object v0

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v0, v1, :cond_15

    .line 150
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->getResponseHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http2xStream;->readHttp2HeadersList(Ljava/util/List;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    .line 149
    :goto_14
    return-object v0

    .line 151
    :cond_15
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->getResponseHeaders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/Http2xStream;->readSpdy3HeadersList(Ljava/util/List;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    goto :goto_14
.end method

.method public setHttpEngine(Lcom/android/okhttp/internal/http/HttpEngine;)V
    .registers 2
    .param p1, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/okhttp/internal/http/Http2xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    .line 120
    return-void
.end method

.method public writeRequestBody(Lcom/android/okhttp/internal/http/RetryableSink;)V
    .registers 3
    .param p1, "requestBody"    # Lcom/android/okhttp/internal/http/RetryableSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedStream;->getSink()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/okhttp/internal/http/RetryableSink;->writeToSocket(Lcom/android/okhttp/okio/Sink;)V

    .line 142
    return-void
.end method

.method public writeRequestHeaders(Lcom/android/okhttp/Request;)V
    .registers 9
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v3, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    if-eqz v3, :cond_5

    return-void

    .line 129
    :cond_5
    iget-object v3, p0, Lcom/android/okhttp/internal/http/Http2xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/HttpEngine;->writingRequestHeaders()V

    .line 130
    iget-object v3, p0, Lcom/android/okhttp/internal/http/Http2xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    invoke-virtual {v3, p1}, Lcom/android/okhttp/internal/http/HttpEngine;->permitsRequestBody(Lcom/android/okhttp/Request;)Z

    move-result v1

    .line 131
    .local v1, "permitsRequestBody":Z
    iget-object v3, p0, Lcom/android/okhttp/internal/http/Http2xStream;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/framed/FramedConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    move-result-object v3

    sget-object v4, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v3, v4, :cond_50

    .line 132
    invoke-static {p1}, Lcom/android/okhttp/internal/http/Http2xStream;->http2HeadersList(Lcom/android/okhttp/Request;)Ljava/util/List;

    move-result-object v2

    .line 134
    .local v2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :goto_1e
    const/4 v0, 0x1

    .line 135
    .local v0, "hasResponseBody":Z
    iget-object v3, p0, Lcom/android/okhttp/internal/http/Http2xStream;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->newStream(Ljava/util/List;ZZ)Lcom/android/okhttp/internal/framed/FramedStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    .line 136
    iget-object v3, p0, Lcom/android/okhttp/internal/http/Http2xStream;->stream:Lcom/android/okhttp/internal/framed/FramedStream;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/framed/FramedStream;->readTimeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/http/Http2xStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-object v4, v4, Lcom/android/okhttp/internal/http/HttpEngine;->client:Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lcom/android/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 137
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

    .line 138
    return-void

    .line 133
    .end local v0    # "hasResponseBody":Z
    .end local v2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :cond_50
    invoke-static {p1}, Lcom/android/okhttp/internal/http/Http2xStream;->spdy3HeadersList(Lcom/android/okhttp/Request;)Ljava/util/List;

    move-result-object v2

    .restart local v2    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    goto :goto_1e
.end method

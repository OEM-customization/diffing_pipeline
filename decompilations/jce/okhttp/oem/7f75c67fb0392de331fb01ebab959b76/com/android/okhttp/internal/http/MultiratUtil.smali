.class public Lcom/android/okhttp/internal/http/MultiratUtil;
.super Ljava/lang/Object;
.source "MultiratUtil.java"


# static fields
.field public static final blacklist CMD_GET_RANGE:I = -0x66

.field public static final blacklist CMD_SET_FILE_NAME:I = -0x64

.field private static blacklist MAX_MULTIRAT_BLOCK_SIZE:I = 0x0

.field private static blacklist MAX_MULTIRAT_BLOCK_SIZE_CON:I = 0x0

.field protected static final blacklist MIN_LENGTH_START_SB:I = 0x200000

.field private static blacklist MIN_MULTIRAT_BLOCK_SIZE:I = 0x0

.field private static blacklist MIN_MULTIRAT_BLOCK_SIZE_CON:I = 0x0

.field private static blacklist MULTIRAT_BLOCK_DIV:I = 0x0

.field private static blacklist MULTIRAT_BLOCK_DIV_CON:I = 0x0

.field public static final blacklist NETWORKBOOSTER_CANNOT_USE_WIFIORMOBILE:Ljava/lang/String; = "NETWORKBOOSTER_CANNOT_USE_WIFIORMOBILE"

.field public static final blacklist NETWORKBOOSTER_LOCAL_FILE_NAME:Ljava/lang/String; = "NETWORKBOOSTER_LOCAL_FILE_NAME"

.field public static final blacklist NETWORKBOOSTER_LOCAL_FILE_RANGE:Ljava/lang/String; = "NETWORKBOOSTER_LOCAL_FILE_RANGE"

.field public static final blacklist NETWORKBOOSTER_TAG_UID:Ljava/lang/String; = "NETWORKBOOSTER_LOCAL_FILE_TAG_UID"

.field public static final blacklist RET_GET_RANGE:I = -0x67

.field public static final blacklist RET_SET_FILE_NAME:I = -0x65

.field private static blacklist logger:Lcom/android/okhttp/internal/http/MultiratLog;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 32
    const/high16 v0, 0x100000

    sput v0, Lcom/android/okhttp/internal/http/MultiratUtil;->MIN_MULTIRAT_BLOCK_SIZE:I

    .line 33
    const/high16 v0, 0x300000

    sput v0, Lcom/android/okhttp/internal/http/MultiratUtil;->MAX_MULTIRAT_BLOCK_SIZE:I

    .line 34
    const/16 v0, 0xa

    sput v0, Lcom/android/okhttp/internal/http/MultiratUtil;->MULTIRAT_BLOCK_DIV:I

    .line 36
    const/high16 v0, 0x200000

    sput v0, Lcom/android/okhttp/internal/http/MultiratUtil;->MIN_MULTIRAT_BLOCK_SIZE_CON:I

    .line 37
    const/high16 v0, 0xa00000

    sput v0, Lcom/android/okhttp/internal/http/MultiratUtil;->MAX_MULTIRAT_BLOCK_SIZE_CON:I

    .line 38
    const/4 v0, 0x2

    sput v0, Lcom/android/okhttp/internal/http/MultiratUtil;->MULTIRAT_BLOCK_DIV_CON:I

    .line 56
    new-instance v0, Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/okhttp/internal/http/MultiratUtil;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static blacklist checkOffsetAndCount(III)V
    .registers 6
    .param p0, "arrayLength"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 135
    or-int v0, p1, p2

    if-ltz v0, :cond_b

    if-gt p1, p0, :cond_b

    sub-int v0, p0, p1

    if-lt v0, p2, :cond_b

    .line 139
    return-void

    .line 136
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; regionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; regionLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 107
    if-eqz p0, :cond_7

    .line 109
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    .line 111
    goto :goto_7

    .line 110
    :catchall_6
    move-exception v0

    .line 113
    :cond_7
    :goto_7
    return-void
.end method

.method public static blacklist closeQuietly(Ljava/net/Socket;)V
    .registers 2
    .param p0, "closeable"    # Ljava/net/Socket;

    .line 121
    if-eqz p0, :cond_7

    .line 123
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    .line 125
    goto :goto_7

    .line 124
    :catchall_6
    move-exception v0

    .line 127
    :cond_7
    :goto_7
    return-void
.end method

.method protected static blacklist getBlockSize(JZ)J
    .registers 7
    .param p0, "contentLen"    # J
    .param p2, "recon"    # Z

    .line 65
    sget v0, Lcom/android/okhttp/internal/http/MultiratUtil;->MIN_MULTIRAT_BLOCK_SIZE:I

    int-to-long v0, v0

    .line 66
    .local v0, "tmp":J
    if-eqz p2, :cond_19

    .line 67
    sget v2, Lcom/android/okhttp/internal/http/MultiratUtil;->MULTIRAT_BLOCK_DIV_CON:I

    int-to-long v2, v2

    div-long v0, p0, v2

    .line 68
    sget v2, Lcom/android/okhttp/internal/http/MultiratUtil;->MAX_MULTIRAT_BLOCK_SIZE_CON:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 69
    sget v2, Lcom/android/okhttp/internal/http/MultiratUtil;->MIN_MULTIRAT_BLOCK_SIZE_CON:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_2c

    .line 72
    :cond_19
    sget v2, Lcom/android/okhttp/internal/http/MultiratUtil;->MULTIRAT_BLOCK_DIV:I

    int-to-long v2, v2

    div-long v0, p0, v2

    .line 73
    sget v2, Lcom/android/okhttp/internal/http/MultiratUtil;->MAX_MULTIRAT_BLOCK_SIZE:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 74
    sget v2, Lcom/android/okhttp/internal/http/MultiratUtil;->MIN_MULTIRAT_BLOCK_SIZE:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 76
    :goto_2c
    return-wide v0
.end method

.method public static blacklist getFullContentLength(Lcom/android/okhttp/Headers;J)J
    .registers 8
    .param p0, "h"    # Lcom/android/okhttp/Headers;
    .param p1, "len"    # J

    .line 86
    const-string v0, "Content-range"

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "cr":Ljava/lang/String;
    if-nez v0, :cond_9

    return-wide p1

    .line 88
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 89
    .local v1, "index":I
    if-ltz v1, :cond_44

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1e

    goto :goto_44

    .line 90
    :cond_1e
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "subS":Ljava/lang/String;
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_43

    .line 93
    :cond_2d
    :try_start_2d
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_3a

    return-wide v3

    .line 95
    :catchall_3a
    move-exception v3

    .line 96
    .local v3, "e":Ljava/lang/Throwable;
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_42

    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/Throwable;)V

    .line 97
    :cond_42
    return-wide p1

    .line 91
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_43
    :goto_43
    return-wide p1

    .line 89
    .end local v2    # "subS":Ljava/lang/String;
    :cond_44
    :goto_44
    return-wide p1
.end method

.method public static blacklist getIPVersion(Ljava/net/InetAddress;)I
    .registers 5
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 258
    const/4 v0, 0x0

    .line 260
    .local v0, "ipVersion":I
    instance-of v1, p0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_7

    .line 261
    const/4 v0, 0x1

    goto :goto_8

    .line 263
    :cond_7
    const/4 v0, 0x0

    .line 266
    :goto_8
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_22

    sget-object v1, Lcom/android/okhttp/internal/http/MultiratUtil;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIPVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 268
    :cond_22
    return v0
.end method

.method public static blacklist getRequestHeadersBytes(Lcom/android/okhttp/Headers;Ljava/lang/String;)[B
    .registers 8
    .param p0, "headers"    # Lcom/android/okhttp/Headers;
    .param p1, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-virtual {p0}, Lcom/android/okhttp/Headers;->size()I

    move-result v3

    if-ge v2, v3, :cond_70

    .line 163
    sget-boolean v3, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_FEATURE_ENABLED:Z

    if-eqz v3, :cond_57

    .line 164
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "name":Ljava/lang/String;
    const-string v4, "NETWORKBOOSTER_LOCAL_FILE_NAME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 166
    const-string v4, "NETWORKBOOSTER_LOCAL_FILE_RANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 167
    const-string v4, "NETWORKBOOSTER_LOCAL_FILE_TAG_UID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 168
    const-string v4, "NETWORKBOOSTER_CANNOT_USE_WIFIORMOBILE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 169
    :cond_3e
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_6d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This is interval interface field, ignore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiratLog;->info(Ljava/lang/String;)V

    goto :goto_6d

    .line 173
    .end local v3    # "name":Ljava/lang/String;
    :cond_57
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p0, v2}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_6d
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 178
    .end local v2    # "i":I
    :cond_70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getRequestLine(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;Lcom/android/okhttp/Protocol;)Ljava/lang/String;
    .registers 4
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .param p1, "proxyType"    # Ljava/net/Proxy$Type;
    .param p2, "protocol"    # Lcom/android/okhttp/Protocol;

    .line 149
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/http/RequestLine;->get(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist readHeaders(Lcom/android/okhttp/Headers$Builder;Ljava/io/InputStream;)V
    .registers 4
    .param p0, "builder"    # Lcom/android/okhttp/Headers$Builder;
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    :goto_0
    invoke-static {p1}, Lcom/android/okhttp/internal/http/MultiratUtil;->readUtf8Line(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 226
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    goto :goto_0

    .line 228
    :cond_f
    return-void
.end method

.method public static blacklist readResponseHeaders(Ljava/io/InputStream;)Lcom/android/okhttp/Response$Builder;
    .registers 7
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    :goto_0
    invoke-static {p0}, Lcom/android/okhttp/internal/http/MultiratUtil;->readUtf8Line(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "statusLineString":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v1

    .line 200
    .local v1, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    new-instance v2, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v2}, Lcom/android/okhttp/Response$Builder;-><init>()V

    iget-object v3, v1, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    .line 201
    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    iget v3, v1, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    .line 202
    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 203
    invoke-virtual {v2, v3}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    sget-object v3, Lcom/android/okhttp/internal/http/OkHeaders;->SELECTED_PROTOCOL:Ljava/lang/String;

    sget-object v4, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    .line 204
    invoke-virtual {v4}, Lcom/android/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v2

    .line 206
    .local v2, "responseBuilder":Lcom/android/okhttp/Response$Builder;
    new-instance v3, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v3}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 207
    .local v3, "headersBuilder":Lcom/android/okhttp/Headers$Builder;
    invoke-static {v3, p0}, Lcom/android/okhttp/internal/http/MultiratUtil;->readHeaders(Lcom/android/okhttp/Headers$Builder;Ljava/io/InputStream;)V

    .line 208
    invoke-virtual {v3}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    .line 210
    iget v4, v1, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    const/16 v5, 0x64

    if-eq v4, v5, :cond_41

    .line 211
    return-object v2

    .line 213
    .end local v0    # "statusLineString":Ljava/lang/String;
    .end local v1    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    .end local v2    # "responseBuilder":Lcom/android/okhttp/Response$Builder;
    .end local v3    # "headersBuilder":Lcom/android/okhttp/Headers$Builder;
    :cond_41
    goto :goto_0
.end method

.method private static blacklist readUtf8Line(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 240
    .local v0, "byteOut":Ljava/io/ByteArrayOutputStream;
    :goto_5
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 241
    .local v1, "c":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_33

    .line 243
    const/16 v2, 0xa

    if-ne v1, v2, :cond_2f

    .line 244
    nop

    .line 248
    .end local v1    # "c":I
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 250
    .local v2, "length":I
    if-lez v2, :cond_2e

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2e

    .line 251
    const/4 v3, 0x0

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 253
    :cond_2e
    return-object v1

    .line 246
    .end local v2    # "length":I
    .local v1, "c":I
    :cond_2f
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 247
    .end local v1    # "c":I
    goto :goto_5

    .line 242
    .restart local v1    # "c":I
    :cond_33
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public static blacklist socketAlive(Ljava/net/Socket;)Z
    .registers 2
    .param p0, "s"    # Ljava/net/Socket;

    .line 277
    if-eqz p0, :cond_22

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_22

    .line 278
    const/4 v0, 0x1

    return v0

    .line 280
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.class public abstract Ljava/net/HttpURLConnection;
.super Ljava/net/URLConnection;
.source "HttpURLConnection.java"


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x1000

.field public static final HTTP_ACCEPTED:I = 0xca

.field public static final HTTP_BAD_GATEWAY:I = 0x1f6

.field public static final HTTP_BAD_METHOD:I = 0x195

.field public static final HTTP_BAD_REQUEST:I = 0x190

.field public static final HTTP_CLIENT_TIMEOUT:I = 0x198

.field public static final HTTP_CONFLICT:I = 0x199

.field public static final HTTP_CREATED:I = 0xc9

.field public static final HTTP_ENTITY_TOO_LARGE:I = 0x19d

.field public static final HTTP_FORBIDDEN:I = 0x193

.field public static final HTTP_GATEWAY_TIMEOUT:I = 0x1f8

.field public static final HTTP_GONE:I = 0x19a

.field public static final HTTP_INTERNAL_ERROR:I = 0x1f4

.field public static final HTTP_LENGTH_REQUIRED:I = 0x19b

.field public static final HTTP_MOVED_PERM:I = 0x12d

.field public static final HTTP_MOVED_TEMP:I = 0x12e

.field public static final HTTP_MULT_CHOICE:I = 0x12c

.field public static final HTTP_NOT_ACCEPTABLE:I = 0x196

.field public static final HTTP_NOT_AUTHORITATIVE:I = 0xcb

.field public static final HTTP_NOT_FOUND:I = 0x194

.field public static final HTTP_NOT_IMPLEMENTED:I = 0x1f5

.field public static final HTTP_NOT_MODIFIED:I = 0x130

.field public static final HTTP_NO_CONTENT:I = 0xcc

.field public static final HTTP_OK:I = 0xc8

.field public static final HTTP_PARTIAL:I = 0xce

.field public static final HTTP_PAYMENT_REQUIRED:I = 0x192

.field public static final HTTP_PRECON_FAILED:I = 0x19c

.field public static final HTTP_PROXY_AUTH:I = 0x197

.field public static final HTTP_REQ_TOO_LONG:I = 0x19e

.field public static final HTTP_RESET:I = 0xcd

.field public static final HTTP_SEE_OTHER:I = 0x12f

.field public static final HTTP_SERVER_ERROR:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HTTP_UNAUTHORIZED:I = 0x191

.field public static final HTTP_UNAVAILABLE:I = 0x1f7

.field public static final HTTP_UNSUPPORTED_TYPE:I = 0x19f

.field public static final HTTP_USE_PROXY:I = 0x131

.field public static final HTTP_VERSION:I = 0x1f9

.field private static followRedirects:Z

.field private static final methods:[Ljava/lang/String;


# instance fields
.field protected chunkLength:I

.field protected fixedContentLength:I

.field protected fixedContentLengthLong:J

.field protected instanceFollowRedirects:Z

.field protected method:Ljava/lang/String;

.field protected responseCode:I

.field protected responseMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 498
    sput-boolean v3, Ljava/net/HttpURLConnection;->followRedirects:Z

    .line 519
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 520
    const-string/jumbo v1, "GET"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "POST"

    aput-object v1, v0, v3

    const-string/jumbo v1, "HEAD"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "OPTIONS"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "PUT"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "DELETE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "TRACE"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 519
    sput-object v0, Ljava/net/HttpURLConnection;->methods:[Ljava/lang/String;

    .line 275
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .registers 5
    .param p1, "u"    # Ljava/net/URL;

    .prologue
    const/4 v2, -0x1

    .line 528
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 281
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 288
    iput v2, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    .line 300
    iput v2, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 309
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    .line 488
    iput v2, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    .line 516
    sget-boolean v0, Ljava/net/HttpURLConnection;->followRedirects:Z

    iput-boolean v0, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    .line 529
    return-void
.end method

.method public static getFollowRedirects()Z
    .registers 1

    .prologue
    .line 568
    sget-boolean v0, Ljava/net/HttpURLConnection;->followRedirects:Z

    return v0
.end method

.method public static setFollowRedirects(Z)V
    .registers 2
    .param p0, "set"    # Z

    .prologue
    .line 550
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 551
    .local v0, "sec":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 553
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 555
    :cond_9
    sput-boolean p0, Ljava/net/HttpURLConnection;->followRedirects:Z

    .line 556
    return-void
.end method


# virtual methods
.method public abstract disconnect()V
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 823
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # I

    .prologue
    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    .prologue
    .line 758
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "dateString":Ljava/lang/String;
    :try_start_4
    const-string/jumbo v2, "GMT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_22

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    :cond_22
    invoke-static {v0}, Ljava/util/Date;->parse(Ljava/lang/String;)J
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_27

    move-result-wide v2

    return-wide v2

    .line 764
    :catch_27
    move-exception v1

    .line 766
    .local v1, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # I

    .prologue
    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .registers 2

    .prologue
    .line 601
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    return v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 797
    iget-object v3, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v2

    .line 798
    .local v2, "port":I
    if-gez v2, :cond_a

    const/16 v2, 0x50

    .line 799
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "host":Ljava/lang/String;
    new-instance v1, Ljava/net/SocketPermission;

    const-string/jumbo v3, "connect"

    invoke-direct {v1, v0, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    .local v1, "permission":Ljava/security/Permission;
    return-object v1
.end method

.method public getRequestMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 655
    iget-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 675
    iget v6, p0, Ljava/net/HttpURLConnection;->responseCode:I

    if-eq v6, v8, :cond_b

    .line 676
    iget v6, p0, Ljava/net/HttpURLConnection;->responseCode:I

    return v6

    .line 684
    :cond_b
    const/4 v3, 0x0

    .line 686
    .local v3, "exc":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_1e

    .line 695
    .end local v3    # "exc":Ljava/lang/Exception;
    :goto_f
    invoke-virtual {p0, v7}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v5

    .line 696
    .local v5, "statusLine":Ljava/lang/String;
    if-nez v5, :cond_25

    .line 697
    if-eqz v3, :cond_24

    .line 698
    instance-of v6, v3, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_21

    .line 699
    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 687
    .end local v5    # "statusLine":Ljava/lang/String;
    .restart local v3    # "exc":Ljava/lang/Exception;
    :catch_1e
    move-exception v1

    .line 688
    .local v1, "e":Ljava/lang/Exception;
    move-object v3, v1

    .local v3, "exc":Ljava/lang/Exception;
    goto :goto_f

    .line 701
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "exc":Ljava/lang/Exception;
    .restart local v5    # "statusLine":Ljava/lang/String;
    :cond_21
    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 703
    :cond_24
    return v8

    .line 714
    :cond_25
    const-string/jumbo v6, "HTTP/1."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 715
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 716
    .local v0, "codePos":I
    if-lez v0, :cond_60

    .line 718
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 719
    .local v4, "phrasePos":I
    if-lez v4, :cond_4a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_4a

    .line 720
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    .line 725
    :cond_4a
    if-gez v4, :cond_50

    .line 726
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 730
    :cond_50
    add-int/lit8 v6, v0, 0x1

    :try_start_52
    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 729
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 731
    iget v6, p0, Ljava/net/HttpURLConnection;->responseCode:I
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_5e} :catch_5f

    return v6

    .line 732
    :catch_5f
    move-exception v2

    .line 735
    .end local v0    # "codePos":I
    .end local v4    # "phrasePos":I
    :cond_60
    return v8
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 753
    iget-object v0, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setChunkedStreamingMode(I)V
    .registers 6
    .param p1, "chunklen"    # I

    .prologue
    .line 450
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_d

    .line 451
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t set streaming mode: already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_d
    iget v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    iget-wide v0, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    .line 454
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fixed length streaming mode set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_23
    if-gtz p1, :cond_27

    const/16 p1, 0x1000

    .end local p1    # "chunklen":I
    :cond_27
    iput p1, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    .line 457
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .registers 4
    .param p1, "contentLength"    # I

    .prologue
    .line 360
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_d

    .line 361
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_d
    iget v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 364
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Chunked encoding streaming mode set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_1b
    if-gez p1, :cond_26

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid content length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_26
    iput p1, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 370
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .registers 6
    .param p1, "contentLength"    # J

    .prologue
    .line 405
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_d

    .line 406
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_d
    iget v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 409
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 410
    const-string/jumbo v1, "Chunked encoding streaming mode set"

    .line 409
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_1b
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2a

    .line 413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid content length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_2a
    iput-wide p1, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    .line 416
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .registers 2
    .param p1, "followRedirects"    # Z

    .prologue
    .line 587
    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    .line 588
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 7
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 626
    iget-boolean v2, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v2, :cond_d

    .line 627
    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "Can\'t reset method: already connected"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 634
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    sget-object v2, Ljava/net/HttpURLConnection;->methods:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3d

    .line 635
    sget-object v2, Ljava/net/HttpURLConnection;->methods:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 636
    const-string/jumbo v2, "TRACE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 637
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 638
    .local v1, "s":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_37

    .line 639
    new-instance v2, Ljava/net/NetPermission;

    const-string/jumbo v3, "allowHttpTrace"

    invoke-direct {v2, v3}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 642
    .end local v1    # "s":Ljava/lang/SecurityManager;
    :cond_37
    iput-object p1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 643
    return-void

    .line 634
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 646
    :cond_3d
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid HTTP method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract usingProxy()Z
.end method

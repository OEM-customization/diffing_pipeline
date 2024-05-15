.class final Lcom/android/okhttp/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final code:I

.field private final handshake:Lcom/android/okhttp/Handshake;

.field private final message:Ljava/lang/String;

.field private final protocol:Lcom/android/okhttp/Protocol;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lcom/android/okhttp/Headers;

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lcom/android/okhttp/Headers;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/Response;)V
    .registers 3
    .param p1, "response"    # Lcom/android/okhttp/Response;

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 568
    invoke-static {p1}, Lcom/android/okhttp/internal/http/OkHeaders;->varyHeaders(Lcom/android/okhttp/Response;)Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    .line 569
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->request()Lcom/android/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 570
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->protocol()Lcom/android/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->protocol:Lcom/android/okhttp/Protocol;

    .line 571
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    iput v0, p0, Lcom/android/okhttp/Cache$Entry;->code:I

    .line 572
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 573
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    .line 574
    invoke-virtual {p1}, Lcom/android/okhttp/Response;->handshake()Lcom/android/okhttp/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    .line 575
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/Source;)V
    .registers 16
    .param p1, "in"    # Lcom/android/okhttp/okio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    :try_start_3
    invoke-static {p1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v7

    .line 529
    .local v7, "source":Lcom/android/okhttp/okio/BufferedSource;
    invoke-interface {v7}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 530
    invoke-interface {v7}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 531
    new-instance v9, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v9}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 532
    .local v9, "varyHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    invoke-static {v7}, Lcom/android/okhttp/Cache;->-wrap1(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v10

    .line 533
    .local v10, "varyRequestHeaderLineCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v10, :cond_29

    .line 534
    invoke-interface {v7}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 536
    :cond_29
    invoke-virtual {v9}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v11

    iput-object v11, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    .line 538
    invoke-interface {v7}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/android/okhttp/internal/http/StatusLine;

    move-result-object v8

    .line 539
    .local v8, "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    iget-object v11, v8, Lcom/android/okhttp/internal/http/StatusLine;->protocol:Lcom/android/okhttp/Protocol;

    iput-object v11, p0, Lcom/android/okhttp/Cache$Entry;->protocol:Lcom/android/okhttp/Protocol;

    .line 540
    iget v11, v8, Lcom/android/okhttp/internal/http/StatusLine;->code:I

    iput v11, p0, Lcom/android/okhttp/Cache$Entry;->code:I

    .line 541
    iget-object v11, v8, Lcom/android/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v11, p0, Lcom/android/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 542
    new-instance v6, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v6}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    .line 543
    .local v6, "responseHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    invoke-static {v7}, Lcom/android/okhttp/Cache;->-wrap1(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v5

    .line 544
    .local v5, "responseHeaderLineCount":I
    const/4 v2, 0x0

    :goto_4d
    if-ge v2, v5, :cond_59

    .line 545
    invoke-interface {v7}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/android/okhttp/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 544
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 547
    :cond_59
    invoke-virtual {v6}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v11

    iput-object v11, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    .line 549
    invoke-direct {p0}, Lcom/android/okhttp/Cache$Entry;->isHttps()Z

    move-result v11

    if-eqz v11, :cond_ab

    .line 550
    invoke-interface {v7}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "blank":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_95

    .line 552
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "expected \"\" but was \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_90
    .catchall {:try_start_3 .. :try_end_90} :catchall_90

    .line 561
    .end local v0    # "blank":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "responseHeaderLineCount":I
    .end local v6    # "responseHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    .end local v7    # "source":Lcom/android/okhttp/okio/BufferedSource;
    .end local v8    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    .end local v9    # "varyHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    .end local v10    # "varyRequestHeaderLineCount":I
    :catchall_90
    move-exception v11

    .line 562
    invoke-interface {p1}, Lcom/android/okhttp/okio/Source;->close()V

    .line 561
    throw v11

    .line 554
    .restart local v0    # "blank":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v5    # "responseHeaderLineCount":I
    .restart local v6    # "responseHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    .restart local v7    # "source":Lcom/android/okhttp/okio/BufferedSource;
    .restart local v8    # "statusLine":Lcom/android/okhttp/internal/http/StatusLine;
    .restart local v9    # "varyHeadersBuilder":Lcom/android/okhttp/Headers$Builder;
    .restart local v10    # "varyRequestHeaderLineCount":I
    :cond_95
    :try_start_95
    invoke-interface {v7}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, "cipherSuite":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/okhttp/Cache$Entry;->readCertificateList(Lcom/android/okhttp/okio/BufferedSource;)Ljava/util/List;

    move-result-object v4

    .line 556
    .local v4, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {p0, v7}, Lcom/android/okhttp/Cache$Entry;->readCertificateList(Lcom/android/okhttp/okio/BufferedSource;)Ljava/util/List;

    move-result-object v3

    .line 557
    .local v3, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-static {v1, v4, v3}, Lcom/android/okhttp/Handshake;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;

    move-result-object v11

    iput-object v11, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;
    :try_end_a7
    .catchall {:try_start_95 .. :try_end_a7} :catchall_90

    .line 562
    .end local v0    # "blank":Ljava/lang/String;
    .end local v1    # "cipherSuite":Ljava/lang/String;
    .end local v3    # "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v4    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_a7
    invoke-interface {p1}, Lcom/android/okhttp/okio/Source;->close()V

    .line 564
    return-void

    .line 559
    :cond_ab
    const/4 v11, 0x0

    :try_start_ac
    iput-object v11, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;
    :try_end_ae
    .catchall {:try_start_ac .. :try_end_ae} :catchall_90

    goto :goto_a7
.end method

.method private isHttps()Z
    .registers 3

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Lcom/android/okhttp/okio/BufferedSource;)Ljava/util/List;
    .registers 11
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/okio/BufferedSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    invoke-static {p1}, Lcom/android/okhttp/Cache;->-wrap1(Lcom/android/okhttp/okio/BufferedSource;)I

    move-result v4

    .line 620
    .local v4, "length":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_c

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    return-object v7

    .line 623
    :cond_c
    :try_start_c
    const-string/jumbo v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 624
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 625
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v4, :cond_39

    .line 626
    invoke-interface {p1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    .line 627
    .local v5, "line":Ljava/lang/String;
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 628
    .local v0, "bytes":Lcom/android/okhttp/okio/Buffer;
    invoke-static {v5}, Lcom/android/okhttp/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/okhttp/okio/Buffer;->write(Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/okio/Buffer;

    .line 629
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_36} :catch_3a

    .line 625
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 631
    .end local v0    # "bytes":Lcom/android/okhttp/okio/Buffer;
    .end local v5    # "line":Ljava/lang/String;
    :cond_39
    return-object v6

    .line 632
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_3a
    move-exception v2

    .line 633
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private writeCertList(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/List;)V
    .registers 11
    .param p1, "sink"    # Lcom/android/okhttp/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/okhttp/okio/BufferedSink;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    .local p2, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v6, v5

    invoke-interface {p1, v6, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    .line 641
    const/16 v5, 0xa

    invoke-interface {p1, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 642
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_12
    if-ge v2, v4, :cond_3c

    .line 643
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 644
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->of([B)Lcom/android/okhttp/okio/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    .line 645
    .local v3, "line":Ljava/lang/String;
    invoke-interface {p1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 646
    const/16 v5, 0xa

    invoke-interface {p1, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    :try_end_2e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_2e} :catch_31

    .line 642
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 648
    .end local v0    # "bytes":[B
    .end local v2    # "i":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "size":I
    :catch_31
    move-exception v1

    .line 649
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 651
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    :cond_3c
    return-void
.end method


# virtual methods
.method public matches(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)Z
    .registers 5
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "response"    # Lcom/android/okhttp/Response;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 655
    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 654
    if-eqz v0, :cond_1f

    .line 656
    iget-object v0, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-static {p2, v0, p1}, Lcom/android/okhttp/internal/http/OkHeaders;->varyMatches(Lcom/android/okhttp/Response;Lcom/android/okhttp/Headers;Lcom/android/okhttp/Request;)Z

    move-result v0

    .line 654
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public response(Lcom/android/okhttp/Request;Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Lcom/android/okhttp/Response;
    .registers 9
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "snapshot"    # Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .prologue
    .line 660
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    const-string/jumbo v4, "Content-Type"

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "contentType":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    const-string/jumbo v4, "Content-Length"

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "contentLength":Ljava/lang/String;
    new-instance v3, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v3}, Lcom/android/okhttp/Request$Builder;-><init>()V

    .line 663
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    .line 662
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v3

    .line 664
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    const/4 v5, 0x0

    .line 662
    invoke-virtual {v3, v4, v5}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v3

    .line 665
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    .line 662
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Request$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v0

    .line 667
    .local v0, "cacheRequest":Lcom/android/okhttp/Request;
    new-instance v3, Lcom/android/okhttp/Response$Builder;

    invoke-direct {v3}, Lcom/android/okhttp/Response$Builder;-><init>()V

    invoke-virtual {v3, v0}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    .line 669
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->protocol:Lcom/android/okhttp/Protocol;

    .line 667
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    .line 670
    iget v4, p0, Lcom/android/okhttp/Cache$Entry;->code:I

    .line 667
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->code(I)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    .line 671
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->message:Ljava/lang/String;

    .line 667
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    .line 672
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    .line 667
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    .line 673
    new-instance v4, Lcom/android/okhttp/Cache$CacheResponseBody;

    invoke-direct {v4, p2, v2, v1}, Lcom/android/okhttp/Cache$CacheResponseBody;-><init>(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->body(Lcom/android/okhttp/ResponseBody;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    .line 674
    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    .line 667
    invoke-virtual {v3, v4}, Lcom/android/okhttp/Response$Builder;->handshake(Lcom/android/okhttp/Handshake;)Lcom/android/okhttp/Response$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v3

    return-object v3
.end method

.method public writeTo(Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .registers 10
    .param p1, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    .line 578
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lcom/android/okhttp/okio/Sink;

    move-result-object v3

    invoke-static {v3}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    .line 580
    .local v1, "sink":Lcom/android/okhttp/okio/BufferedSink;
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 581
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 582
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 583
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 584
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v3}, Lcom/android/okhttp/Headers;->size()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v1, v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    .line 585
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 586
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v3}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_2f
    if-ge v0, v2, :cond_4f

    .line 587
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v3, v0}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 588
    const-string/jumbo v3, ": "

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 589
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->varyHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v3, v0}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 590
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 593
    :cond_4f
    new-instance v3, Lcom/android/okhttp/internal/http/StatusLine;

    iget-object v4, p0, Lcom/android/okhttp/Cache$Entry;->protocol:Lcom/android/okhttp/Protocol;

    iget v5, p0, Lcom/android/okhttp/Cache$Entry;->code:I

    iget-object v6, p0, Lcom/android/okhttp/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/okhttp/internal/http/StatusLine;-><init>(Lcom/android/okhttp/Protocol;ILjava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 594
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 595
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v3}, Lcom/android/okhttp/Headers;->size()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v1, v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    .line 596
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 597
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v3}, Lcom/android/okhttp/Headers;->size()I

    move-result v2

    :goto_78
    if-ge v0, v2, :cond_98

    .line 598
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v3, v0}, Lcom/android/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 599
    const-string/jumbo v3, ": "

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 600
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->responseHeaders:Lcom/android/okhttp/Headers;

    invoke-virtual {v3, v0}, Lcom/android/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 601
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 604
    :cond_98
    invoke-direct {p0}, Lcom/android/okhttp/Cache$Entry;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 605
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 606
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v3}, Lcom/android/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 607
    invoke-interface {v1, v7}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 608
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v3}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/okhttp/Cache$Entry;->writeCertList(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/List;)V

    .line 609
    iget-object v3, p0, Lcom/android/okhttp/Cache$Entry;->handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v3}, Lcom/android/okhttp/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/okhttp/Cache$Entry;->writeCertList(Lcom/android/okhttp/okio/BufferedSink;Ljava/util/List;)V

    .line 611
    :cond_bf
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    .line 612
    return-void
.end method
